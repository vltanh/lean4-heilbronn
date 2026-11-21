"""Fixed exact identities for N7_OPPOSITE_UPPER_CAPS.md."""
from fractions import Fraction as F

N=4; Z=(0,)*N
def C(x):return {Z:F(x)} if x else {}
def V(i):
    ex=[0]*N;ex[i]=1;return {tuple(ex):F(1)}
def add(*ps):
    out={}
    for p in ps:
        for ex,co in p.items():out[ex]=out.get(ex,F(0))+co
    return {ex:co for ex,co in out.items() if co}
def scale(p,c):return {ex:co*c for ex,co in p.items() if co*c}
def mul(*ps):
    out=C(1)
    for p in ps:
        nxt={}
        for ex,co in out.items():
            for ey,cy in p.items():
                ez=tuple(x+y for x,y in zip(ex,ey));nxt[ez]=nxt.get(ez,F(0))+co*cy
        out={ex:co for ex,co in nxt.items() if co}
    return out
def sub(p,q):return add(p,scale(q,-1))

f,p,q,t=[V(i) for i in range(4)]
Ff=sub(C(1),f);Pp=sub(C(1),p);Qq=sub(C(1),q)
D=mul(f,Ff,Pp,Qq)
source=add(mul(D,p,q),scale(mul(p,q,f,f,t,Qq),-1),
           scale(mul(p,q,Ff,Ff,t,Pp),-1),
           scale(mul(t,f,f,q,Pp,Qq),-1),
           scale(mul(t,Ff,Ff,p,Pp,Qq),-1))
target=add(mul(D,p,q),scale(mul(t,f,f,q,Qq),-1),
           scale(mul(t,Ff,Ff,p,Pp),-1))
assert source==target

u=V(0);u2=mul(u,u);u3=mul(u,u,u)
derivative_num=sub(mul(sub(scale(u,2),scale(u2,3)),add(C(1),u)),sub(u2,u3))
assert derivative_num==mul(scale(u,2),sub(sub(C(1),u),u2))
value_difference=sub(sub(u2,u3),mul(sub(scale(u,5),C(3)),add(C(1),u)))
assert value_difference==scale(mul(add(u,C(3)),sub(add(u2,u),C(1))),-1)
assert 5*55**2<123**2
assert (5*F(123,55)-11)/2==F(1,11)
assert F(93,1000)-F(1,11)==F(23,11000)>0
print('PASS: cleared cap-area substitution identity')
print('PASS: golden-ratio derivative and maximum identities')
print('PASS: complete opposite-upper-cap threshold gap',F(23,11000))
