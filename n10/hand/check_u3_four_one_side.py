"""Exact transcription checks for the fixed cubic tables in U3_FOUR_ONE_SIDE.md.

Only Fraction arithmetic is used. No solver, search, file generation, or
floating-point feasibility result is a premise of these checks.
"""
from fractions import Fraction as F

N=8
ZERO=(0,)*N
s=F(93,1000)
R=F(31,100)

def const(v):
    v=F(v)
    return {ZERO:v} if v else {}

def add(*polys):
    out={}
    for p in polys:
        for e,c in p.items():out[e]=out.get(e,F(0))+c
    return {e:c for e,c in out.items() if c}

def scale(p,k):
    return {e:c*k for e,c in p.items() if c*k}

def mul(p,q):
    out={}
    for e,c in p.items():
        for f,d in q.items():
            g=tuple(a+b for a,b in zip(e,f))
            out[g]=out.get(g,F(0))+c*d
    return {e:c for e,c in out.items() if c}

def var(i):
    e=[0]*N;e[i]=1
    return {tuple(e):F(1)}

P=[(const(0),const(0))]+[(var(2*i),var(2*i+1)) for i in range(4)]
L=[]
for x,y in P[1:]:
    L.extend([add(x,const(-s)),add(const(1),scale(x,-1)),y,
              add(const(R),scale(y,-1)),add(x,scale(y,-1),const(-s))])
for i in range(1,4):L.append(add(P[i+1][0],scale(P[i][0],-1),const(-s)))

def triangle(i,j,k):
    a,b,c=P[i],P[j],P[k]
    return add(mul(add(b[0],scale(a[0],-1)),add(c[1],scale(a[1],-1))),
               scale(mul(add(b[1],scale(a[1],-1)),add(c[0],scale(a[0],-1))),-1),
               const(-s))

def factor(name,cyclic):
    if '*' in name:
        a,b=name.split('*')
        return mul(factor(a,cyclic),factor(b,cyclic))
    if name.startswith('facet'):
        i=int(name[5:]);assert 0<=i<23
        return L[i]
    if name.startswith('product'):
        out=const(1)
        for i in map(int,name[7:].split('_')):
            assert 0<=i<23
            out=mul(out,L[i])
        return out
    if name[0]=='T':
        i,j,k=map(int,name[1:]);pos={v:a for a,v in enumerate(cyclic)}
        assert 0<(pos[j]-pos[i])%5<(pos[k]-pos[i])%5
        return triangle(i,j,k)
    i,j=map(int,name[1:]);assert 1<=i<j<=4
    xi,yi=P[i];xj,yj=P[j]
    if name[0]=='B':
        return add(mul(xj,add(const(1),scale(yi,-1))),
                   scale(mul(xi,add(const(1),scale(yj,-1))),-1),const(-s))
    assert name[0]=='C'
    return add(mul(add(const(1),scale(xi,-1)),add(const(1),scale(yj,-1))),
               scale(mul(add(const(1),scale(xj,-1)),add(const(1),scale(yi,-1))),-1),
               const(-s))

