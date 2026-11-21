"""Initial BBIIT domains and independent readers for their geometric sources."""
from fractions import Fraction as F
from functools import partial
from itertools import combinations
from pathlib import Path
import sys

from audit_c1_birtt import BIRTTScalar
from audit_c1_iirtt import audit, box
from audit_c1_iirtt_geometry import IIRTT
from audit_c1_iirtt_lifted import V, add, area, check_coordinate, check_lift, const, mul, orientation, scale
from c1_box_product_sum import EnvelopeSources, check_box_product_sum
from audit_c1_two_central_three_caps import LABELS, VARIABLES, determinant, parse_poly
from c1_contact_geometry_independent import S, put
from c1_iirtt_tables import Tables


class BBIIT(IIRTT):
    def __init__(self, row, metadata=None):
        self.row = row
        self.both = row.startswith('both-')
        super().__init__(metadata)
        self.outer = 'OCDRFH'
        self.containers = {'Y':'OHC','Z':'OHC','P':'HCR','Q':'HCR' if self.both else 'RFH'}
        self.quad_containers = ['HCDFPQ']
        self.biirl = self.both  # Precisely these roots have normalized h >= c.

    def has_container(self, point, container):
        return self.containers[point] == container or point in 'PQ' and container == 'HCDF'

    def coarse_box(self):
        s, rho, w, v = S, F(347,500), F(847,1000), 1-3*S
        t = s+s/(1-s)
        h,c,j,k = {
            'both-c': [(w,1),(w,1),(t,1),(t,1)],
            'both-h': [(w,1),(rho,w),(w,1),(t,1)],
            'both-low': [(F(833,1000),w),(rho/w,w),(w,1),(w,1)],
            'left-c': [(v,1),(w,1),(t,1),(t,v)],
            'left-r': [(v,1),(rho,w),(w,1),(t,v)],
        }[self.row]
        if self.both:
            j = max(j[0],1-(1-rho)/h[0]),j[1]
            k = max(k[0],1-(1-rho)/c[0]),k[1]
        return [h,c]+[(s,F(897,1000))]*2+[(s,1-2*s)]*4+[(s,1-s)]*4+[j,k]

    def base(self):
        kn = {}
        for tri in combinations(self.outer,3):
            put(kn,''.join(tri),1)
        def inward(container,point,sg=1):
            for a,b in zip(container,container[1:]+container[:1]):
                put(kn,a+b+point,sg)
        for t in 'YZPQ':
            inward(self.outer,t)
            put(kn,'CR'+t,1)
            if self.both: put(kn,'RH'+t,1)
        for t in 'YZ':
            inward('OHC',t,-1)
            for edge,sg in [('HD',-1),('HF',-1),('CD',1),('CF',1),('DF',1)]:
                put(kn,edge+t,sg)
            for p in 'PQR':
                put(kn,'H'+t+p,1)
                put(kn,'C'+t+p,-1)
            put(kn,'D'+t+'R',-1)
            put(kn,'F'+t+'R',1)
        for t in 'PQ':
            inward('HCDF',t)
            inward(self.containers[t],t)
        put(kn,'OYZ',1)
        if self.both: put(kn,'OPQ',1)
        return kn

    def cap_value(self, triangle, orientation, witness):
        if witness[0] == 'bbiit_ear':
            assert witness == ['bbiit_ear',triangle] and orientation in (-1,1)
            assert triangle in ('CDR','HFR')
            return F(53,200) if triangle=='CDR' and not self.both else F(53,100)
        assert witness[0] != 'monotone_chain'
        return super().cap_value(triangle,orientation,witness)


