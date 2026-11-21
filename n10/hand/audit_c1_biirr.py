"""Read the manuscript tables for the one-corner right-pair proof."""
from collections import Counter
from fractions import Fraction as F
from itertools import combinations
import json
from pathlib import Path
import re

from c1_contact_geometry_independent import (
    Geometry, S, audit_scalar_updates, bary_value, key, put, sign,
)


def exact_object(entries):
    obj = dict(entries)
    assert len(entries) == len(obj), "duplicate field"
    return obj


def literal(text):
    return json.loads(text, object_pairs_hook=exact_object)


def sections(path):
    preamble, *parts = path.read_text().split('\n## ')
    pairs = [part.split('\n', 1) for part in parts]
    return preamble, exact_object(pairs)


def rows(section, width):
    lines = [line.strip() for line in section.splitlines() if line.strip()]
    assert len(lines) >= 2 and all(line.startswith('|') and line.endswith('|') for line in lines)
    for line in lines[2:]:
        fields = [field.strip() for field in line[1:-1].split('|')]
        assert len(fields) == width
        yield fields


class RightPair(Geometry):
    """All non-universal signs and inequalities come from C1_BIIRR.md."""

    def __init__(self):
        self.outer = 'OCQDFH'
        self.containers = {'Y': 'OHC', 'P': 'HCDF', 'Z': 'HCDF'}
        self.quad_containers = ['HCDFZP']
        self.side_bases = {}
        self.biirl = False
        low, high, rho = 3*S, F(127, 200), F(347, 500)
        ylim = S/high
        top = 1-S-low/(1-low)
        xmin = F(169, 200)
        weight = F(11, 50)
        heavy = 1-2*weight
        self.box = [(rho, 1), (low, high), (rho, 1-S), (S, high),
                    (S, high-2*S), (ylim, 1-2*ylim),
                    (S, 1-S), (ylim, 1-S), (S, 1-S), (ylim, 1-S),
                    (xmin, 1), (ylim, top),
                    (weight*(1+xmin)+heavy*low, weight*(high+1)+heavy),
                    (weight*(rho+ylim), weight*top+heavy*(1-S))]

    def base(self):
        known = {}
        for triple in combinations(self.outer, 3):
            put(known, ''.join(triple), 1)
        for t in 'YZPR':
            for first, second in zip(self.outer, self.outer[1:]+self.outer[:1]):
                put(known, first+second+t, 1)
        for triangle in ['CDQ', 'ODQ']:
            for a, b in zip(triangle, triangle[1:]+triangle[:1]):
                put(known, a+b+'R', sign(known, triangle))
        for t in 'YZP':
            put(known, 'OH'+t, -1)
            put(known, 'OC'+t, 1)
            put(known, 'HC'+t, -1 if t == 'Y' else 1)
        for t in 'ZP':
            for edge, orientation in [('HF', -1), ('CD', 1), ('DF', 1)]:
                put(known, edge+t, orientation)
        put(known, 'OZP', 1)
        return known

    def has_container(self, point, container):
        if point == 'R':
            return container in ('CDQ', 'ODQ')
        return super().has_container(point, container)

    def cap_value(self, triangle, orientation, witness):
        if witness[0] == 'side_pair_cap':
            assert witness == ['side_pair_cap', triangle] and orientation in (-1, 1)
            caps = {'OCQ': 2*S, 'CDQ': F(21, 50), 'HDF': 1-F(347, 500)}
            caps.update(dict.fromkeys(['CDR', 'CQR', 'DQR'], F(21, 50)-2*S))
            return caps[triangle]
        return super().cap_value(triangle, orientation, witness)


