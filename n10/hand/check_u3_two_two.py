#!/usr/bin/env python3
"""Check the fixed, printed algebra in U3_TWO_TWO.md with Fraction only.

The geometric lemmas and their signs are proved in the manuscript. This
optional transcription check reads that manuscript's seventeen tables,
checks their sign catalogue and coverage, expands every displayed product,
and recomputes the exact shifted-box upper bounds. No discovery JSON,
optimizer, coordinate search, or external package is used.
"""
from collections import defaultdict
from fractions import Fraction as F
from itertools import product
from pathlib import Path
import re

S=F(93,1000)
N=12
BOX=[(F(3,10),F(241,500)),(F(3,10),F(241,500)),
     (S,F(3,10)),(2*S,1-S),(S,1-2*S),(S,F(3,10)),
     (S,1-S),(F(1,10),F(31,100)),(F(22,25),F(1)),
     (F(0),F(31,100)),(F(69,100),F(1)),(S,1-S)]

def const(c):
    return {():F(c)} if c else {}

def variable(i):
    return {(i,):F(1)}

def add(*ps):
    ans=defaultdict(F)
    for pp in ps:
        for mon,c in pp.items():
            ans[mon]+=c
    return {mon:c for mon,c in ans.items() if c}

def scale(pp,c):
    return {mon:v*c for mon,v in pp.items() if v*c}

def sub(pp,qq):
    return add(pp,scale(qq,-1))

def mul(pp,qq):
    ans=defaultdict(F)
    for mon,c in pp.items():
        for other,d in qq.items():
            ans[tuple(sorted(mon+other))]+=c*d
    return {mon:c for mon,c in ans.items() if c}

def determinant(aa,bb,cc):
    return sub(mul(sub(bb[0],aa[0]),sub(cc[1],aa[1])),
               mul(sub(bb[1],aa[1]),sub(cc[0],aa[0])))

V=[variable(i) for i in range(N)]
u,h,z,w,x,a,p,q,v,j,l,m=V
ONE=const(1)
PTS={'A':({},{}),'B':({},ONE),'C':(ONE,ONE),
     'Y':(u,sub(ONE,h)),'Z':(z,w),'X':(x,sub(ONE,a)),
     'P':(p,q),'R':(v,j),'S':(l,m)}
L=[]
for zz,(lo,hi) in zip(V,BOX):
    L.extend([sub(zz,const(lo)),sub(const(hi),zz)])
L.extend([
    sub(u,h),
    add(h,const(-S),scale(u,-F(69,100))),
    add(ONE,scale(u,-1),scale(h,-1),const(-S)),
    add(u,scale(z,-1),const(-2*S)),
    add(h,scale(a,-1),const(-2*S)),
    add(w,scale(z,-1),u,h,const(-1-2*S)),
    add(u,h,scale(a,-1),scale(x,-1),const(-2*S)),
    add(p,scale(q,-1),const(-S)),
    add(v,scale(j,-1),const(-S)),
    add(l,scale(m,-1),const(-S)),
    add(ONE,scale(p,-1),scale(q,-1)),
    add(v,j,const(-1)),
    add(l,m,const(-1)),
    add(v,scale(p,-1),const(-S)),
    add(m,scale(j,-1),const(-S)),
    add(u,const(-S)),
    add(v,const(-S)),
    add(l,const(-S)),
    add(w,scale(z,-1),const(-S)),
    add(ONE,scale(a,-1),scale(x,-1),const(-S)),
    add(h,const(-S)),
    add(ONE,scale(q,-1),const(-S)),
    add(ONE,scale(j,-1),const(-S)),
])
assert len(L)==47
H1=add(mul(q,sub(v,const(S))),const(-S))
H2=add(mul(q,sub(u,const(S))),scale(h,-S))
ES=sub(l,const(F(823,1000)))

# Signs proved in Sections 1-5, independent of the orientation row.
GLOBAL={}
for token in ['-ABC','+AYZ','+AYX','-AZX','-BYZ','+BYX','+BZX',
              '-CYZ','-CYX','-CZX','-YZX',
              '-BYP','+BYR','+BYS','+BZR','+BZS','-BXP','-BXR',
              '+BPR','+BPS','+BRS','+ARS','+CPR','-CRS','+XRS','+YRS']:
    GLOBAL[token[1:]]=1 if token[0]=='+' else -1
