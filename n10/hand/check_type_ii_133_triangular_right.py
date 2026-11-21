#!/usr/bin/env python3
"""Replay the printed finite geometry and expand its fixed rational cubics.

Uses only Python's standard library and the adjacent printed Markdown table.
No search, floating point arithmetic, optimization or discovery data is used.
"""
from collections import Counter, defaultdict
from fractions import Fraction as F
from itertools import combinations, permutations
from pathlib import Path
import re

S=F(93,1000); K=F(933,125); J=F(4427,500)
LABELS='DEBHCXYZR'; ANCHORS='DEBHC'
MESH_COST=F(3927,500); CONNECT_COST=F(2427,500)

def canon(word):
    assert len(word)==3 and len(set(word))==3 and set(word)<=set(LABELS),word
    ids=[LABELS.index(ch) for ch in word]
    sign=(-1)**sum(ids[i]>ids[j] for i in range(3) for j in range(i+1,3))
    return ''.join(sorted(word,key=LABELS.index)),sign

def get(known,word):
    key,sign=canon(word);return sign*known.get(key,0)

def put(known,word,sign):
    assert sign in (-1,1)
    key,eps=canon(word);value=eps*sign
    assert key not in known or known[key]==value,('inconsistent sign',word,sign)
    known[key]=value

def inside(known,hull,point):
    if point in hull:return False
    sign=get(known,hull[:3])
    return bool(sign) and all(get(known,a+b+point)==sign for a,b in zip(hull,hull[1:]+hull[:1]))

def convex(known,hull):
    return len(hull)==len(set(hull)) and all(get(known,''.join(hull[i] for i in ids))==1 for ids in combinations(range(len(hull)),3))

def mesh_words(outer,points):
    A,B,C=outer;X,Y,Z=points
    return [A+B+Z,B+C+X,C+A+Y,A+Z+Y,B+X+Z,C+Y+X,Z+X+Y,
            A+Z+X,B+X+Y,C+Y+Z,A+X+Y,B+Y+Z,C+Z+X]

def initial():
    known={}
    for tri in combinations(ANCHORS,3):put(known,''.join(tri),1)
    for point,hull in {'X':'DBC','Y':'DBC','Z':'DBC','R':'BHC'}.items():
        for hh in (ANCHORS,hull):
            for aa,bb in zip(hh,hh[1:]+hh[:1]):put(known,aa+bb+point,1)
    for word in mesh_words('DBC','XYZ'):put(known,word,1)
    for point in 'XYZ':put(known,'B'+point+'R',-1);put(known,'C'+point+'R',1)
    put(known,'ECY',1)
    return known

def patterns(known,outer,points):
    out=[]
    for perm in permutations(points):
        words=mesh_words(outer,perm)
        if any(get(known,w)<0 for w in words):continue
        out.append(dict(canon(w) for w in words))
    return out

def signed(token):
    assert re.fullmatch(r'[+-][A-Z]{3}',token),token
    return token[1:],1 if token[0]=='+' else -1

def replay(known,step):
    if step[0]=='P':
        _,word,target=step;assert len(set(word))==5 and set(word)<=set(LABELS)
        aa,bb,cc,dd,ee=word
        pairs=[(aa+bb+cc,aa+dd+ee,1),(aa+bb+dd,aa+cc+ee,-1),(aa+bb+ee,aa+cc+dd,1)]
        vals=[coef*get(known,u)*get(known,v) for u,v,coef in pairs]
        assert vals.count(0)==1 and len(set(v for v in vals if v))==1,step
        u,v,coef=pairs[vals.index(0)];wanted=-next(vv for vv in vals if vv)
        tri,sg=signed(target);key,eps=canon(tri)
        if key==canon(u)[0]:
            assert not get(known,u) and get(known,v),step
            assert coef*sg*eps*canon(u)[1]*get(known,v)==wanted,step
        else:
            assert key==canon(v)[0] and not get(known,v) and get(known,u),step
            assert coef*sg*eps*canon(v)[1]*get(known,u)==wanted,step
        put(known,tri,sg)
    elif step[0]=='M':
        _,outer,points,target=step
        assert get(known,outer)==1 and len(points)==len(set(points))==3
        assert all(inside(known,outer,p) for p in points),step
        pats=patterns(known,outer,points);tri,sg=signed(target);key,eps=canon(tri)
        assert pats and all(pp.get(key)==eps*sg for pp in pats),step
        put(known,tri,sg)
    else:raise AssertionError(('unknown trace instruction',step))