TABLES=[
    ([1], [0, 2, 3, 4, 1], [
        ('product4_5', 23), ('product14_16', 14), ('product16_17', 16),
        ('product17_22', 17), ('product18_21', 3), ('product5_7_16', 6),
        ('product5_18_21', 79), ('product6_7_10', 43), ('product6_7_15', 9),
        ('product6_12_21', 45), ('product6_12_22', 18), ('product7_10_21', 43),
        ('product7_15_21', 63), ('product10_10_18', 13), ('product10_13_16', 48),
        ('product10_18_21', 79), ('product12_21_21', 44), ('product12_21_22', 44),
        ('C34', 16), ('B12*facet5', 3), ('B12*facet9', 21),
        ('B34*facet16', 1), ('C34*facet10', 29), ('C34*facet15', 1),
        ('T021', 20), ('T234', 9), ('T023*facet6', 57),
        ('T023*facet15', 22), ('T023*facet21', 108), ('T023*facet22', 104),
        ('T024*facet22', 16), ('T021*facet5', 2), ('T021*facet9', 21),
        ('T034*facet16', 16), ('T234*facet5', 79), ('T234*facet10', 63),
        ('T234*facet15', 16),
    ], '-16593/62500'),
    ([2], [0, 1, 3, 4, 2], [
        ('product1_2', 1), ('product4_16', 3), ('product4_22', 14),
        ('product5_16', 5), ('product14_16', 9), ('product17_22', 13),
        ('product18_21', 4), ('product0_6_8', 1), ('product0_10_18', 118),
        ('product0_13_16', 38), ('product0_18_21', 24), ('product1_1_12', 6),
        ('product1_2_10', 12), ('product1_12_20', 6), ('product2_5_21', 1),
        ('product2_15_21', 24), ('product5_8_11', 1), ('C12', 2),
        ('C34', 4), ('C12*facet6', 1), ('C12*facet10', 6),
        ('C12*facet15', 16), ('B23*facet1', 7), ('B23*facet19', 15),
        ('B23*facet21', 1), ('B34*facet16', 7), ('C34*facet0', 17),
        ('C34*facet5', 4), ('C34*facet10', 1), ('C34*facet15', 14),
        ('T342', 19), ('T013*facet1', 12), ('T013*facet6', 40),
        ('T013*facet15', 97), ('T034*facet0', 112), ('T034*facet16', 7),
        ('T032*facet16', 31), ('T032*facet18', 15), ('T042*facet10', 16),
        ('T042*facet20', 29), ('T042*facet21', 31), ('T134*facet5', 40),
        ('T342*facet0', 13), ('T342*facet5', 2), ('T342*facet11', 1),
    ], '-68789/500000'),
    ([3], [0, 1, 2, 4, 3], [
        ('product1_2', 1), ('product5_13', 10), ('product17_21', 3),
        ('product1_1_7', 1), ('product1_2_5', 12), ('product1_7_20', 11),
        ('product1_7_21', 11), ('product2_5_10', 3), ('C23', 1),
        ('B23*facet16', 1), ('C23*facet15', 3), ('B24*facet16', 2),
        ('B34*facet15', 2), ('T243', 4), ('T012*facet1', 12),
        ('T012*facet6', 1), ('T012*facet15', 11), ('T014*facet21', 11),
        ('T024*facet0', 12), ('T024*facet21', 1), ('T023*facet16', 12),
        ('T043*facet5', 12), ('T124*facet5', 1), ('T124*facet10', 11),
        ('T243*facet15', 2),
    ], '-9453/500000'),
    ([1, 2], [0, 3, 4, 2, 1], [
        ('facet4', 3), ('product4_5', 26), ('product4_20', 2),
        ('product7_16', 5), ('product8_22', 13), ('product9_22', 14),
        ('product10_16', 3), ('product14_16', 8), ('product1_4_7', 49),
        ('product1_4_12', 1), ('product1_16_17', 7), ('product1_17_22', 8),
        ('product3_4_6', 49), ('product3_9_20', 27), ('product3_11_16', 7),
        ('product4_7_20', 27), ('product5_7_16', 7), ('product6_8_22', 6),
        ('C34', 9), ('B12*facet8', 24), ('B12*facet20', 2),
        ('C12*facet3', 50), ('B14*facet12', 33), ('B23*facet2', 24),
        ('B23*facet8', 19), ('B23*facet9', 10), ('B23*facet18', 28),
        ('B23*facet19', 10), ('B24*facet12', 5), ('B24*facet22', 2),
        ('B34*facet16', 2), ('T342', 31), ('T421', 8),
        ('T034*facet9', 34), ('T034*facet20', 11), ('T032*facet4', 9),
        ('T032*facet16', 17), ('T042*facet0', 41), ('T042*facet2', 4),
        ('T042*facet21', 12), ('T041*facet21', 22), ('T021*facet1', 80),
        ('T021*facet7', 2), ('T021*facet15', 36), ('T021*facet17', 5),
        ('T021*facet22', 16), ('T342*facet1', 10), ('T342*facet15', 2),
        ('T342*facet20', 13), ('T341*facet9', 4), ('T321*facet4', 1),
        ('T321*facet9', 29), ('T321*facet16', 34), ('T421*facet10', 15),
        ('T421*facet14', 34),
    ], '-84253/200000'),
    ([1, 3], [0, 2, 4, 3, 1], [
        ('facet4', 72), ('product4_9', 3), ('product4_19', 9),
        ('product1_7_10', 36), ('product2_7_16', 19), ('product2_11_16', 52),
        ('product2_11_22', 30), ('product2_13_16', 33), ('product2_16_19', 9),
        ('product2_22_22', 10), ('product3_8_16', 4), ('product3_17_21', 22),
        ('product3_21_21', 84), ('product7_10_10', 32), ('product7_10_15', 20),
        ('product7_10_20', 42), ('product7_20_21', 84), ('product7_21_21', 84),
        ('product8_10_16', 13), ('product8_16_21', 48), ('product10_12_16', 55),
        ('product10_13_20', 39), ('product11_11_13', 26), ('product11_13_22', 10),
        ('product12_16_21', 3), ('product12_21_21', 36), ('product13_18_20', 11),
        ('product13_20_21', 5), ('product17_21_21', 47), ('B12*facet13', 250),
        ('B12*facet17', 27), ('B12*facet21', 84), ('B13*facet7', 111),
        ('C14*facet7', 7), ('B23*facet4', 146), ('B23*facet16', 114),
        ('C23*facet3', 35), ('C23*facet17', 6), ('C23*facet20', 57),
        ('C23*facet21', 117), ('B24*facet16', 2), ('B34*facet1', 9),
        ('B34*facet2', 63), ('B34*facet6', 26), ('B34*facet8', 18),
        ('B34*facet10', 49), ('B34*facet15', 18), ('B34*facet21', 105),
        ('T431', 60), ('T024*facet1', 9), ('T024*facet3', 62),
        ('T024*facet14', 17), ('T024*facet20', 252), ('T024*facet21', 283),
        ('T021*facet18', 4), ('T043*facet4', 40), ('T041*facet22', 15),
        ('T031*facet6', 177), ('T031*facet8', 100), ('T031*facet15', 114),
        ('T031*facet19', 21), ('T031*facet22', 158), ('T243*facet0', 167),
        ('T243*facet2', 68), ('T243*facet6', 18), ('T243*facet19', 2),
        ('T231*facet16', 94), ('T431*facet5', 55), ('T431*facet9', 39),
        ('T431*facet10', 202), ('T431*facet15', 16),
    ], '-4503897/100000000'),
    ([2, 3], [0, 1, 4, 3, 2], [
        ('product2_19', 16), ('product13_13', 8), ('product15_16', 14),
        ('product0_18_19', 40), ('product2_15_19', 36), ('C12', 3),
        ('C12*facet15', 16), ('C12*facet17', 12), ('B23*facet14', 20),
        ('B23*facet16', 1), ('B23*facet17', 5), ('C23*facet16', 3),
        ('C23*facet17', 8), ('B34*facet7', 20), ('B34*facet13', 6),
        ('B34*facet14', 6), ('B34*facet15', 6), ('B34*facet19', 4),
        ('B34*facet21', 20), ('B34*facet22', 6), ('C34*facet13', 8),
        ('T432', 3), ('T014*facet6', 28), ('T014*facet19', 40),
        ('T012*facet19', 12), ('T043*facet5', 10), ('T043*facet16', 24),
        ('T042*facet20', 29), ('T042*facet22', 40), ('T032*facet6', 29),
        ('T032*facet15', 13), ('T032*facet19', 3), ('T432*facet5', 29),
        ('T432*facet14', 20), ('T432*facet15', 36), ('T432*facet19', 4),
    ], '-1202479/25000000'),
]