for upper in 'YZX':
    for lower in 'PRS':
        GLOBAL['A'+upper+lower]=-1
        GLOBAL['C'+upper+lower]=1


def factor(name,signs):
    if re.fullmatch(r'L\d+',name):
        ii=int(name[1:])
        assert 0<=ii<len(L), ('unknown affine factor',name)
        return L[ii]
    if name=='H1':
        return H1
    if name=='H2':
        return H2
    if name=='E_S':
        assert signs['BXS']==1, 'E_S requires positive BXS'
        return ES
    mm=re.fullmatch(r'T([+-])([ABCYZXPRS]{3})',name)
    assert mm is not None, ('unknown factor',name)
    sg=1 if mm.group(1)=='+' else -1
    tri=mm.group(2)
    assert signs.get(tri)==sg, ('unproved orientation',name,signs)
    return add(scale(determinant(*(PTS[ii] for ii in tri)),sg),const(-S))


def shifted(pp):
    """Substitute coordinate_i=lower_i+t_i, exactly."""
    ans=defaultdict(F)
    for mon,c in pp.items():
        part={():c}
        for ii in mon:
            nxt=defaultdict(F)
            for em,d in part.items():
                nxt[em]+=d*BOX[ii][0]
                nxt[tuple(sorted(em+(ii,)))]+=d
            part=nxt
        for em,d in part.items():
            ans[em]+=d
    return {em:d for em,d in ans.items() if d}


def upper_bound(pp):
    pp=shifted(pp)
    out=pp.get((),F(0))
    for mon,c in pp.items():
        if mon and c>0:
            term=c
            for ii in mon:
                term*=BOX[ii][1]-BOX[ii][0]
            out+=term
    return out


def main():
    text=Path(__file__).with_name('U3_TWO_TWO.md').read_text()
    pat=r'### Row (\d+): signs \(([+,-]+)\); CPS ([+\-0])\n(.*?)(?=\n### Row |\n## 8\.)'
    sections=re.findall(pat,text,re.S)
    assert len(sections)==17, len(sections)
    actual=set()
    total=0
    largest=0
    for expected_id,(rid,sigtext,cps,body) in enumerate(sections,1):
        assert int(rid)==expected_id
        sig=tuple(1 if cc=='+' else -1 for cc in sigtext.split(','))
        assert len(sig)==4
        csign=0 if cps=='0' else (1 if cps=='+' else -1)
        actual.add(sig+(csign,))
        signs=dict(GLOBAL)
        signs.update(dict(zip(['BZP','BXS','YXP','YZS'],sig)))
        if signs['BZP']==-1:
            signs['CPS']=1
        if signs['BXS']==1:
            signs['APS']=1
        else:
            signs['YXS']=-1
        if csign:
            assert signs.get('CPS',csign)==csign
            signs['CPS']=csign
        code=re.search(r'```text\n(.*?)\n```',body,re.S)
        assert code is not None
        entries=[ee.strip() for ee in re.split(r'[;\n]',code.group(1)) if ee.strip()]
        stated_count=int(re.search(r'There are (\d+) positive integer entries',body).group(1))
        assert len(entries)==stated_count
        ww={}
        for entry in entries:
            mm=re.fullmatch(r'(\d+) ([A-Za-z0-9_+*\-]+)',entry)
            assert mm is not None, entry
            coeff=int(mm.group(1))
            assert 1<=coeff<=284
            largest=max(largest,coeff)
            pp=const(1)
            for name in mm.group(2).split('*'):
                pp=mul(pp,factor(name,signs))
            assert max(map(len,pp),default=0)<=3, ('noncubic entry',entry)
            ww=add(ww,scale(pp,coeff))
        bound=upper_bound(ww)
        printed=F(re.search(r'U\(W\)=(-?\d+/\d+)<-1/100',body).group(1))
        assert bound==printed, (rid,bound,printed)
        assert bound<-F(1,100), (rid,bound)
        total+=len(entries)
        print(f'Row {rid:>2}: {len(entries):>3} entries, U(W)={bound} < -1/100')
    expected={ss+(0,) for ss in product([-1,1],repeat=4)}
    expected.remove((1,-1,-1,-1,0))
    expected.update({(1,-1,-1,-1,-1),(1,-1,-1,-1,1)})
    assert actual==expected and len(actual)==17
    assert total==1463 and largest==284
    print('PASS: exhaustive 17-row catalogue; 1463 positive integer entries; maximum 284.')

if __name__=='__main__':
    main()