def exclusion(known,words):
    kind,outer,points=words
    assert len(set(points))==len(points) and all(inside(known,outer,p) for p in points)
    if kind=='four':assert len(points)==4
    elif kind=='nomesh':
        assert len(points)==3 and get(known,outer)==1
        assert not patterns(known,outer,points)
    else:raise AssertionError(words)

def const(c):return {():F(c)} if c else {}
def var(i):return {(i,):F(1)}
def add(*polys):
    out=defaultdict(F)
    for pp in polys:
        for e,c in pp.items():out[e]+=c
    return {e:c for e,c in out.items() if c}
def scale(pp,c):return {e:c*v for e,v in pp.items() if c*v}
def sub(pp,qq):return add(pp,scale(qq,-1))
def mul(pp,qq):
    out=defaultdict(F)
    for e,c in pp.items():
        for f,d in qq.items():out[tuple(sorted(e+f))]+=c*d
    return {e:c for e,c in out.items() if c}
def determinant(a,b,c):return sub(mul(sub(b[0],a[0]),sub(c[1],a[1])),mul(sub(b[1],a[1]),sub(c[0],a[0])))

def box(kind):
    out=[('0.1',str(1-K*S)),('.072','.696'),('.794','1'),('0','.229'),
         ('.306','.714'),('.372','.721'),('.288','.657'),('.730','.907'),
         ('.120','.528'),('.372','.721'),('.286','.907'),('.103','.718')]
    if kind=='E1':
        for i,bb in {0:('.21',str(1-K*S)),1:('.559','.696'),2:('.904','1'),
                     3:('0','.122'),4:('.337','.714'),6:('.298','.657'),
                     8:('.151','.528'),10:('.396','.907'),11:('.117','.679')}.items():out[i]=bb
    elif kind=='E2':out[1]=('.072',str(1-K*S))
    elif kind=='E3':out[1]=('.072',str(1-J*S))
    else:assert kind=='G'
    return [(F(lo),F(hi)) for lo,hi in out]

MESHES={'DBC':'XYZ','DHC':'RYX','DRC':'XYZ','DEC':'XYZ'}
CENTERS={'ZXY':('DBC','XYZ'),'XRY':('DHC','RYX')}

def factors(name,data,known):
    bounds=box(data['box']);V=[var(i) for i in range(12)]
    b,lam,h,k,x,v,u,t,z,w,r,j=V
    pts={'D':({},const(1)),'E':({},lam),'B':(b,{}),'H':(h,k),'C':(const(1),const(1)),
         'X':(x,v),'Y':(u,t),'Z':(z,w),'R':(r,j)}
    def area(word):return determinant(*(pts[ch] for ch in word))
    cache={}
    for i,(lo,hi) in enumerate(bounds):
        cache['L'+str(2*i)]=sub(V[i],const(lo));cache['L'+str(2*i+1)]=sub(const(hi),V[i])
    cache['L24']=add(t,scale(v,-1),const(-2*S));cache['L25']=add(t,scale(w,-1),const(-2*S))
    def need_mesh(outer,points):
        assert get(known,outer)==1 and all(inside(known,outer,p) for p in points),(name,outer,points)
        assert all(get(known,word)==1 for word in mesh_words(outer,points)),(name,outer,points)
    def factor(nm):
        if nm in cache:return cache[nm]
        if nm[0] in '+-':
            match=re.fullmatch(r'([+-])([A-Z]{3})(?:o(.+))?',nm);assert match,nm
            sg=1 if match[1]=='+' else -1;word=match[2];cost=F(match[3]) if match[3] else F(1)
            assert get(known,word)==sg,(name,nm)
            if cost>1 and nm!='+BHCo933/125':
                required={F(3):1,K:2,J:3}[cost]
                witnesses=data['witnesses'][nm]
                assert len(witnesses)==len(set(witnesses))==required,(name,nm,witnesses)
                assert all(inside(known,word,p) for p in witnesses),(name,nm,witnesses)
            elif nm=='+BHCo933/125':assert cost==K
            out=add(scale(area(word),sg),const(-cost*S))
        elif nm.startswith('quad_'):
            _,hull,points=nm.split('_')
            assert len(hull)==4 and convex(known,hull),(name,nm)
            assert len(points)==len(set(points))>=1 and all(inside(known,hull,p) for p in points),(name,nm)
            cost=F(449,1000) if len(points)==1 else 8*S if len(points)==2 else F(93,91)
            out=add(area(hull[:3]),area(hull[0]+hull[2:]),const(-cost))
        elif nm.startswith('ear_'):
            _,outer,ear=nm.split('_');points=MESHES[outer];need_mesh(outer,points)
            assert ear in mesh_words(outer,points)[:3],nm
            out=add(area(outer),scale(area(ear),-1),const(-MESH_COST*S))
        elif nm.startswith('connect_'):
            _,outer,points=nm.split('_');assert MESHES[outer]==points;need_mesh(outer,points)
            out=add(*(area(word) for word in mesh_words(outer,points)[3:6]),const(-CONNECT_COST*S))
        elif nm.startswith('center_'):
            _,word=nm.split('_');outer,points=CENTERS[word];need_mesh(outer,points)
            out=add(const(F(8,5)*S),scale(area(word),-1))
        elif nm=='EBHcap':
            assert data['box'] in ('E1','E2','E3') and data['box']=='E'+name[1]
            cap={'E1':F('.578'),'E2':F('.304'),'E3':F('.187')}[data['box']]
            out=add(const(cap),scale(area('EBH'),-1))
        else:raise AssertionError(('unknown factor',nm))
        cache[nm]=out;return out
    return bounds,factor

