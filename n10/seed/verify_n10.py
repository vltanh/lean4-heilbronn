#!/usr/bin/env python3
"""Exact construction, neutral-direction, and local-radius certificates for n=10.
Python standard library only. No numerical optimizer is imported or trusted.
This does NOT verify the unrestricted global upper bound.
"""
from fractions import Fraction as F
from itertools import combinations
from pathlib import Path
import json

ROOT = Path(__file__).resolve().parent
QDEN = 2**60
GL = 363874867642398571
GU = GL+1
SL = 107307983611248409


def require(ok, message):
    if not ok:
        raise ArithmeticError(message)


class Cubic(tuple):
    """Q[g]/(12g^3-27g^2+20g-4), stored in the basis 1,g,g^2."""
    def __new__(cls, x=0):
        if isinstance(x, Cubic): return x
        if isinstance(x, (list, tuple)):
            require(len(x)==3, 'wrong field vector length')
            return tuple.__new__(cls, tuple(F(t) for t in x))
        return tuple.__new__(cls, (F(x), F(0), F(0)))
    def __add__(self, other):
        o=Cubic(other); return Cubic([a+b for a,b in zip(self,o)])
    __radd__=__add__
    def __neg__(self): return Cubic([-x for x in self])
    def __sub__(self, other): return self+-Cubic(other)
    def __rsub__(self, other): return Cubic(other)+-self
    def __mul__(self, other):
        o=Cubic(other); z=[F(0)]*5
        for i,a in enumerate(self):
            for j,b in enumerate(o): z[i+j]+=a*b
        for i in (4,3):
            v=z[i];z[i-3]+=v/3;z[i-2]-=5*v/3;z[i-1]+=9*v/4
        return Cubic(z[:3])
    __rmul__=__mul__
    def __truediv__(self, other): return self*Cubic(1/F(other))
    def __pow__(self, n):
        require(isinstance(n,int) and n>=0,'bad exponent')
        z=Cubic(1)
        for _ in range(n):z=z*self
        return z
    def interval(self):
        lo,hi=F(GL,QDEN),F(GU,QDEN)
        powers=[(F(1),F(1)),(lo,hi),(lo*lo,hi*hi)]
        a=b=F(0)
        for c,(l,u) in zip(self,powers):
            if c>=0:a+=c*l;b+=c*u
            else:a+=c*u;b+=c*l
        return a,b
    def sign(self):
        if not any(self):return 0
        a,b=self.interval()
        if a>0:return 1
        if b<0:return -1
        raise ArithmeticError('root interval insufficient to decide sign')
    def absolute(self): return self if self.sign()>=0 else -self
    def coeffs(self):return [str(t) for t in self]


def csum(xs): return sum(xs,Cubic(0))

def det(a,b):return a[0]*b[1]-a[1]*b[0]
def sub(a,b):return [x-y for x,y in zip(a,b)]
def area(P,I):
    i,j,k=I;return det(sub(P[j],P[i]),sub(P[k],P[i]))/2


