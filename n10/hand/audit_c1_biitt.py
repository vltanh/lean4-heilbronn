"""Check the one-corner lower/central/central/top/top domains and their tables."""
import argparse
from fractions import Fraction as F
from functools import partial
from itertools import combinations
from pathlib import Path

from audit_c1_birtt import BIRTTScalar
from audit_c1_iirtt import audit, box
from audit_c1_iirtt_geometry import IIRTT
from audit_c1_iirtt_lifted import Sources, V, add, mul, const, check_coordinate, check_lift, scale
from audit_c1_two_central_three_caps import LABELS, VARIABLES, determinant, parse_poly
from c1_contact_geometry_independent import Geometry, S, inside, put
from c1_iirtt_tables import Tables
from c1_box_product_sum import EnvelopeSources, check_box_product_sum


class BIITT(IIRTT):
    def __init__(self, hull, metadata=None):
        assert hull in ('tri', 'quad')
        self.hull = hull
        self.outer = 'OCDPFH' if hull == 'tri' else 'OCDPRFH'
        self.containers = {'Y':'OHC', 'Z':'HCDF', 'Q':'HCDF'}
        if hull == 'tri':
            self.containers['R'] = 'DPF'
        self.quad_containers = ['HCDFZQ']
        self.side_bases = {}
        self.meta = dict(metadata or {})
        self.meta.setdefault('assign', {})
        self.meta.setdefault('meshes', [])
        self.biirl = False
        coarse = self.coarse_box()
        self.box = box(self.meta.get('box', coarse))
        assert all(lo <= a <= b <= hi for (lo,hi),(a,b) in zip(coarse,self.box))

    def coarse_box(self):
        rate = 3 if self.hull == 'tri' else 4
        floor = S + S/(1-S)
        return ([(3*S,1)]*2 + [(S,1-rate*S/(1-S))]*2 + [(S,1-2*S)]*2
                + [(S,1-S)]*2 + [(floor,1)]*2 + [(S,1-S)]*2 + [(floor,1)]*2)

    def base(self):
        signs = {}
        for triple in combinations(self.outer,3):
            put(signs, ''.join(triple), 1)
        for point, container in self.containers.items():
            for polygon in (container,self.outer):
                for a,b in zip(polygon, polygon[1:]+polygon[:1]):
                    put(signs, a+b+point, -1 if polygon == 'OHC' else 1)
        for point in 'YZQ':
            put(signs, 'OH'+point, -1)
            put(signs, 'OC'+point, 1)
            put(signs, 'HC'+point, -1 if point == 'Y' else 1)
        for point in 'PR':
            put(signs, 'DF'+point, -1)
        put(signs, 'OZQ', 1)
        put(signs, 'DPR', 1)
        put(signs, 'FPR', -1 if self.hull == 'tri' else 1)
        return signs

    def excluded_wings(self,a,b):
        return {a,b}=={'Z','Q'} or (self.hull=='quad' and len({a,b})==2 and {a,b}<=set('YZQ'))

    def extra_sign_rule(self,known,row):
        if row[0] != 'opposite_central_wings':
            return super().extra_sign_rule(known,row)
        _,a,b,target,sg=row
        assert self.excluded_wings(a,b) and self.sign(known,target)==0
        if target=='OF'+b:
            assert sg==-1 and self.sign(known,'OD'+a)==-1
        else:
            assert target=='OD'+a and sg==1 and self.sign(known,'OF'+b)==1
        self.put(known,target,sg)
        return True

    def terminal(self,known,row):
        if row[0]=='opposite_central_wings':
            _,a,b=row
            assert self.excluded_wings(a,b) and self.sign(known,'OD'+a)==-1 and self.sign(known,'OF'+b)==1
            return
        super().terminal(known,row)

    def cap_value(self, triangle, orientation, witness):
        if witness[0] == 'six_chain_end':
            assert self.hull == 'quad' and triangle in ('OCD', 'OHF')
            assert orientation in (-1,1) and witness == ['six_chain_end',triangle]
            return F(231,500)
        return Geometry.cap_value(self, triangle, orientation, witness)

    def initial_value(self, known, triangle, side, witness, ancestor):
        if witness[0] == 'occupied_six_chain':
            _, wing, occupant, target = witness
            assert self.hull == 'quad' and side == 'hi' and target == triangle
            assert inside(known,wing,occupant)
            other = {'OCD':('CDP','DPR','FPR'),'OHF':('HFR','FPR','DPR')}[wing]
            return (F(53,250),F(257,1000),F(41,200))[other.index(triangle)]
        return super().initial_value(known,triangle,side,witness,ancestor)

    def relation(self, known, relation, witness):
        if witness == ['c1_norm', 'h_ge_c']:
            assert relation == ['linear', {'OHD':1,'OCF':-1}, '0']
        else:
            super().relation(known, relation, witness)


