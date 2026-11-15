#!/usr/bin/env python3
"""Exact candidate and quantitative local upper-bound certificate for square Heilbronn n=9.
Only Python's standard library is used. Arithmetic is in Q(sqrt(65)); no floats.
This proves the LOCAL theorem stated in LOCAL_PROOF.md, not global optimality.
"""
from dataclasses import dataclass
from fractions import Fraction as F
from itertools import combinations, product
import json
from pathlib import Path

@dataclass(frozen=True)
class Q:
    a: F = F(0)
    b: F = F(0)
    def __post_init__(self):
        object.__setattr__(self, 'a', F(self.a))
        object.__setattr__(self, 'b', F(self.b))
    @staticmethod
    def cast(x):
        return x if isinstance(x, Q) else Q(x)
    def __add__(self, x):
        x=Q.cast(x);return Q(self.a+x.a,self.b+x.b)
    __radd__=__add__
    def __neg__(self):return Q(-self.a,-self.b)
    def __sub__(self,x):return self+-Q.cast(x)
    def __rsub__(self,x):return Q.cast(x)+-self
    def __mul__(self,x):
        x=Q.cast(x);return Q(self.a*x.a+65*self.b*x.b,self.a*x.b+self.b*x.a)
    __rmul__=__mul__
    def inv(self):
        d=self.a*self.a-65*self.b*self.b
        if not d:raise ZeroDivisionError
        return Q(self.a/d,-self.b/d)
    def __truediv__(self,x):return self*Q.cast(x).inv()
    def sign(self):
        if not self.a:return (self.b>0)-(self.b<0)
        if not self.b:return (self.a>0)-(self.a<0)
        if (self.a>0)==(self.b>0):return 1 if self.a>0 else -1
        d=self.a*self.a-65*self.b*self.b
        if d==0:raise ArithmeticError('sqrt(65) irrationality invariant failed')
        z=self.a if d>0 else self.b
        return 1 if z>0 else -1
    def __abs__(self):return self if self.sign()>=0 else -self
    def __bool__(self):return bool(self.a or self.b)
    def data(self):return [str(self.a),str(self.b)]

def require(p, message='exact verification failed'):
    if not p: raise ArithmeticError(message)

Z=Q();ONE=Q(1)
P=[(Q(),Q(1,F(-1,10))),
   (Q(F(3,8),F(-1,40)),Q()),
   (Q(1),Q(F(9,16),F(-3,80))),
   (Q(F(3,8),F(-1,40)),Q(1)),
   (Q(),Q(F(5,8),F(1,40))),
   (Q(F(1,4),F(1,20)),Q(F(3,4),F(-1,20))),
   (Q(F(7,16),F(3,80)),Q()),
   (Q(0,F(1,10)),Q(1)),
   (Q(1),Q(F(5,8),F(1,40)))]
A=Q(F(-55,320),F(9,320))

def area(t):
    i,j,k=t;x,y=P[i];u,v=P[j];w,z=P[k]
    return ((u-x)*(z-y)-(v-y)*(w-x))/2

def inverse(m):
    n=len(m)
    rows=[list(row)+[Q(int(i==j)) for j in range(n)] for i,row in enumerate(m)]
    for col in range(n):
        pivot=next((i for i in range(col,n) if rows[i][col]),None)
        if pivot is None:raise ArithmeticError('singular matrix')
        rows[col],rows[pivot]=rows[pivot],rows[col]
        div=rows[col][col].inv()
        rows[col]=[x*div for x in rows[col]]
        for i in range(n):
            if i==col or not rows[i][col]:continue
            mul=rows[i][col]
            rows[i]=[x-mul*y for x,y in zip(rows[i],rows[col])]
    for i in range(n):
        for j in range(n):
            if rows[i][j]!=Q(int(i==j)):raise ArithmeticError('inverse elimination failed')
    return [row[n:] for row in rows]