def main():
    poly=lambda t:12*t**3-27*t*t+20*t-4
    require(poly(F(GL,QDEN))<0<poly(F(GU,QDEN)),'bad root bracket')
    require(F(3156,10000)<F(GL,QDEN)<F(GU,QDEN)<F(3157,10000),'root bounds')
    # The derivative is positive below 1/2. The two stationary values at 2/3
    # and 5/6 are positive, so this is also the unique real root.
    require(poly(F(2,3))>0 and poly(F(5,6))>0,'unique-real-root check')
    require(all((2*t**3+3*t*t+1)%5 for t in range(5)), 'irreducibility mod 5')
    g=Cubic([0,1,0]);a=1-3*g+2*g*g;A=5*g*g/8-g**3/2
    require(not any(3456*A**3-1764*A*A+268*A-9),'area cubic')
    require((2*A-F(SL,QDEN)).sign()>0,'rational threshold must be below 2A')
    require((A-F(4653,100000)).sign()>0,'global corner threshold must be below A')
    require((A-F(4653741958254,10**14)).sign()>0,'global N threshold must be below A')
    require((A-F(1,25)).sign()>0,'positive area margin')
    P=[(0,a),(a,0),(1-g/2,0),(1,g/2),(1,1-a),(1-a,1),
       (g/2,1),(0,1-g/2),(g,g),(1-g,1-g)]
    P=[tuple(Cubic(c) for c in p) for p in P];labels='ABCDEFGHOP'
    require(all(c.sign()>=0 and (1-c).sign()>=0 for p in P for c in p),'square containment')
    active=[];J=[];areas=[]
    for I in combinations(range(10),3):
        v=area(P,I);sg=v.sign();gap=sg*v-A
        require(gap.sign()>=0,'construction gap')
        key=''.join(labels[i] for i in I)
        areas.append({'triangle':key,'sign':sg,'gap':gap.coeffs()})
        if gap.sign()==0:
            active.append((key,sg,I));row=[Cubic(0) for _ in range(20)]
            i,j,k=I
            for u,v,w in [(i,j,k),(j,k,i),(k,i,j)]:
                row[2*u]=sg*(P[v][1]-P[w][1])/2
                row[2*u+1]=sg*(P[w][0]-P[v][0])/2
            J.append(row)
    expected=['ADO','AEO','AEP','AGH','AOP','BCD','BFO','BFP',
              'BGO','BOP','CDE','CFP','EHP','EOP','FGH','FOP']
    require([k for k,_,_ in active]==expected,'active-triangle inventory')
    L=24*g*g-30*g+8;M=12*g*g-27*g+8
    ma=6*g*g-7*g+2;mb=26*g*g-39*g+10
    groups={'L':set(['ADO','BGO','CFP','EHP']),
            'M':set(['AGH','BCD','CDE','FGH'])}
    weights=[L if k in groups['L'] else M if k in groups['M'] else Cubic(1) for k,_,_ in active]
    N=[];mu=[]
    for i,p in enumerate(P):
        for j,c in enumerate(p):
            if c==Cubic(0) or c==Cubic(1):
                row=[Cubic(0) for _ in range(20)];row[2*i+j]=Cubic(1 if c==Cubic(0) else -1)
                N.append(row);mu.append(ma if labels[i] in 'ABEF' else mb)
    require(len(N)==8,'boundary inventory')
    require(all(w.sign()>0 for w in weights+mu),'positive stress')
    B=J+N
    require(all(not any(csum(w*row[i] for w,row in zip(weights+mu,B))) for i in range(20)),'stress identity')
    v=list(map(Cubic,[0,2*(1-g),2*(1-g),0,F(-1,2),0,0,F(1,2),0,-2*(1-g),
                     -2*(1-g),0,F(1,2),0,0,F(-1,2),1,1,-1,-1]))
    require(all(not any(csum(x*y for x,y in zip(row,v))) for row in B),'neutral direction')
    require(all((F(11,8)-x.absolute()).sign()>0 for x in v),'neutral norm')
    # The duals prove |e_i|<=81*epsilon from Je>=-epsilon, Ne>=0,
    # and e_16=0. They also prove the common kernel is exactly span(v).
    from local_dual_data import get_duals
    duals=get_duals()
    seen=set()
    for cert in duals:
        i,sg=cert['coordinate'],cert['sign'];require(0<=i<20 and i!=16 and sg in [-1,1],'dual key')
        require((i,sg) not in seen,'duplicate dual');seen.add((i,sg))
        support=cert['support'];ww=[Cubic(z) for z in cert['weights']]
        require(len(support)==len(set(support))==len(ww),'dual support')
        require(all(0<=j<24 for j in support),'bad dual row')
        require(all(w.sign()>=0 for w in ww),'negative dual coefficient')
        for k in range(20):
            if k==16:continue
            z=csum(w*B[j][k] for w,j in zip(ww,support))+Cubic(sg if k==i else 0)
            require(not any(z),'dual linear identity')
        total=csum(w for w,j in zip(ww,support) if j<16)
        require(total==Cubic(cert['sum']),'saved dual sum mismatch')
        require((81-total).sign()>0,'dual constant exceeds 81')
    require(seen==set((i,sg) for i in range(20) if i!=16 for sg in [-1,1]),'missing duals')
    # Reconstruct the weighted quadratic form, using areas rather than Hessians.
    H=[[Cubic(0) for _ in range(20)] for _ in range(20)]
    for w,(_,sg,I) in zip(weights,active):
        i,j,k=I
        for r,t,coeff in [(i,j,1),(j,k,1),(k,i,1),(i,k,-1),(k,j,-1),(j,i,-1)]:
            x,y=2*r,2*t+1
            H[x][y]+=sg*coeff*w/4;H[y][x]+=sg*coeff*w/4
    Hv=[csum(x*y for x,y in zip(row,v)) for row in H]
    qv=csum(x*y for x,y in zip(v,Hv));c1=2*csum(x.absolute() for x in Hv)
    c2=csum(x.absolute() for row in H for x in row)
    require(qv== -54*g*g+F(195,2)*g-36,'neutral curvature identity')
    require((-F(21,2)-qv).sign()>0,'negative curvature')
    require((32-c1).sign()>0 and (28-c2).sign()>0,'mixed quadratic bounds')
    margin=F(21,2)*F(919,1375)**2-32*F(81,1000)-28*F(81,1000)**2
    require(margin>0,'radius 1/2000 margin')
    require(F(3,2000)+F(2,2000**2)<F(1,25),'oriented areas remain positive')
    # Symmetric-family hand argument: derivative numerator and stationarity.
    require(not any(12*g**3-27*g*g+20*g-4),'defining polynomial')
    require(not any((2-3*g)*a-g*(1-g/2)),'symmetric a parameter')
    require(not any((2-3*g)*2*A-g*(1-g/2)*(1-2*g)),'symmetric objective')
    require((2*A-F(5,54)).sign()>0,'high-t exclusion margin')
    # Quantitative output is rational or algebraic, never floating point.
    (ROOT/'attainment_120.json').write_text(json.dumps(areas,indent=2)+'\n')
    print('CONSTRUCTION_120_TRIANGLES_PASS; 16 exact equalities, 104 strict gaps')
    print('POSITIVE_STRESS_AND_ONE_DIMENSIONAL_KERNEL_PASS')
    print('LOCAL_DUALS_PASS; 38 certificates; transverse constant 81')
    print('UNRESTRICTED_LOCAL_RADIUS_1_OVER_2000_PASS')
    print('local quadratic contradiction margin =',margin)
    print('SYMMETRIC_FAMILY_IDENTITIES_PASS')
    print('NO_UNRESTRICTED_GLOBAL_UPPER_BOUND_CLAIMED')

if __name__=='__main__':main()