assert len(TABLES)==6
assert sum(len(case[2]) for case in TABLES)==269
for upper,cyclic,entries,claimed in TABLES:
    lower=[i for i in (1,2,3) if i not in upper]
    assert cyclic==[0]+lower+[4]+list(reversed(upper))
    W=const(0)
    for name,weight in entries:
        assert isinstance(weight,int) and 0<weight<=283
        W=add(W,scale(factor(name,cyclic),weight))
    assert max(map(sum,W))<=3
    bound=W.get(ZERO,F(0))
    for exponent,coefficient in W.items():
        if exponent!=ZERO and coefficient>0:
            bound+=coefficient*R**sum(exponent[1::2])
    assert bound==F(claimed)
    assert bound<-F(1,100)
    print(f"PASS: upper chain {upper}, {len(entries)} fixed terms, bound {bound}")

assert F(17321,10000)**2>3
assert F(14142,10000)**2<2
upper_M=-F(25947,125000)+F(189457,500000)*F(17321,10000)
lower_quad=2*(1+F(14142,10000))*s
assert lower_quad-upper_M==F(1501303,5000000000)>0
assert s*(3-4*s)/(1-2*s)**2==F(61101,165649)>R
assert F(69,100)-s-s/F(69,100)**2>0
print("PASS: exact hull and chain comparison constants")
