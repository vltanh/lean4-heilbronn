"""Read the two six-contact IITT top-pair domains and exact tables."""

import argparse
from fractions import Fraction as F
from functools import partial
from pathlib import Path

from audit_c1_iirtt_lifted import V, add, const, mul, scale
from c1_contact_geometry_independent import S
from c1_iirtt_tables import Tables
from n6_contact_rows import ALPHA, RegionGeometry, RegionSources
from n6_contact_tables import audit_six


class IITTGeometry(RegionGeometry):
    def initial_value(self, known, triangle, side, witness, ancestor):
        if witness == ['iitt_competitive']:
            assert side=='lo' and self.sign(known,triangle)!=0
            return F(9307,100000)
        return super().initial_value(known, triangle, side, witness, ancestor)

    def cap_value(self, triangle, orientation, witness):
        if witness[0] != 'iitt_cap':
            return super().cap_value(triangle, orientation, witness)
        assert witness == ['iitt_cap', triangle] and orientation in (-1, 1)
        cap = {t: F(69,100) for t in ('ACE', 'BFH', 'BCE', 'AFH')}
        cap['CEF'] = F(337,500)
        if self.reg.pair == 'tri':
            cap.update(CER=F(157,250), FHR=F(157,250))
        else:
            cap.update(CER=F(27,40), FHR=F(27,40), FHS=F(27,40), EFH=F(347,500))
        return cap[triangle]

    def relation(self, known, relation, witness):
        tag = witness[0]
        if tag not in ('iitt_pent_area','iitt_pent_support'):
            return super().relation(known, relation, witness)
        _,word,containment = witness
        assert len(word) == 5 and self.convex(known,word,self.sign(known,word[:3]))
        if containment == ['inside']:
            assert all(self.inside(known,word,p) for p in 'PQ')
        else:
            kind,cap = containment
            assert kind == 'arc' and len(cap)==5 and set(cap)==set(word)
            assert any(cap == (self.outer+self.outer)[i:i+5] for i in range(len(self.outer)))
            side = self.sign(known,'PQ'+cap[1])
            assert side in (-1,1) and all(self.sign(known,'PQ'+p)==(side if p in cap[1:4] else -side)
                                         for p in self.outer)
        a,b,c,d,e = word
        if tag == 'iitt_pent_area':
            assert relation == ['linear', {self.key(t):1 for t in (a+b+c,a+c+d,a+d+e)}, '837/1000']
        else:
            assert relation == ['support', self.key(a+b+e), self.key(a+d+e), self.key(a+b+d), '105741/100000']

    def terminal(self, known, row):
        if row[0] == 'iitt_projection_contact':
            return self.projected(known, row)
        if row[0] == 'iitt_opposite_wings':
            _,right,left = row
            assert sorted([right,left]) == ['P','Q']
            assert self.inside(known,'BCE',right) and self.inside(known,'AFH',left)
            return
        if row[0] == 'iitt_central_pair':
            _, fan = row
            assert fan == 'CEF' or fan == 'HEF' and self.reg.pair=='quad'
            chord,side = ('CF',-1) if fan=='CEF' else ('HE',1)
            assert all(self.sign(known,chord+t)==side and self.inside(known,fan,t) for t in 'PQ')
            return
        if row != ['iitt_short_arc']:
            return super().terminal(known, row)
        hull = self.outer
        bad = {'ABCE', 'FHAB', 'HABC'}
        bad.update({'CERF'} if self.reg.pair=='tri' else {'CERS', 'ERSF', 'RSFH'})
        exclude = {2:bad, 3: set() if self.reg.pair=='tri' else {'CERSF','ERSFH'}}
        for offset in range(len(hull)):
            seq = (hull+hull)[offset:offset+len(hull)]
            for length in range(2,len(hull)-1):
                plus,minus = seq[:length],seq[length:]
                if (seq[-1]+plus+minus[0] in exclude.get(len(plus),()) or
                        plus[-1]+minus+seq[0] in exclude.get(len(minus),())):
                    continue
                assert (any(self.sign(known,'PQ'+t)==-1 for t in plus) or
                        any(self.sign(known,'PQ'+t)==1 for t in minus))

    def projected(self, known, row):
        _,reflected,first,second,test_q,test_p = row
        assert self.reg.pair=='quad' and type(reflected) is bool and sorted([first,second])==['P','Q']
        physical = dict(zip('ABCEFHPQRS',('BAHFEC' if reflected else 'ABCEFH')+
                            first+second+('SR' if reflected else 'RS')))
        tests = (('ERS',1),('FRS',1),('CSQ',1),('EAQ',-1),('RHP',1),('FBP',1),
                 ('CPQ',-1),('EPQ',1),('FPQ',1),('HPQ',-1))
        assert all(self.sign(known,''.join(physical[t] for t in word))==(-sg if reflected else sg)
                   for word,sg in tests)

        for point,coord,test in ((second,'y' if reflected else 'x',test_q),
                                 (first,'x' if reflected else 'y',test_p)):
            edge,opposite,side = (2,4,3) if coord=='x' else (5,3,4)
            if test=='box':
                index = 6+2*'PQRS'.index(point)+int(coord=='y')
                assert self.box[index][1]<=self.box[edge][0]
                continue
            assert test=='area'
            lower = max(self.box[edge][0],self.box[opposite][0])
            raw = 1-lower+self.box[side][1]*(lower-self.box[opposite][0])
            upper = min(raw, F(337,500) if coord=='x' else F(347,500))
            demand = S*(2-self.box[edge][1]-self.box[opposite][1])
            assert (1-lower)*upper<=demand