class BIITTSources(EnvelopeSources):
    def lifted_physical(self,name):
        allowed=('order_', 'cap_', 'top_', 'actual_top_', 'inner_top_', 'lower_sum', 'two_top_deficits')
        assert name.startswith(allowed)
        return self[name]

    def __getitem__(self, name):
        assert name != 'right_support'
        if name.startswith('wing_'):
            _,side,label,end=name.split('_')
            i={'Z':6,'Q':10}[label]
            c,h,d,x,word,orientation={'d':(1,0,2,i,'OD',-1),'f':(0,1,3,i+1,'OF',1)}[side]
            assert self.stage['signs'][word+label]==orientation
            cd=mul(V[c],V[d])
            if end=='lo':
                return add(mul(add(V[h],cd),V[x]),scale(mul(V[h],V[c]),-1),const(-S),scale(V[c],-S))
            assert end=='hi'
            return add(mul(cd,add(const(1),scale(V[x],-1))),const(-2*S),scale(V[c],S))
        if name == 'order_hc':
            return add(V[0],scale(V[1],-1))
        def difference(i,j):
            return add(V[i],scale(V[j],-1))
        if name == 'lower_sum':
            return add(const(1-S),scale(V[4],-1),scale(V[5],-1))
        if name.startswith('top_order_'):
            assert self.top_count == 4
            i,j={'px_rx':(8,12),'ry_py':(13,9),'py_d':(9,2),'rx_f':(12,3)}[name[10:]]
            return difference(i,j)
        if name == 'actual_top_budget':
            dy = 9 if self.top_count == 3 else 13
            return add(mul(difference(8,3),difference(dy,2)),const(-self.top_count*S))
        if name in ('top_ear_clearance_1','top_ear_clearance_2'):
            assert self.top_count == 4
            pair = ((9,2),(8,12)) if name.endswith('1') else ((13,9),(12,3))
            return add(mul(*(difference(a,b) for a,b in pair)),const(-S))
        if name == 'top_extreme_sum':
            assert self.top_count == 4
            return add(V[8],V[13],const(-F(17029,10000)))
        if name == 'two_top_deficits':
            assert self.top_count == 4
            def complement(i):
                return add(const(1),scale(V[i],-1))
            a,b = complement(2),complement(3)
            return add(scale(mul(a,b),3),scale(mul(a,complement(8)),-5),
                       scale(mul(b,complement(13)),-5),const(-12*S))
        if name.startswith('inner_top_'):
            assert self.top_count == 3
            _,_,side,axis = name.split('_')
            i,j,k = {'x':(12,3,8), 'y':(13,2,9)}[axis]
            w = S/(1-S)**2
            if side == 'lo':
                return add(difference(i,j),scale(add(const(1),V[k],scale(V[j],-2)),-w))
            assert side == 'hi'
            return add(const(1),scale(V[i],-1),scale(add(const(2),scale(V[k],-1),scale(V[j],-1)),-w))
        return super().__getitem__(name)


class BIITTScalar(BIRTTScalar):
    def __init__(self, hull):
        super().__init__()
        self.geometry = partial(BIITT, hull)


def domain(hull,tables):
    geo = BIITT(hull)
    assert tables.domain['coordinates'] == VARIABLES and tables.domain['labels'] == LABELS
    assert tables.domain['base'] == geo.base() and box(tables.domain['box']) == geo.coarse_box()
    assert set(tables.polynomials) == {''.join(t) for t in combinations(LABELS,3)}
    for t,poly in tables.polynomials.items():
        assert parse_poly(poly) == determinant(t)
    return geo.coarse_box()


def audit_hull(hull):
    tables = Tables(Path(__file__).with_name('C1_BIITT_TABLES')/hull)
    factory = partial(BIITTSources, top_count=3 if hull == 'tri' else 4)
    def terminal(stage,result):
        reader=check_box_product_sum if result['mode']=='unit_cube' else check_lift
        reader(stage,result,factory)
    return audit(tables, BIITTScalar(hull).stage, partial(check_coordinate,source_factory=factory),
                 terminal, partial(domain,hull))


if __name__ == '__main__':
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('hulls', nargs='*')
    for hull in parser.parse_args().hulls or ('tri','quad'):
        print(hull,audit_hull(hull),flush=True)