def shifted(pp,bounds):
    out=defaultdict(F)
    for e,c in pp.items():
        term={():c}
        for i in e:
            temp=defaultdict(F)
            for ee,cc in term.items():
                temp[ee]+=cc*bounds[i][0];temp[tuple(sorted(ee+(i,)))]+=cc
            term=temp
        for ee,cc in term.items():out[ee]+=cc
    return {e:c for e,c in out.items() if c}

def upper(pp,bounds):
    out=pp.get((),F(0))
    for e,c in pp.items():
        if e and c>0:
            for i in e:c*=bounds[i][1]-bounds[i][0]
            out+=c
    return out

def parse():
    text=Path(__file__).with_name('TYPE_II_133_TRIANGULAR_RIGHT_TABLES.md').read_text()
    prefix,*sections=text.split('## Leaf ')
    splitblock=re.search(r'```text\n(.*?)```',prefix,re.S)[1]
    splits=dict(line.split() for line in splitblock.splitlines())
    leaves={}
    for sec in sections:
        name=sec.splitlines()[0].strip();assert name not in leaves
        kind=re.search(r'Box: `([^`]+)`',sec)[1]
        ass={word:sg for word,sg in map(signed,re.search(r'Assumptions: `([^`]+)`',sec)[1].split())}
        trace=re.search(r'### Sign trace\n\n```text\n(.*?)```',sec,re.S)[1]
        data={'box':kind,'extra':ass,'trace':[line.split() for line in trace.splitlines() if line]}
        if 'Exclusion:' in sec:
            data['bad']=re.search(r'Exclusion: `([^`]+)`',sec)[1].split()
        else:
            wit=re.search(r'### Strengthened triangle witnesses\n\n```text\n(.*?)```',sec,re.S)[1]
            data['witnesses']=dict(line.split() for line in wit.splitlines() if line)
            prod=re.search(r'### Fixed polynomial\n\n```text\n(.*?)```',sec,re.S)[1]
            data['products']=[(int(line.split()[0]),line.split()[1]) for line in prod.splitlines()]
            data['upper']=F(re.search(r'Upper bound: `([^`]+)`',sec)[1])
        leaves[name]=data
    return splits,leaves