class IITTSources(RegionSources):
    def extra(self):
        if self.reg.pair == 'tri':
            return ('top_bary_j_lo', 'top_bary_j_hi', 'top_bary_k_lo', 'top_bary_k_hi')
        return ('top_ear_r', 'top_ear_s', 'top_extreme_sum', 'top_deficits')

    def additional(self):
        return [*super().additional(), *self.extra()]

    def wing_names(self):
        known = self.stage['signs']
        names = []
        if any(IITTGeometry.sign(known,'BE'+p)==-1 for p in 'PQ'):
            names.append('right_wing')
        if any(IITTGeometry.sign(known,'AF'+p)==1 for p in 'PQ'):
            names.append('left_wing')
        return names

    def cubic_names(self):
        return [*self.wing_names(), 'central_px', 'central_py', 'central_qx', 'central_qy']

    def central_factor(self, name):
        point,axis = name[-2:]
        assert point in 'pq' and axis in 'xy'
        c,e,f,h = V[2:6]
        if axis=='x':
            left,right,contact = c,f,e
            index = 6 if point=='p' else 8
        else:
            left,right,contact = h,e,f
            index = 7 if point=='p' else 9
        area = add(const(1),scale(left,-1),mul(contact,add(left,scale(right,-1))))
        budget = add(const(2),scale(left,-1),scale(right,-1))
        return add(mul(add(const(1),scale(V[index],-1)),area),scale(budget,-S))

    def wing_factor(self, name):
        assert name in self.wing_names()
        if name=='right_wing':
            end,start,side,opposite = 2,1,3,5
        else:
            end,start,side,opposite = 5,0,4,2
        end_floor = self.box[end][0]
        side_lo,side_hi = self.box[side]
        span = add(V[end],scale(V[start],-1))
        upper_area = add(scale(V[opposite],1-end_floor),scale(V[side],end_floor))
        secant = add(scale(V[side],side_lo+side_hi),const(-side_lo*side_hi))
        comparison = add(scale(mul(V[side],V[opposite]),1-end_floor),
                         scale(secant,end_floor),scale(add(V[side],V[opposite]),-S))
        return add(mul(span,comparison),scale(upper_area,-2*S))

    def __getitem__(self, name):
        if name in ('right_wing','left_wing'):
            return self.wing_factor(name)
        if name in ('central_px','central_py','central_qx','central_qy'):
            return self.central_factor(name)
        if name not in self.extra():
            return super().__getitem__(name)
        e,f = V[3:5]
        r,w,j,k = V[10:14]

        def difference(x,y):
            return add(x,scale(y,-1))

        def complement(x):
            return difference(const(1),x)

        if name == 'top_ear_r':
            return add(mul(difference(w,e),difference(r,j)), const(-S))
        if name == 'top_ear_s':
            return add(mul(difference(k,w),difference(j,f)), const(-S))
        if name == 'top_extreme_sum':
            return add(r,k,const(-F(4284,2500)))
        if name == 'top_deficits':
            aa,bb = complement(e),complement(f)
            return add(scale(mul(aa,bb),3),scale(mul(aa,complement(r)),-5),
                       scale(mul(bb,complement(k)),-5),const(-12*S))
        axis, bound = name.split('_')[-2:]
        inner,base,outer = (j,f,r) if axis=='j' else (k,e,w)
        weight = S/(1-ALPHA)**2
        if bound == 'lo':
            return add(difference(inner,base),scale(add(const(1),outer,scale(base,-2)),-weight))
        return add(complement(inner),scale(add(const(2),scale(outer,-1),scale(base,-1)),-weight))


if __name__ == '__main__':
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('hulls', nargs='*', choices=('tri','quad'))
    arguments = parser.parse_args()
    for pair in arguments.hulls or ('tri', 'quad'):
        row = 'iitt-'+pair
        tables = Tables(Path(__file__).with_name('N6_IITT_TABLES')/pair)
        print(pair, audit_six(tables, partial(IITTGeometry,row),
                              partial(IITTSources,row=row)), flush=True)