class BBIITSources(EnvelopeSources):
    def __init__(self,stage,both=False):
        super().__init__(stage,top_count=1)
        self.both = both

    def additional(self, secants=True):
        kinds = ('secant',) if secants else ('exact',)
        support = tuple(f'lower_{kind}_{t}_{i}' for kind in kinds for t in 'DFPQR' for i in range(4))
        ray = tuple('lower_ray_'+t for t in 'DFPQR' if self.lower_ray(t))
        return ('lower_HCD','lower_HCF','top_pentagon','top_actual','lower_sum_Y','lower_sum_Z') + (('order_hc',) if self.both else ()) + support + ray

    def lifted_physical(self, name):
        assert name in self.additional()
        return self[name]

    def upper_coordinates(self, t):
        if t=='D':
            return const(1), V[2], (1,1), self.box[2]
        if t=='F':
            return V[3], const(1), self.box[3], (1,1)
        j={'P':8,'Q':10,'R':12}[t]
        x,y=V[j:j+2]
        bx,by=self.box[j:j+2]
        return x,y,bx,by

    def lower_ray(self, t):
        assert t in 'DFPQR'
        signs = [orientation(self.stage['signs'],'O'+t+a) for a in 'YZ']
        if 0 in signs or signs[0] != signs[1]:
            return None
        # The triangle with base OH is on the positive side of OT.
        anchor,base = ('H','HO') if signs[0] > 0 else ('C','OC')
        convex = any(all(orientation(self.stage['signs'],''.join(tri))==1
                         for tri in combinations(base+tail,3)) for tail in ('YZ','ZY'))
        return anchor, 4 if convex else 3

    def lower_ray_secant(self, t):
        ray = self.lower_ray(t)
        assert ray is not None
        anchor, rate = ray
        h,c = V[:2]
        x,y,_,_ = self.upper_coordinates(t)
        if anchor == 'H':
            lo,hi = self.box[0]
            product = mul(add(scale(h,lo+hi),const(-lo*hi)),mul(c,x))
        else:
            lo,hi = self.box[1]
            product = mul(add(scale(c,lo+hi),const(-lo*hi)),mul(h,y))
        return add(product,scale(mul(h,c),-S),scale(add(mul(h,x),mul(c,y)),-rate*S))

    def lower_support(self, kind, t, index):
        h,c = V[:2]
        x,y,bx,by = self.upper_coordinates(t)
        signs=[orientation(self.stage['signs'],'O'+a+t) for a in 'YZ']
        rates = {0:(F(299,31),F(139,10),F(149,5),F(139,10)),
                 1:(F(1142,125),F(1142,125),F(199,10),F(199,10)),
                 2:(F(139,10),F(299,31),F(139,10),F(149,5))}
        rate=(rates[sum(v<0 for v in signs)] if all(signs) else (F(1142,125),F(1142,125),F(139,10),F(139,10)))[index]
        def square(v, interval):
            if kind=='exact':return mul(v,v)
            assert kind=='secant'
            a,b=interval
            return add(scale(v,a+b),const(-a*b))
        def minus(a,b):return add(a,scale(b,-1))
        hc=mul(h,c)
        if index==0: expr,delta=mul(square(c,self.box[1]),y),minus(c,x)
        elif index==1: expr,delta=mul(square(h,self.box[0]),x),minus(h,y)
        elif index==2: expr,delta=add(mul(h,square(x,bx)),mul(c,mul(x,y)),scale(mul(hc,x),-1)),minus(x,c)
        else: expr,delta=add(mul(c,square(y,by)),mul(h,mul(x,y)),scale(mul(hc,y),-1)),minus(y,h)
        return add(expr,scale(delta,-S*rate))

    def __getitem__(self,name):
        if name.startswith('lower_ray_'):
            return self.lower_ray_secant(name.removeprefix('lower_ray_'))
        if name.startswith(('lower_secant_','lower_exact_')):
            _,kind,t,i=name.split('_')
            assert i in ('0','1','2','3') and t in ('D','F','P','Q','R')
            return self.lower_support(kind,t,int(i))
        if name in ('lower_sum_Y','lower_sum_Z'):
            i=4 if name.endswith('Y') else 6
            return add(const(1-S),scale(V[i],-1),scale(V[i+1],-1))
        if name=='top_actual':
            return add(mul(add(V[12],scale(V[3],-1)),add(V[13],scale(V[2],-1))),const(-S))
        if name == 'order_hc':
            assert self.both
            return add(V[0],scale(V[1],-1))
        if name in ('lower_HCD', 'lower_HCF'):
            tri, idx = ('HCD',1) if name == 'lower_HCD' else ('HCF',0)
            return add(area(self.stage,tri),scale(add(const(1),scale(V[idx],-1)),-F(139,10)*S))
        if name == 'top_pentagon':
            h,c,d,f=V[:4]
            hgap=add(const(1),scale(h,-1))
            cgap=add(const(1),scale(c,-1))
            return add(const(1),scale(mul(h,c),-1),scale(mul(f,hgap),-1),
                       scale(mul(d,cgap),-1),scale(add(mul(d,f),scale(mul(hgap,cgap),-1)),-F(23,1000)))
        assert name != 'right_support'
        return super().__getitem__(name)


class BBIITScalar(BIRTTScalar):
    def __init__(self,row):
        super().__init__()
        self.geometry = partial(BBIIT,row)


def domain(row,tables):
    geo=BBIIT(row)
    assert tables.domain['coordinates']==VARIABLES and tables.domain['labels']==LABELS
    assert tables.domain['base']==geo.base() and box(tables.domain['box'])==geo.coarse_box()
    assert set(tables.polynomials)=={''.join(t) for t in combinations(LABELS,3)}
    assert all(determinant(t)==parse_poly(poly) for t,poly in tables.polynomials.items())
    return geo.coarse_box()


def check(row, folder):
    tables=Tables(folder)
    src=partial(BBIITSources,both=row.startswith('both-'))
    def terminal(st,cert):
        reader=check_box_product_sum if cert['mode']=='unit_cube' else check_lift
        return reader(st,cert,source_factory=src)
    return audit(tables,BBIITScalar(row).stage,partial(check_coordinate,source_factory=src),terminal,partial(domain,row))


if __name__=='__main__':
    row=sys.argv[1]
    print(check(row,Path(__file__).with_name('C1_BBIIT_EAR_TABLES')/row))