def check_end(end, records, relations):
    if 'kind' not in end:
        lo, hi = (records[end[label]] for label in ('lower', 'upper'))
        assert (lo['side'], hi['side']) == ('lo', 'hi')
        assert lo['triangle'] == end['triangle'] == hi['triangle']
        assert F(lo['value']) > F(hi['value'])
        return
    relation = relations[end['relation']]
    assert relation[0] == 'bary'
    refs = [records[k] for k in end['sources']]
    if end['kind'] == 'bary_budget':
        outer, fans = relation[3:]
        assert [(r['triangle'], r['side']) for r in refs] == [(outer, 'hi')]+[(t, 'lo') for t in fans]
        assert F(end['value']) == F(refs[0]['value'])-sum(F(r['value']) for r in refs[1:]) < 0
    else:
        assert end['kind'] == 'bary_zero' and relation[1] is None
        side = end['side']
        assert side in ('lo', 'hi')
        value = bary_value(relation, records, end['sources'], side)
        assert F(end['value']) == value and (value > 0 if side == 'lo' else value < 0)


def audit(folder):
    geo = RightPair()
    _, index = sections(folder/'INDEX.md')
    domain = exact_object([(field, literal(value)) for field, value in rows(index['Domain'], 2)])
    assert domain == {'base': geo.base(), 'box': [[str(a), str(b)] for a, b in geo.box]}
    tree = exact_object([(name, (kind, data)) for name, kind, data in rows(index['Tree'], 3)])
    caps = exact_object([(i, literal(w)) for i, w in rows(index['Corner differences'], 2)])
    seen_caps = set()

    def expand(obj):
        if isinstance(obj, str) and re.fullmatch(r'C[0-9]+', obj):
            seen_caps.add(obj)
            return caps[obj]
        return [expand(x) for x in obj] if isinstance(obj, list) else obj

    stack = [('r', {})]
    visited = set()
    stats = Counter()
    while stack:
        name, assigned = stack.pop()
        assert name not in visited
        visited.add(name)
        kind, data = tree[name]
        stats[kind] += 1
        if kind == 'split':
            assert len(data) == len(set(data)) == 3 and set(data) <= set("OHCDFYZPQR")
            assert key(data) not in map(key, assigned)
            for suffix, sg in [('m', -1), ('p', 1)]:
                stack.append((name+suffix, {**assigned, data: sg}))
            continue
        assert data == f'[{name}]({name}.md)'
        header, leaf = sections(folder/(name+'.md'))
        assert literal(header.strip().splitlines()[-1]) == assigned
        deductions = []
        for number, rule, arg in rows(leaf['Signs'], 3):
            assert int(number) == len(deductions)+1
            deductions.append([rule, *expand(literal(arg))])
        geo.meta = {'assign': assigned, 'meshes': [d[1:] for d in deductions if d[0] == 'mesh']}
        known = geo.derive_signs(deductions)
        stats['deductions'] += len(deductions)
        end = expand(literal(leaf['Conclusion'].strip()))
        if kind == 'geometry':
            geo.terminal(known, end)
            continue
        assert kind == 'area'
        initial, relations, updates = {}, {}, []
        for ref, tr, side, value, w in rows(leaf['Bounds'], 5):
            assert ref not in initial
            witness = expand(literal(w))
            assert geo.initial_value(known, tr, side, witness, None) == F(value)
            initial[ref] = dict(triangle=tr, side=side, value=value)
        for number, rel, w in rows(leaf['Relations'], 3):
            relation = literal(rel)
            assert int(number) == len(relations)
            geo.relation(known, relation, literal(w))
            relations[int(number)] = relation
        for ref, i, rule, tr, side, value, deps in rows(leaf['Arithmetic'], 7):
            updates.append(dict(id=ref, relation=int(i), rule=rule, triangle=tr,
                                side=side, value=value, sources=deps.split(',') if deps else []))
        records = audit_scalar_updates(initial, updates, relations)
        check_end(end, records, relations)
        stats.update(initial=len(initial), relations=len(relations), updates=len(updates))
    assert visited == set(tree) and seen_caps == set(caps)
    assert stats['geometry']+stats['area'] == stats['split']+1
    return dict(stats)


if __name__ == '__main__':
    print(audit(Path(__file__).with_name('C1_BIIRR_TABLES')))