def main():
    for p in P:
        for c in p:
            require(c.sign()>=0 and (1-c).sign()>=0)
    triples=list(combinations(range(9),3));tight=[]
    for t in triples:
        require((abs(area(t))-A).sign()>=0)
        if abs(area(t))==A:tight.append(t)
    require(len(tight)==11)
    J=[]
    for i,j,k in tight:
        sign=area((i,j,k)).sign();row=[Z]*18
        row[2*i]=sign*(P[j][1]-P[k][1])/2
        row[2*i+1]=sign*(P[k][0]-P[j][0])/2
        row[2*j]=sign*(P[k][1]-P[i][1])/2
        row[2*j+1]=sign*(P[i][0]-P[k][0])/2
        row[2*k]=sign*(P[i][1]-P[j][1])/2
        row[2*k+1]=sign*(P[j][0]-P[i][0])/2
        require((3-sum(abs(x) for x in row)).sign()>=0)
        J.append(row)
    # Inward support rows N d >= 0 for feasible perturbations d.
    N=[]
    for idx,v in enumerate(c for p in P for c in p):
        if v==Z or v==ONE:
            row=[Z]*18;row[idx]=ONE if v==Z else -ONE;N.append(row)
    require(len(N)==8)
    C=[r+[-ONE] for r in J]+[r+[Z] for r in N]
    R=inverse(C)
    # Recheck C*R=I independently of elimination row operations.
    for i in range(19):
        for j in range(19):
            require(sum(C[i][k]*R[k][j] for k in range(19))==Q(int(i==j)))
    weights=[-x for x in R[-1]]
    require(all(x.sign()>0 for x in weights))
    require(sum(weights[:11])==ONE)
    for i in range(18):
        for j in range(19):
            require((85*weights[j]-abs(R[i][j])).sign()>0)
    # Triangle area of perturbations in [-h,h]^2 is bounded by 2h^2.
    corners=list(product((-1,1),repeat=2))
    max_double=0
    for p,q,r in product(corners,repeat=3):
        max_double=max(max_double,abs((q[0]-p[0])*(r[1]-p[1])-(q[1]-p[1])*(r[0]-p[0])))
    require(max_double==4)
    radius=F(1,200)
    require((A-F(1,20)).sign()>0)
    require(F(1,20)>3*radius+2*radius*radius)
    require(F(1,85)-2*radius==F(3,1700))
    require((A-F(27,500)).sign()>0)
    require((A-F(137,2500)).sign()>0)
    require((A-F(2195,40000)).sign()>0)
    # Enclosures consumed by the experimental global checker, checked here without floats.
    path=Path(__file__).with_name('local_templates.json')
    if path.exists():
        obj=json.loads(path.read_text());scale=obj['scale'];templates=obj['floor_templates'];idx=0
        for flip in range(2):
            for rot in range(4):
                for j,(x0,y0) in enumerate(P):
                    x,y=x0,y0
                    if flip:x=1-x
                    for _ in range(rot):x,y=1-y,x
                    for ax,v in enumerate((x,y)):
                        f=templates[idx][j][ax]
                        require((scale*v-f).sign()>=0 and (f+1-scale*v).sign()>0)
                idx+=1
    # Independently verify the canonical coefficients copied into the C++ checker.
    cpp=Path(__file__).with_name('verify_global.cpp')
    if cpp.exists():
        import re
        text=cpp.read_text()
        aa=[int(x) for x in re.search(r"const int aa\[18\]=\{([^}]+)\}",text).group(1).split(',')]
        bb=[int(x) for x in re.search(r"const int bb\[18\]=\{([^}]+)\}",text).group(1).split(',')]
        require(len(aa)==len(bb)==18)
        require([Q(F(x,80),F(y,80)) for x,y in zip(aa,bb)]==[c for p in P for c in p])
    certificate={'status':'PASS','triangles_checked':84,'tight_triangles_1_based':[[i+1 for i in t] for t in tight],
      'matrix_size':19,'inverse_ratio_bound':85,'local_radius':'1/200','linear_loss':'3/1700',
      'area':A.data(),'weights':[x.data() for x in weights]}
    print(json.dumps(certificate,indent=2))
    print('PASS: for h <= 1/200, minimum triangle area <= A - 3*h/1700.')
    print('This is a local theorem, not a global proof.')
if __name__=='__main__':main()
