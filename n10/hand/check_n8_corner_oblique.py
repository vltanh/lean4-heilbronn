#!/usr/bin/env python3
"""Exact transcription check of the seven printed N8 corner-oblique cubic inequalities.

Reads N8_CORNER_OBLIQUE.md, checks the geometric sign catalogue used by every
factor, expands every displayed integer product with Fraction arithmetic,
and recomputes each rational coefficient-box upper bound. No discovery
output, optimizer, adaptive search, or third-party package is imported.
The geometric lemmas supplying the catalogue are proved in the manuscript.
"""
from collections import defaultdict
from fractions import Fraction as F
from itertools import combinations, product
from pathlib import Path
import re

LABELS='ABCDEFGHOP'
S=F(93,1000)
ELL=F(31,251)
C0=F(31657,55000)
LOW=[ELL,ELL,1-C0,ELL,1-C0,1-C0,ELL,1-C0]+[ELL]*4
HIGH=[C0,C0,1-ELL,C0,1-ELL,1-ELL,C0,1-ELL]+[1-ELL]*4

def const(c):
    return {():F(c)} if c else {}

def variable(i):
    return {(i,):F(1)}

def add(*ps):
    out=defaultdict(F)
    for pp in ps:
        for mon,c in pp.items():out[mon]+=c
    return {mon:c for mon,c in out.items() if c}

def scale(pp,c):
    return {mon:v*c for mon,v in pp.items() if v*c}

def sub(pp,qq):
    return add(pp,scale(qq,-1))

def mul(pp,qq):
    out=defaultdict(F)
    for mon,c in pp.items():
        for other,d in qq.items():out[tuple(sorted(mon+other))]+=c*d
    return {mon:c for mon,c in out.items() if c}

Z=[variable(i) for i in range(12)]
a,b,c,d,e,f,g,h,x,y,u,v=Z
ONE=const(1)
POINTS=dict(zip(LABELS,[({},a),(b,{}),(c,{}),(ONE,d),(ONE,e),
                        (f,ONE),(g,ONE),({},h),(x,y),(u,v)]))

def determinant(tri):
    A,B,C=(POINTS[lab] for lab in tri)
    return sub(mul(sub(B[0],A[0]),sub(C[1],A[1])),
               mul(sub(B[1],A[1]),sub(C[0],A[0])))

L=[]
for zz,lo,hi in zip(Z,LOW,HIGH):L.extend([sub(zz,const(lo)),sub(const(hi),zz)])
for zz in [sub(h,a),sub(c,b),sub(e,d),sub(f,g)]:
    L.extend([sub(zz,const(F(5115,31657))),sub(const(F(753,1000)),zz)])
L.extend([add(e,scale(a,-1),const(-F(21,250))),
          add(h,scale(d,-1),const(-F(21,250))),
          add(f,scale(b,-1),const(-F(21,250))),
          add(c,scale(g,-1),const(-F(21,250))),
          add(u,scale(x,-1),const(-2*S)),
          add(v,scale(y,-1),const(-2*S))])
assert len(L)==38

def canonical(tri):
    ii=[LABELS.index(ch) for ch in tri]
    assert len(set(ii))==3
    parity=sum(ii[j]>ii[k] for j in range(3) for k in range(j+1,3))
    return ''.join(LABELS[j] for j in sorted(ii)),(-1)**parity

BASIC={}
def put(tri,sg):
    key,parity=canonical(tri)
    assert BASIC.get(key,sg*parity)==sg*parity
    BASIC[key]=sg*parity

for tri in combinations(LABELS[:8],3):put(''.join(tri),1)
for i in range(8):
    for point in 'OP':put(LABELS[i]+LABELS[(i+1)%8]+point,1)
for arc in ['BCDE','FGHA']:
    for i,j in combinations(arc,2):
        for point in 'OP':put(i+j+point,1)
for i,label in enumerate(LABELS[:8]):put(label+'OP',1 if i in (0,5,6,7) else -1)
for token in ['ADP+','BGP-','CFO+','EHO+','AEO-','AEP+','BFO+','BFP-','ADO-']:
    put(token[:3],1 if token[3]=='+' else -1)

CAPS={'AEF','CGH','ABE','CDG','BEF','DGH','ABF','CDH'}

def signof(tri,known):
    key,parity=canonical(tri)
    return parity*known.get(key,0)

def inside(poly,point,known):
    return all(signof(poly[i]+poly[(i+1)%len(poly)]+point,known)==1
               for i in range(len(poly)))

def polygon_area(poly):
    assert len(poly) in (3,4)
    assert all(ch in LABELS[:8] for ch in poly)
    assert list(poly)==sorted(poly,key=LABELS.index)
    return add(*(determinant(poly[0]+poly[i]+poly[i+1])
                 for i in range(1,len(poly)-1)))