def scalar_checks():
    a=K*S
    assert F(433,250)**2<3 and K==4+2*F(433,250)
    assert F(559,250)**2<5 and J==(11+3*F(559,250))/2
    assert F(707,500)**2<2 and 2*(1+F(707,500))*S>F('.449')
    assert (J+2)*S>1 and F('.833')**2<a and F('2.73')**2<K
    cap0=F('.167')**2
    assert cap0==F(27889,10**6)
    assert (S-cap0)/F('.907')==F(65111,907000)>F('.071')
    assert S/(1-F('.071'))>F('.1')
    assert (S-cap0)/F('.9')==F(65111,900000)>F('.072')
    assert F('.304')*(1-a)<S
    assert F('.1')+a>F('.794') and 1-a/F('.9')<F('.229')
    assert S/F('.9')>F('.103') and 1-S*F('2.73')/F('.9')<F('.718')
    assert MESH_COST*S>F('.730') and 1-S==F('.907')
    for b0,lowx,lowu,lowz in [(F('.1'),F('.306'),F('.288'),F('.120')),(F('.21'),F('.337'),F('.298'),F('.151'))]:
        assert 3*S+3*b0*S>lowx and 3*S+b0*S>lowu and S+3*b0*S>lowz
    assert 1-4*S+3*(1-a)*S<F('.714')
    assert 1-4*S+(1-a)*S<F('.657')
    assert 1-6*S+3*(1-a)*S<F('.528')
    assert F('.306')+F('.694')*F('.696')<J*S
    assert (2-F('.559'))*a-1==F(34129,125000000)>0
    assert S/F('.441')>F('.21') and F('.21')+a>F('.904')
    assert 1-a/F('.79')<F('.122') and S/F('.79')>F('.117')
    assert 1-S*F('2.73')/F('.79')<F('.679')
    assert cap0+F('.696')*F('.79')<F('.578')
    assert cap0+(1-a)*F('.9')<F('.304')
    assert cap0+(1-J*S)*F('.9')<F('.187')<3*S
    kap=F(8,5);T=F(442,93)-kap
    assert T*T/3+T-6*kap+3==-F(87029,648675)

def main():
    scalar_checks();splits,leaves=parse();seen=set();counts=Counter();steps=Counter();terms=0
    def visit(name,extra,refined):
        nonlocal terms
        assert name not in seen;seen.add(name)
        if name in splits:
            assert name not in leaves
            tri=splits[name];canon(tri)
            for suffix,sg in [('m',-1),('p',1)]:
                ee=dict(extra);ee[tri]=sg;visit(name+suffix,ee,True)
            return
        assert name in leaves,('unclosed leaf',name)
        data=leaves[name]
        assert data['extra']==extra,(name,'path assumptions',data['extra'],extra)
        assert data['box']==('E'+name[1] if refined else 'G'),(name,'box')
        known=initial()
        for tri,sg in extra.items():put(known,tri,sg)
        for step in data['trace']:replay(known,step);steps[step[0]]+=1
        if 'bad' in data:exclusion(known,data['bad']);counts['geometric']+=1;return
        bounds,factor=factors(name,data,known);total={}
        for weight,product in data['products']:
            assert weight>0;pp=const(weight)
            for atom in product.split('*'):pp=mul(pp,factor(atom))
            assert max(map(len,pp),default=0)<=3,(name,product)
            total=add(total,pp)
        got=upper(shifted(total,bounds),bounds)
        assert got==data['upper'] and got<0,(name,got,data['upper'])
        counts['polynomial']+=1;terms+=len(data['products'])
    for ec in range(1,4):
        for dh in range(4):
            for sg,suffix in [(-1,'m'),(1,'p')]:
                name=f'E{ec}H{dh}{suffix}'
                extra={**{'EC'+ch:1 if i<ec else -1 for i,ch in enumerate('YZX')},
                       **{'DH'+ch:1 if i<dh else -1 for i,ch in enumerate('YXZ')},'DHR':sg}
                if name in splits and ec==3:extra['EHR']=1
                visit(name,extra,name in splits)
    assert seen==set(splits)|set(leaves)
    assert len(splits)==28 and len(leaves)==52 and counts==Counter(polynomial=44,geometric=8)
    assert terms==2194 and steps==Counter(P=877,M=56)
    print('PASS: 24 roots, 28 binary refinements, 52 closed leaves; 44 exact cubics / 2194 positive-integer terms, 8 geometric exclusions; 933 checked geometric deductions; rational boxes and scalar gaps.')

if __name__=='__main__':main()
