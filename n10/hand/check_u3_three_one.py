#!/usr/bin/env python3
"""Check the fixed, printed algebra in U3_THREE_ONE.md with Fraction only.

This optional transcription check reads the twenty Markdown tables,
checks their proved sign catalogue and complete orientation coverage,
expands each product, and recomputes its exact shifted-box upper bound.
The geometric lemmas are proved in the manuscript. No discovery JSON,
optimizer, coordinate search, or external package is used here.
"""
from collections import defaultdict
from fractions import Fraction as F
from itertools import product
from pathlib import Path
import re

S=F(93,1000)
N=12
BOX=[(3*S,1-4*S),(3*S,(1-S)/2),(S,1-6*S),(4*S,1-S),
     (F(149,500),1-4*S),(S,(1-5*S)/2),
     (F(207,1000),1-2*S),(F(114,1000),F(307,1000)),
     (F(79,200),F(1)),(F(51,500),F(307,1000)),
     (F(69,100),F(1)),(F(163,1000),1-S)]
PRIMARY=['BZP','BZQ','BXR','APR','CPR','CQR']
BASIC=[(1,1,-1,-1,1,1),(1,1,-1,-1,1,-1),(1,1,-1,-1,-1,-1),
       (1,1,-1,1,1,1),(1,1,-1,1,1,-1),(1,1,-1,1,-1,-1),
       (1,1,1,1,1,1),(-1,1,-1,1,1,1),(-1,1,-1,1,1,-1),
       (-1,1,1,1,1,1),(-1,-1,-1,1,1,1),(-1,-1,1,1,1,1)]
EXTRAS={0:[(-1,0,0),(1,-1,0),(1,1,0)],1:[(0,0,0)],2:[(0,0,0)],
        3:[(-1,0,0),(1,-1,0),(1,1,0)],4:[(-1,0,0),(1,0,-1),(1,0,1)],
        5:[(0,0,-1),(0,0,1)],6:[(0,0,0)],7:[(0,0,0)],
        8:[(0,0,-1),(0,0,1)],9:[(0,0,0)],10:[(0,0,0)],11:[(0,0,0)]}


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
     'P':(p,q),'Q':(v,j),'R':(l,m)}
L=[]
for zz,(lo,hi) in zip(V,BOX):
    L.extend([sub(zz,const(lo)),sub(const(hi),zz)])
L.extend([
    sub(u,h),
    add(ONE,scale(u,-1),scale(h,-1),const(-S)),
    add(u,scale(z,-1),const(-2*S)),
    add(h,scale(a,-1),const(-2*S)),
    add(w,scale(z,-1),u,h,const(-1-2*S)),
    add(u,h,scale(a,-1),scale(x,-1),const(-2*S)),
    add(p,scale(q,-1),const(-S)),
    add(v,scale(j,-1),const(-S)),
    add(l,scale(m,-1),const(-S)),
    add(v,scale(p,-1),const(-2*S)),
    add(l,m,const(-F(287,250))),
    const(1-S),
    add(u,const(-S)),
    add(h,const(-S)),
    add(w,scale(z,-1),const(-S)),
    add(x,const(-S)),
    add(ONE,scale(a,-1),scale(x,-1),const(-S)),
    add(p,const(-S)),
    add(ONE,scale(q,-1),const(-S)),
    add(v,const(-S)),
    add(ONE,scale(j,-1),const(-S)),
    add(l,const(-S)),
])
assert len(L)==46
H={
    'H1':add(mul(q,sub(v,const(S))),const(-S)),
    'H2':add(mul(j,sub(v,const(S))),const(-S)),
    'H3':add(mul(q,sub(u,const(S))),scale(h,-S)),
    'H4':add(mul(j,sub(u,const(S))),scale(h,-S)),
    'H5':add(mul(q,sub(v,j)),scale(add(ONE,j),-S)),
}
E={
    'E_Pwide':sub(p,const(3*S)),
    'E_Qwide':sub(v,const(F(69,100))),
    'E_Plow':sub(const(F(177,1000)),q),
    'E_Qlow':sub(const(F(177,1000)),j),
    'E_Rwide':sub(l,const(F(823,1000))),
    'E_Rlow':sub(const(1-3*S),m),
}
GLOBAL={}
for token in ['+AYZ','+AYX','-AZX','-BYZ','+BYX','+BZX',
              '-CYZ','-CYX','-CZX','-YZX',
              '-BYP','-BYQ','+BYR','+BZR','-BXP','-BXQ',
              '+BPQ','+BPR','+BQR','-APQ','+AQR','+CPQ',
              '+YPQ','+XPQ','+YPR','+YQR','+XPR','+XQR','+ZPR','+ZQR',
              '-ZXP','-ZXQ','-ZXR']:
    GLOBAL[token[1:]]=1 if token[0]=='+' else -1