def factor(name,known):
    if re.fullmatch(r'L\d+',name):
        ii=int(name[1:]);assert 0<=ii<38
        return L[ii]
    if name.startswith('T'):
        mm=re.fullmatch(r'T([+-])([ABCDEFGHOP]{3})',name);assert mm,name
        sg=1 if mm.group(1)=='+' else -1;tri=mm.group(2)
        key,parity=canonical(tri);assert key==tri and parity==1
        assert known.get(tri)==sg,('unproved triangle sign',name)
        return add(scale(determinant(tri),sg),const(-S))
    if name.startswith('K_'):
        poly=name[2:];assert poly in CAPS
        return sub(const(F(69,100)),polygon_area(poly))
    if name.startswith('C_'):
        _,poly,number=name.split('_');number=int(number);assert number in (1,2)
        occupants=[p for p in 'OP' if inside(poly,p,known)]
        assert len(occupants)>=number,('unproved polygon occupancy',name,occupants)
        if len(poly)==3:capacity=F(3) if number==1 else F(149,20)
        else:capacity=F(24,5) if number==1 else F(8)
        return sub(polygon_area(poly),const(capacity*S))
    if name in ('S_AE','S_BF'):
        assert inside('ABEF','O',known) and inside('ABEF','P',known)
        assert signof('AEO',known)*signof('AEP',known)==-1
        assert signof('BFO',known)*signof('BFP',known)==-1
        k=sub(e,a);ll=sub(f,b);U=sub(u,x);V=sub(v,y)
        Q0=sub(const(1),mul(k,ll))
        spread=sub(U,mul(ll,V)) if name=='S_BF' else sub(V,mul(k,U))
        return add(Q0,const(-6*S),scale(spread,-1))
    raise AssertionError(('unknown factor',name))


def shift(pp):
    out=defaultdict(F)
    for mon,c in pp.items():
        part={():c}
        for ii in mon:
            nxt=defaultdict(F)
            for powers,d in part.items():
                nxt[powers]+=d*LOW[ii]
                nxt[tuple(sorted(powers+(ii,)))]+=d
            part=nxt
        for powers,d in part.items():out[powers]+=d
    return {mon:c for mon,c in out.items() if c}


def upper_bound(pp):
    pp=shift(pp)
    out=pp.get((),F(0))
    for mon,c in pp.items():
        if mon and c>0:
            term=c
            for ii in mon:term*=HIGH[ii]-LOW[ii]
            out+=term
    return out


def main():
    text=Path(__file__).with_name('N8_CORNER_OBLIQUE.md').read_text()
    sections=re.findall(r'### Row (\d+): ([A-HOP+,-]+)\n(.*?)(?=\n### Row |\n## 7\.)',text,re.S)
    assert len(sections)==7,len(sections)
    catalogue=[];total=0;largest=0
    for expected,(rid,branch,body) in enumerate(sections,1):
        assert int(rid)==expected
        known=BASIC.copy();row={}
        for token in branch.split(','):
            tri,sg=token[:3],1 if token[3]=='+' else -1
            assert known.get(tri,sg)==sg
            known[tri]=sg;row[tri]=sg
        catalogue.append(row)
        block=re.search(r'```text\n(.*?)\n```',body,re.S).group(1)
        entries=[z.strip() for z in re.split(r'[;\n]',block) if z.strip()]
        stated=int(re.search(r'There are (\d+) positive integer entries',body).group(1))
        assert len(entries)==stated
        ww={};cache={}
        for entry in entries:
            coefficient,product_text=entry.split(' ',1);coefficient=int(coefficient)
            assert 0<coefficient<=2549
            largest=max(largest,coefficient);term=const(coefficient)
            for name in product_text.split('*'):
                if name not in cache:cache[name]=factor(name,known)
                term=mul(term,cache[name])
            assert max(map(len,term),default=0)<=3,entry
            ww=add(ww,term)
        bound=upper_bound(ww)
        printed=F(re.search(r'U\(W\)=(-?\d+/\d+)<0',body).group(1))
        assert bound==printed and bound<0,(rid,bound,printed)
        # Check every occupancy explanation against the actual edge signs.
        details=re.findall(r'^\| (C_[A-H_0-9]+) \| (OP|O|P) \| all cyclic polygon edges positive \|$',body,re.M)
        expected_names={name for name in cache if name.startswith('C_')}
        assert {name for name,_ in details}==expected_names
        for name,occupants in details:
            poly=name.split('_')[1]
            assert occupants==''.join(p for p in 'OP' if inside(poly,p,known))
        total+=len(entries)
        print(f'Row {rid}: {len(entries)} entries; exact U(W)={bound}<0')
    # Three remaining oblique signs; each is covered once by the printed tree.
    columns=['BGO','CFP','EHP']
    for values in product([-1,1],repeat=3):
        assignment=dict(zip(columns,values))
        assert sum(all(assignment[k]==v for k,v in row.items()) for row in catalogue)==1
    assert total==1442 and largest==2549
    print('PASS: exhaustive seven-row catalogue; all occupancy and spread signs; 1442 integer entries.')

if __name__=='__main__':
    main()
