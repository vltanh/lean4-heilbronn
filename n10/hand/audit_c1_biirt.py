"""Independently check the one-corner BIIRT table domain and finite proof."""
from fractions import Fraction as F
from functools import partial
from itertools import combinations
from pathlib import Path

from audit_c1_birtt import BIRTTScalar
from audit_c1_iirtt import audit, box
from audit_c1_iirtt_geometry import IIRTT
from audit_c1_iirtt_lifted import V, add, area, check_coordinate, check_lift, const, mul, scale
from audit_c1_two_central_three_caps import LABELS, VARIABLES, determinant, parse_poly
from c1_contact_geometry_independent import S, put
from c1_box_product_sum import EnvelopeSources, check_box_product_sum
from c1_iirtt_tables import Tables


class BIIRT(IIRTT):
    def __init__(self, metadata=None):
        super().__init__(metadata)
        self.outer = 'OCQDRFH'
        self.containers = {'Y': 'OHC', 'Z': 'HCDF', 'P': 'HCDF'}
        self.quad_containers = ['HCDFZP']

    def base(self):
        known = {}
        for trio in combinations(self.outer, 3):
            put(known, ''.join(trio), 1)
        for point in self.containers:
            for a,b in zip(self.outer, self.outer[1:] + self.outer[:1]):
                put(known, a+b+point, 1)
            put(known, 'OH'+point, -1)
            put(known, 'OC'+point, 1)
            put(known, 'HC'+point, -1 if point=='Y' else 1)
        for point in ('Z','P'):
            for edge,sg in [('HF',-1),('CD',1),('DF',1)]:
                put(known, edge+point, sg)
        put(known, 'OZP', 1)
        return known

    def coarse_box(self):
        M = 1-S
        c0, c1 = 3*S, F(883,1000)
        d0, d1 = 4*S, F(897,1000)
        ell = S/c1
        return [(d0,1),(c0,c1),(d0,d1),(S,c1),
                (S,c1-2*S),(ell,1-2*ell),
                (S,M),(ell,M),(S,M),(ell,M),
                (F(643,1000),1),(ell,d1-S/(1-c0)),
                (S+S/(1-d0),1),(d0+S/M,1)]

    def cap_value(self, triangle, orientation, witness):
        if witness[0] == 'side_cap':
            assert witness == ['side_cap', triangle] and orientation in (-1,1)
            return {'OCQ': F(21,50), 'HDF': 1-4*S}[triangle]
        assert witness[0] != 'monotone_chain'
        return super().cap_value(triangle, orientation, witness)


class BIIRTScalar(BIRTTScalar):
    geometry = BIIRT


class BIIRTSources(EnvelopeSources):
    additional = ('lower_sum', 'lower_HCD', 'lower_HCF', 'top_actual', 'top_pentagon')

    def __init__(self, stage):
        super().__init__(stage, top_count=1)

    def lifted_physical(self, name):
        assert name in self.additional
        return self[name]

    def __getitem__(self, name):
        h,c,d,f,u,v = V[:6]

        def complement(x):
            return add(const(1),scale(x,-1))

        if name == 'lower_sum':
            return add(const(1-S),scale(u,-1),scale(v,-1))
        if name in ('lower_HCD','lower_HCF'):
            tri,x = ('HCD',c) if name=='lower_HCD' else ('HCF',h)
            return add(area(self.stage,tri),scale(complement(x),-F(149,20)*S))
        if name == 'top_actual':
            j,k = V[12:14]
            return add(mul(add(j,scale(f,-1)),add(k,scale(d,-1))),const(-S))
        if name == 'top_pentagon':
            return add(const(1),scale(mul(h,c),-1),scale(mul(f,complement(h)),-1),
                       scale(mul(d,complement(c)),-1),
                       scale(add(mul(d,f),scale(mul(complement(h),complement(c)),-1)),-F(23,1000)))
        return super().__getitem__(name)


def domain(tables):
    geo = BIIRT()
    assert tables.domain['coordinates'] == VARIABLES
    assert tables.domain['labels'] == LABELS and tables.domain['base'] == geo.base()
    assert box(tables.domain['box']) == geo.coarse_box()
    assert set(tables.polynomials) == {''.join(t) for t in combinations(LABELS,3)}
    for tri, value in tables.polynomials.items():
        assert determinant(tri) == parse_poly(value)
    return geo.coarse_box()


if __name__ == '__main__':
    tables = Tables(Path(__file__).with_name('C1_BIIRT_TABLES'))
    sources = BIIRTSources
    def terminal(stage, result):
        reader = check_box_product_sum if result['mode'] == 'unit_cube' else check_lift
        reader(stage,result,source_factory=sources)
    print(audit(tables, BIIRTScalar().stage, partial(check_coordinate,source_factory=sources),
                terminal, domain))
