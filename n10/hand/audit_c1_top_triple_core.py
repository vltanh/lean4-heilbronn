"""Verify one-corner top-triple tables in their actual nine- or ten-point domains."""
import argparse
from fractions import Fraction as F
from functools import partial
from itertools import combinations
from pathlib import Path

from c1_pentagon_initial import initial_pentagon
from audit_c1_iirtt import audit, box
from audit_c1_iirtt_lifted import V, add, const, mul, check_coordinate, check_lift, scale
from c1_box_product_sum import EnvelopeSources, check_box_product_sum
from audit_c1_iirtt_scalar import ScalarAudit
from audit_c1_two_central_three_caps import VARIABLES, determinant, parse_poly
from c1_contact_geometry_independent import Geometry, S, put
from c1_iirtt_tables import Tables


LABELS = 'OHCDFZPQR'
WORDS = ('mmmm', 'mmpm', 'ppmp')
RESIDUES = ('iittt-pmmp', 'bittt-pmmp')
TOP_HULL = {'mmmm':'DPF', 'mmpm':'DPF', 'ppmp':'DPQF', 'pmmp':'DPQF'}


class Core(Geometry):
    def __init__(self, scope, metadata=None):
        assert scope in WORDS + RESIDUES
        self.word = scope.split('-')[-1]
        self.central = 'YZ' if scope == 'iittt-pmmp' else 'Z'
        self.lower = 'Y' if scope == 'bittt-pmmp' else ''
        self.labels = 'OHCDFYZPQR' if scope in RESIDUES else LABELS
        self.meta = dict(metadata or {})
        self.meta.setdefault('assign', {})
        self.meta.setdefault('meshes', [])
        self.top = TOP_HULL[self.word]
        self.outer = 'OC' + self.top + 'H'
        self.containers = {**dict.fromkeys(self.lower, 'OHC'),
                           **dict.fromkeys(self.central, 'HCDF'),
                           **{t: self.top for t in 'PQR' if t not in self.top}}
        self.side_bases = {}
        self.quad_containers = ['HCDF' + self.central]
        self.immutable_bounds = {}
        self.box = box(self.meta.get('box', self.coarse_box()))
        self.biirl = False

    def coarse_box(self):
        hi = 1 - rate(self.word)*S/(1-S)
        floor = S + S/(1-S)
        bottom = max(S/hi, 3*S) if self.lower else S/hi
        y_max = 1-2*S if self.lower else 1-S
        return ([(bottom, 1)]*2 + [(S, hi)]*2 + [(S, y_max)]*2 +
                [(S, 1-S)]*2 + [(floor, 1)]*6)

    def base(self):
        known = {}
        for trio in combinations(self.outer, 3):
            put(known, ''.join(trio), 1)
        for point, container in self.containers.items():
            for poly in (container, self.outer):
                for a,b in zip(poly, poly[1:]+poly[:1]):
                    put(known, a+b+point, -1 if poly == 'OHC' else 1)
        for t in 'PQR':
            put(known, 'DF'+t, -1)
        for x in self.central+self.lower:
            for edge,sg in [('OH',-1),('OC',1),('HC',-1 if x in self.lower else 1)]:
                put(known, edge+x, sg)
        if self.central == 'YZ':
            put(known, 'OYZ', 1)
        for tri in ('DPQ','DPR','DQR'):
            put(known, tri, 1)
        for tri, bit in zip(('FPQ','FPR','FQR','PQR'), self.word):
            put(known, tri, 1 if bit=='p' else -1)
        return known

    def derive_signs(self, steps):
        mapped = []
        for row in steps:
            if row[0] == 'central_line':
                _, region, base, point, vertex, sg = row
                row = ['interior_line',base,point,region,vertex,sg]
            mapped.append(row)
        return super().derive_signs(mapped)

    def terminal(self, known, row):
        if row[0] == 'central_line':
            _, region, base, point = row
            row = ['interior_line',base,point,region]
        return super().terminal(known, row)

    def relation(self, known, relation, witness):
        if witness == ['c1_norm', 'h_ge_c']:
            assert self.word in ('mmpm', 'pmmp')
            assert relation == ['linear', {'OHD':1,'OCF':-1}, '0']
        else:
            super().relation(known, relation, witness)


def rate(word):
    return F(1457,250) if word=='pmmp' else F(149,20)


class CoreScalar(ScalarAudit):
    def __init__(self, word):
        super().__init__()
        self.geometry = partial(Core, word)

    def relation(self, geo, known, entry):
        if entry['witness'][0] == 'pentagon_initial':
            initial_pentagon(geo, known, entry['rel'], entry['witness'])
        else:
            super().relation(geo, known, entry)


