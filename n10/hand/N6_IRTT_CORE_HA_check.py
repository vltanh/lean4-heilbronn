"""Exact author replay of the printed complete nine-point IRTT HA cover.

No discovery implementation or scratch data is imported. Every source,
coordinate line, immutable scalar endpoint and positive-product identity
is reconstructed from the hand tables and the cited geometric lemmas.
"""
from collections import Counter
from fractions import Fraction as F
from pathlib import Path

import N6_IRTT_CORE_RADIAL_check as A

ROOT=Path(__file__).with_name('N6_IRTT_CORE_HA_TABLES')


def polynomial(rows):
    result=A.unique([(tuple(m),F(c)) for m,c in rows])
    assert all(c and m == tuple(sorted(m)) and all(type(i) is int and 0 <= i < 12 for i in m)
               for m,c in result.items())
    return result


def positive_product(certificate, records, polys, factors, known, low, high):
    assert A.as_box(certificate['box']) == (low,high)
    sources={}
    for number,source in certificate['sources'].items():
        assert str(int(number)) == number
        origin=source['origin'];kind=origin['kind']
        if kind == 'bound':
            row=records[origin['id']]
            assert (row['triangle'],row['direction'],F(row['value'])) == (origin['triangle'],origin['direction'],F(origin['value']))
            triangle=row['triangle'];value=F(row['value'])
            area=A.scale(A.det(triangle),A.sign(known,triangle))
            expected=A.sub(area,A.C(value)) if row['direction'] == 'lo' else A.sub(A.C(value),area)
        elif kind == 'coordinate':
            ii=A.VARIABLES.index(origin['variable']);side=origin['direction']
            assert side in ('lo','hi')
            value=low[ii] if side == 'lo' else high[ii]
            assert F(origin['value']) == value
            expected=A.sub(A.V(ii),A.C(value)) if side == 'lo' else A.sub(A.C(value),A.V(ii))
        else:
            assert kind == 'physical'
            number_=str(origin['factorIndex'])
            assert origin['factor'] == factors[number_]
            expected=polys[number_]
        assert polynomial(source['terms']) == expected
        sources[int(number)]=expected
    combined={}
    for term in certificate['products']:
        weight=int(term['weight'])
        assert weight > 0 and str(weight) == term['weight']
        assert 1 <= len(term['factors']) <= 2
        product=A.C(1)
        for number in term['factors']:
            product=A.mul(product,sources[number])
        combined=A.add(combined,A.scale(product,weight))
    assert combined == polynomial(certificate['sum'])
    shifted={}
    for monomial,coefficient in combined.items():
        term=A.C(coefficient)
        for ii in monomial:
            term=A.mul(term,A.add(A.C(low[ii]),A.V(ii)))
        shifted=A.add(shifted,term)
    assert shifted == polynomial(certificate['shifted'])
    upper=F(0)
    for monomial,coefficient in shifted.items():
        if not monomial:
            upper += coefficient
        elif coefficient > 0:
            for ii in monomial:
                coefficient *= high[ii]-low[ii]
            upper += coefficient
    assert upper == F(certificate['upper']) < 0
    return dict(product_sources=len(sources),positive_products=len(certificate['products']),
                combined_terms=len(combined),shifted_terms=len(shifted))