for upper in 'YZX':
    for lower in 'PQR':
        GLOBAL['A'+upper+lower]=-1
        GLOBAL['C'+upper+lower]=1


def row_signs(basic,extras):
    signs=dict(GLOBAL)
    signs.update(dict(zip(PRIMARY,BASIC[basic])))

    def force(name,sg):
        assert signs.get(name,sg)==sg, ('contradictory proved signs',name)
        signs[name]=sg

    for lower in 'PQ':
        if signs['BZ'+lower]==-1:
            for name,sg in [('C'+lower+'R',1),('YX'+lower,1),
                            ('YZ'+lower,1),('ZPQ',1)]:
                force(name,sg)
    if signs['BXR']==1:
        for name,sg in [('APR',1),('CPR',1),('CQR',1),('YZR',-1),('YXR',-1)]:
            force(name,sg)
    if signs['APR']==-1:
        for name,sg in [('BZP',1),('BXR',-1),('YZR',1)]:
            force(name,sg)
    for lower in 'PQ':
        if signs['C'+lower+'R']==-1:
            for name,sg in [('BZ'+lower,1),('BXR',-1),('YX'+lower,-1)]:
                force(name,sg)
    for name,sg in zip(['YXP','YXQ','YZR'],extras):
        if sg:
            force(name,sg)
    return signs


def factor(name,signs):
    if re.fullmatch(r'L\d+',name):
        ii=int(name[1:])
        assert 0<=ii<len(L), ('unknown affine factor',name)
        return L[ii]
    if name in H:
        return H[name]
    if name in E:
        conditions={
            'E_Pwide':signs['BZP']==1,
            'E_Qwide':signs['BZQ']==1,
            'E_Plow':signs['BZP']==-1 or signs['CPR']==-1,
            'E_Qlow':signs['BZQ']==-1 or signs['CQR']==-1,
            'E_Rwide':signs['BXR']==1 or signs['APR']==-1,
            'E_Rlow':signs['BXR']==-1,
        }
        assert conditions[name], ('missing conditional factor hypothesis',name)
        return E[name]
    mm=re.fullmatch(r'T([+-])([ABCYZXPQR]{3})',name)
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


def check_basic_cover():
    allowed=set()
    for (zp,zq),xr,apr,(cp,cq) in product(
            [(1,1),(-1,1),(-1,-1)],[-1,1],[-1,1],[(1,1),(1,-1),(-1,-1)]):
        if xr==1 and (apr,cp,cq)!=(1,1,1):
            continue
        if apr==-1 and (zp,xr)!=(1,-1):
            continue
        if cp==-1 and (zp,xr)!=(1,-1):
            continue
        if cq==-1 and (zq,xr)!=(1,-1):
            continue
        allowed.add((zp,zq,xr,apr,cp,cq))
    assert allowed==set(BASIC) and len(BASIC)==12


def main():
    check_basic_cover()
    text=Path(__file__).with_name('U3_THREE_ONE.md').read_text()
    pattern=r'### Row (\d+): basic (\d+); extra \(([+,\-0]+)\)\n(.*?)(?=\n### Row |\n## 11\.)'
    sections=re.findall(pattern,text,re.S)
    assert len(sections)==20, len(sections)
    actual=set()
    total=largest=0
    for expected_id,(rid,bi,sigtext,body) in enumerate(sections,1):
        assert int(rid)==expected_id
        basic=int(bi)
        extra=tuple(1 if cc=='+' else -1 if cc=='-' else 0 for cc in sigtext.split(','))
        assert len(extra)==3 and extra in EXTRAS[basic]
        assert (basic,extra) not in actual
        actual.add((basic,extra))
        signs=row_signs(basic,extra)
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
            assert 1<=coeff<=382
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
        print(f'Row {rid:>2}: basic {basic:>2}, {len(entries):>3} entries, U(W)={bound} < -1/100')
    expected={(ii,ex) for ii in range(12) for ex in EXTRAS[ii]}
    assert actual==expected and len(actual)==20
    assert total==1392 and largest==382
    print('PASS: exhaustive 20-row catalogue; 1392 positive integer entries; maximum 382.')


if __name__=='__main__':
    main()