class CoreSources(EnvelopeSources):
    def __init__(self, scope, stage):
        self.scope = scope
        self.word = scope.split('-')[-1]
        labels = 'OHCDFYZPQR' if scope in RESIDUES else LABELS
        super().__init__(stage, rate(self.word), labels)

    def lifted_physical(self,name):
        assert self.scope in RESIDUES
        assert name in self.additional()
        return self[name]

    def additional(self):
        assert self.scope in RESIDUES
        return (['order_hc','order_hd','order_cf','top_cost','top_extreme_sum',
                 'top_deficits','top_p_budget','top_q_budget','top_r_budget',
                 'top_extreme_budget','top_ear_p','top_ear_q'] +
                (['lower_sum', 'top_inner_dx', 'top_inner_dy'] if self.scope == 'bittt-pmmp' else []))

    def additional_cubic(self):
        return self.additional() + (['top_inner_bary_' + suffix for suffix in ('px','py','qx','qy')]
                                    if self.scope == 'bittt-pmmp' else [])

    def __getitem__(self, name):
        assert name != 'right_support'
        if name == 'order_hc':
            assert self.word in ('mmpm', 'pmmp')
            return add(V[0], scale(V[1], -1))
        if self.scope in RESIDUES:
            def gap(i,j):
                return add(V[i],scale(V[j],-1))
            def complement(i):
                return add(const(1),scale(V[i],-1))
            if name in ('top_inner_dx','top_inner_dy'):
                assert self.scope == 'bittt-pmmp'
                contact,inner = (2,12) if name.endswith('x') else (3,13)
                return add(mul(complement(contact),complement(inner)),const(-S))
            if name.startswith('top_inner_bary_'):
                assert name in self.additional_cubic()
                outer = 8 if name[-2]=='p' else 10
                horizontal = name.endswith('x')
                contact, inner, vertex = (3,12,outer) if horizontal else (2,13,outer+1)
                area = add(mul(gap(outer,3),gap(outer+1,2)),
                           scale(mul(complement(outer),complement(outer+1)),-1))
                return add(mul(complement(inner),area),
                           scale(add(complement(contact),complement(vertex)),-S))
            if name == 'lower_sum':
                assert self.scope == 'bittt-pmmp'
                return add(const(1-S),scale(V[4],-1),scale(V[5],-1))
            if name in ('top_p_budget','top_q_budget','top_r_budget','top_extreme_budget'):
                i,j,k = {'top_p_budget':(8,9,3),'top_q_budget':(10,11,3),
                         'top_r_budget':(12,13,1),'top_extreme_budget':(8,11,4)}[name]
                return add(mul(gap(i,3),gap(j,2)),const(-k*S))
            if name in ('top_ear_p','top_ear_q'):
                u,v = ((9,2),(8,10)) if name == 'top_ear_p' else ((11,9),(10,3))
                return add(mul(gap(*u),gap(*v)),const(-S))
            if name == 'top_extreme_sum':
                return add(V[8],V[11],const(-F(17029,10000)))
            if name == 'top_deficits':
                a,b = complement(2),complement(3)
                return add(scale(mul(a,b),3),scale(mul(a,complement(8)),-5),
                           scale(mul(b,complement(11)),-5),const(-12*S))
        return super().__getitem__(name)


def audit_word(word, folder=None):
    assert word in WORDS + RESIDUES
    initial = Core(word)
    def domain(tables):
        assert tables.domain['coordinates'] == VARIABLES
        assert tables.domain['labels'] == initial.labels and tables.domain['base'] == initial.base()
        assert box(tables.domain['box']) == initial.coarse_box()
        assert set(tables.polynomials) == {''.join(t) for t in combinations(initial.labels,3)}
        for tri, value in tables.polynomials.items():
            assert parse_poly(value) == determinant(tri)
        return initial.coarse_box()
    tables = Tables((folder or Path(__file__).with_name('C1_TOP_TRIPLE_CORE_TABLES'))/word)
    sources = partial(CoreSources, word)
    def weighted(stage, literal):
        method = check_box_product_sum if literal['mode']=='unit_cube' else check_lift
        return method(stage,literal,source_factory=sources)
    return audit(tables, CoreScalar(word).stage,
                 partial(check_coordinate, source_factory=sources),
                 weighted, domain)


if __name__ == '__main__':
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('words', nargs='*', help='word names, default all three')
    parser.add_argument('--folder', type=Path)
    arguments = parser.parse_args()
    for word in arguments.words or WORDS:
        print(word, audit_word(word, arguments.folder), flush=True)