def audit(folder=ROOT):
    index=A.read_packet(folder/'INDEX.md')
    assert index['format'] == 'n6-irtt-core-ha-v1'
    assert index['labels'] == A.LABELS and index['variables'] == A.VARIABLES
    assert index['extra'] == ['ARS+'] and index['global_'] == 'global.md'
    nodes=index['nodes'];seen=set();all_records={};stats=Counter()

    def earlier(bound,scope,stage):
        origin=bound['origin'];source=origin['packet'];source_stage=origin['stage']
        assert source in {'HA',*nodes}
        assert source == 'HA' or scope != 'HA' and scope.startswith(source)
        assert source != scope or source_stage < stage
        row=all_records[source,source_stage,origin['id']]
        assert (row['triangle'],row['direction'],F(row['value'])) == (bound['triangle'],bound['direction'],F(bound['value']))
        return F(row['value'])

    def replay(scope,filename,input_box,expected_status):
        packet=A.read_packet(folder/filename)
        assert packet['format'] == index['format'] and packet['id'] == scope
        assert packet['labels'] == A.LABELS and packet['variables'] == A.VARIABLES
        assert packet['extra'] == ['ARS+'] and packet['loc'] == 'IRTT' and packet['word'] == '-'
        low,high=map(list,input_box);terminal=False;last_polys={};last_records={};last_known=None
        for stage,wrapped in enumerate(packet['stages']):
            assert not terminal and wrapped['forced'] == []
            result=wrapped['result'];assert result['extra'] == packet['extra']
            assert result['loc'] == 'IRTT' and result['word'] == '-'
            known=A.geometry(packet,result)
            assert len(known) == 84 and all(A.sign(known,t) for t in map(''.join,__import__('itertools').combinations(A.LABELS,3)))
            assert A.as_box(result['initialBox']) == (low,high)
            fixed_low,fixed_high=low[:],high[:]
            refinement=result['refinement'];polys={}
            for number,factor in refinement['factors'].items():
                assert str(int(number)) == number
                expected=A.physical(known,factor['why'],fixed_low,fixed_high,
                                    lambda bound:earlier(bound,scope,stage))
                assert polynomial(factor['terms']) == expected
                polys[number]=expected;stats['physical factors'] += 1
            for row in refinement['steps']:
                A.coordinate(row,polys,low,high);stats['coordinate updates'] += 1
            assert A.as_box(result['box']) == (low,high)
            records={}
            if result.get('reason',{}).get('interval'):
                assert result['closed'] and refinement['contradiction'] == result['reason']['interval']
                A.coordinate(result['reason']['interval'],polys,low,high,terminal=True)
                assert 'initial' not in result and 'updates' not in result and 'relations' not in result
                terminal=True;stats['interval terminals'] += 1
            else:
                assert not result['closed']
                before=-1
                for row in result['initial']:
                    identifier=row['id'];assert type(identifier) is int and identifier > before
                    before=identifier
                    assert A.key(row['triangle']) == row['triangle'] and A.sign(known,row['triangle'])
                    A.scalar_initial(known,row,low,high,result['areaVertexDifferences'],
                                     lambda bound:earlier(bound,scope,stage))
                    assert F(row['value']) >= (A.S if row['direction'] == 'lo' else 0)
                    records[identifier]=row;stats['initial bounds'] += 1
                for number,relation in result['relations'].items():
                    assert str(int(number)) == number
                    A.relation(known,relation,low,high);stats['scalar relations'] += 1
                for row in result['updates']:
                    identifier=row['id'];assert type(identifier) is int and identifier > before
                    before=identifier
                    assert A.key(row['triangle']) == row['triangle'] and A.sign(known,row['triangle'])
                    assert all(type(ref) is int and ref in records and ref < identifier for ref in row['refs'])
                    A.scalar_update(row,records,result['relations'][str(row['why'][1])])
                    records[identifier]=row;stats['scalar updates'] += 1
                for identifier,row in records.items():
                    all_records[scope,stage,identifier]=row
            stats['stages'] += 1
            stats['geometric deductions'] += len(result['trace'])
            last_polys,last_records,last_known=polys,records,known
        if 'coordinateCertificate' in packet:
            assert not terminal and expected_status == 'coordinate-products'
            stats.update(positive_product(packet['coordinateCertificate'],last_records,last_polys,
                result['refinement']['factors'],last_known,low,high))
            terminal=True;stats['product terminals'] += 1
        assert terminal == (expected_status in ['closed','coordinate-products'])
        return low,high

    global_box=replay('HA','global.md',A.initial_box(),'global')
    stack=[('r',None,0,global_box)]
    while stack:
        name,parent,depth,input_box=stack.pop()
        assert name not in seen
        seen.add(name);node=nodes[name]
        assert node['parent'] == parent and node['depth'] == depth
        assert node['table'] == name+'.md'
        status=node['status'];assert status in ['split','closed','coordinate-products']
        endpoint=replay(name,node['table'],input_box,status)
        if status == 'split':
            split=node['split'];ii=A.VARIABLES.index(split['variable']);cut=F(split['value'])
            low,high=endpoint;assert low[ii] < cut < high[ii]
            for suffix in ['p','m']:
                child_low,child_high=low[:],high[:]
                (child_high if suffix == 'm' else child_low)[ii]=cut
                stack.append((name+suffix,name,depth+1,(child_low,child_high)))
            stats['coordinate splits'] += 1
        else:
            assert 'split' not in node
            stats['terminal leaves'] += 1
    assert seen == set(nodes)
    assert stats['terminal leaves'] == stats['coordinate splits']+1
    assert {p.name for p in folder.glob('*.md')} == {'INDEX.md','global.md',*(n+'.md' for n in nodes)}
    return dict(stats)


if __name__ == '__main__':
    print('IRTT HA complete author replay:',audit(),flush=True)
