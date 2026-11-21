"""Independent actual-point/Fraction audit of all central N7 E-only leaves.

Only the literal Markdown packet is input. No discovery or author checker
is imported. Polynomial arithmetic, sign closure and scalar replay are fresh.
"""
from fractions import Fraction as F
from itertools import combinations, product
from pathlib import Path
from functools import lru_cache
import json, re, sys

L='ABCDEFGHOP'; ANCHORS='ABCDEFH'; N=13; S=F(93,1000); T=F(149,20)*S
def check(ok, message='invalid argument'):
    if not ok: raise AssertionError(message)
def const(a): return {():F(a)} if a else {}
def var(i): return {(i,):F(1)}
def add(*ps):
    out={}
    for p in ps:
        for m,a in p.items(): out[m]=out.get(m,F())+a
    return {m:a for m,a in out.items() if a}
def sc(p,a): return {m:a*F(c) for m,c in p.items() if a*c}
def mul(p,q):
    out={}
    for m,a in p.items():
        for n,b in q.items():
            k=tuple(sorted(m+n));out[k]=out.get(k,F())+a*b
    return {m:a for m,a in out.items() if a}
def sub(p,q): return add(p,sc(q,-1))
V=list(map(var,range(N))); a,b,c,d,e,f,g,h,z,x,y,u,v=V; O={}; ONE=const(1)
POINTS={'A':(O,a),'B':(b,O),'C':(c,O),'D':(ONE,d),
        'E':(ONE,e),'F':(f,ONE),'G':(g,z),'H':(O,h),'O':(x,y),'P':(u,v)}
def key(w): return ''.join(sorted(w))
def parity(w): return (-1)**sum(w[i]>w[j] for i in range(len(w)) for j in range(i+1,len(w)))
@lru_cache(None)
def det(w):
    p,q,r=map(POINTS.__getitem__,w)
    return sub(mul(sub(q[0],p[0]),sub(r[1],p[1])),mul(sub(q[1],p[1]),sub(r[0],p[0])))
def sg(kn,w): return 0 if len(set(w))<3 else parity(w)*kn.get(key(w),0)
def put(kn,w,v):
    k=key(w);vv=parity(w)*v
    check(k not in kn or kn[k]==vv, 'inconsistent actual sign '+w)
    kn[k]=vv
def inside(kn,hull,p):
    return p not in hull and sg(kn,hull[:3]) and all(sg(kn,hull[i]+hull[(i+1)%len(hull)]+p)==sg(kn,hull[:3]) for i in range(len(hull)))
def convex(kn,hull): return all(sg(kn,''.join(w))==1 for w in combinations(hull,3))
def parsepoly(rows):
    if isinstance(rows,dict):rows=[([] if not m else list(map(int,m.split(','))),v) for m,v in rows.items()]
    out={}
    for m,a in rows:
        k=tuple(m);check(k==tuple(sorted(k)) and k not in out and all(0<=i<N for i in k),'polynomial monomial')
        check(F(a)!=0,'zero polynomial term');out[k]=F(a)
    return out
def evaluate(p,at):
    total=F()
    for m,a in p.items():
        for i in m:a*=at[i]
        total+=a
    return total
def vertices(p,lo,hi):
    ids=sorted({i for m in p for i in m})
    check(all(len(m)==len(set(m)) for m in p),'non-multiaffine vertex bound')
    vals=set()
    for bs in product((0,1),repeat=len(ids)):
        at=lo.copy()
        for i,bit in zip(ids,bs):at[i]=hi[i] if bit else lo[i]
        vals.add(evaluate(p,at))
    return ids,sorted(vals)
def shift(p,lo,hi):
    out={}
    for m,a0 in p.items():
        term=const(a0)
        for i in m:term=mul(term,add(const(lo[i]),sc(V[i],hi[i]-lo[i])))
        out=add(out,term)
    return out
def down(v): return F(v.numerator*10**6//v.denominator,10**6)
def up(v): return -down(-v)

GP=[]
for pivot in L:
    for bb,cc,dd,ee in combinations([t for t in L if t!=pivot],4):
        GP.append([(pivot+bb+cc,pivot+dd+ee,1),
                   (pivot+bb+dd,pivot+cc+ee,-1),(pivot+bb+ee,pivot+cc+dd,1)])
COST=[S,3*S,T,F(4427,500)*S]
NAMES='a b c d e f g h z x y u v'.split()

def geometry(packet,stage,history,stats):
    kn={}
    for tri in combinations(ANCHORS,3):put(kn,''.join(tri),1)
    for p in 'GOP':
        for i,aa in enumerate(ANCHORS):put(kn,aa+ANCHORS[(i+1)%7]+p,1)
        put(kn,'HC'+p,-1 if p=='G' else 1)
    for tri,value in [('CEO',1),('CEP',1),('HOP',-1),('EHP',1),
                      ('ACG',1),('BGH',1),('DGO',-1),('COP',-1),('EOP',1),('FOP',-1)]:put(kn,tri,value)
    # A packet may retain common stages from before its final AEG cut.
    # The unused case premise is introduced only when its context names it.
    for token in packet['given']:
        if key(token[:3]) in stage['known']:put(kn,token[:3],1 if token[-1]=='+' else -1)

    def capacity(poly,source,area_stage):
        check(sg(kn,poly)==1,'nonpositive actual capacity triangle')
        tag=source[0]
        fixed={'central-ACD':('ACD',1),'CEF2-EFG-cap1':('EFG',1),
               'CEF2-AEF-cap2':('AEF',2),'CEF2-ABE-cap':('ABE',1),
               'CEF2-HEF-empty':('HEF',0),'CEF2-AFH-empty':('AFH',0),
               'CEF2-BFH-empty':('BFH',0),'CEF2-ABF-empty':('ABF',0)}
        if tag in fixed:
            hull,cap=fixed[tag];check(key(poly)==key(hull) and area_stage is None);return cap
        if tag=='fixed':check(source[1] in ('BCE','DEF') and key(poly)==source[1] and area_stage is None);return 1
        check(tag=='area' and type(area_stage) is int and area_stage<stage['id'] and area_stage in history)
        _,tri,ref,value=source;check(key(poly)==tri and history[area_stage][ref]==(tri,'hi',F(value)))
        return min(n for n in range(3) if F(value)<COST[n+1])

    def contrary_ray(target,value,hull,cap):
        contrary=dict(kn);put(contrary,target,-value)
        for _ in range(121):
            if sum(bool(inside(contrary,hull,p)) for p in L)>cap:return
            changed=False
            for terms in GP:
                vals=[co*sg(contrary,aa)*sg(contrary,bb) for aa,bb,co in terms]
                nz=[v for v in vals if v]
                if len(nz)==3 and len(set(nz))==1:return
                if len(nz)!=2 or len(set(nz))!=1:continue
                aa,bb,co=terms[vals.index(0)]
                if not sg(contrary,aa) and sg(contrary,bb):put(contrary,aa,-nz[0]*co*sg(contrary,bb));changed=True
                elif sg(contrary,aa) and not sg(contrary,bb):put(contrary,bb,-nz[0]*co*sg(contrary,aa));changed=True
            check(changed,'unproved capacity ray consequence')
        raise AssertionError('capacity ray did not terminate')

    for row in stage['trace']:
        target=row['target'];value=row['sign'];rule=row['rule'];kind=rule[0]
        check(not sg(kn,target) and value in (-1,1) and all(sg(kn,t) for t in row['deps']))
        if kind=='plu':
            pivot,bb,cc,dd,ee=rule[1];terms=[(pivot+bb+cc,pivot+dd+ee,1),
                (pivot+bb+dd,pivot+cc+ee,-1),(pivot+bb+ee,pivot+cc+dd,1)]
            vals=[co*sg(kn,aa)*sg(kn,bb) for aa,bb,co in terms];nz=[v for v in vals if v]
            check(len(nz)==2 and nz[0]==nz[1] and row['area_stage'] is None)
            aa,bb,co=terms[vals.index(0)];missing=aa if not sg(kn,aa) else bb;known=sg(kn,bb) if missing==aa else sg(kn,aa)
            check(key(missing)==target and value*parity(missing)==-nz[0]*co*known)
        elif kind=='cap':
            _,hull,pts,point,source=rule;cap=capacity(hull,source,row['area_stage'])
            check(len(pts)==cap and len(set(pts))==cap and all(inside(kn,hull,p) for p in pts) and point not in hull and point not in pts)
            inward=sg(kn,hull);tests=[hull[i]+hull[(i+1)%3]+point for i in range(3)]
            check(sum(sg(kn,t)==inward for t in tests)==2);missing=next(t for t in tests if sg(kn,t)!=inward)
            check(not sg(kn,missing) and key(missing)==target and value*parity(missing)==-inward)
        elif kind=='ray':
            _,hull,pair,order,source=rule;cap=capacity(hull,source,row['area_stage'])
            check(cap==1 and set(order)==set(hull) and len(pair)==2 and len(set(pair))==2 and set(pair)<=set(L)-set(hull) and sg(kn,order)==1)
            ii,jj,kk=order;uu,vv=pair
            check(all(sg(kn,edge+pt)==1 for edge in (jj+kk,kk+ii) for pt in pair))
            turn=sg(kn,ii+pair);check(turn!=0);missing=ii+jj+(vv if turn<0 else uu)
            check(key(missing)==target and value*parity(missing)==-1,'wrong capacity ray witness')
            check(not add(sc(mul(det(ii+kk+uu),det(ii+jj+vv)),-1),mul(det(ii+kk+vv),det(ii+jj+uu)),sc(mul(det(order),det(ii+pair)),-1)))
            contrary_ray(target,value,hull,cap)
        else:
            check(row['area_stage'] is None and all(inside(kn,'CEF',p) for p in 'OP'))
            check(sg(kn,'COP')==-1 and sg(kn,'EOP')==1 and sg(kn,'FOP')==-1)
            # These are the separately accepted geometric lemmas in
            # N7_CENTRAL_COMPLETION and E_ONLY Sections 4--7.
            if kind=='CEF2-AEF2':check(target=='AEG' and value==-1 and sg(kn,'AGO')==sg(kn,'AGP')==1)
            elif kind=='CEF2-E-only-AEP-transfer':check(target=='AEP' and value==-1)
            elif kind=='CEF2-E-only-ABEF-quad-transfer':check(target=='BEP' and value==-1)
            elif kind=='CEF2-E-only-AE-transfer':check(target=='AEO' and value==1 and sg(kn,'AEG')==-1)
            else:raise AssertionError(kind)
        put(kn,target,value);stats['geometry']+=1
    check(kn==stage['known'],('wrong complete actual-sign context',packet['id'],stage['id'],{t:v for t,v in stage['known'].items() if kn.get(t)!=v},{t:v for t,v in kn.items() if stage['known'].get(t)!=v}))
    return kn

def audit_area_linear(packet,relations,kn,records,stats):
    def endpoint(obj,triangle=None,side=None):
        tri=obj['triangle'];direction=obj['side'];value=F(obj['value'])
        check(triangle is None or tri==triangle);check(side is None or direction==side)
        check(records[obj['ref']]==(tri,direction,value),'unavailable affine source');return value
    def area(tri):check(sg(kn,tri));return sc(det(tri),sg(kn,tri))
    def plus_coeff(*maps):
        out={}
        for co in maps:
            for tri,value in co.items():out[tri]=out.get(tri,F())+value
        return {t:v for t,v in out.items() if v}
    def scaled(co,k):return {t:v*k for t,v in co.items() if v*k}
    def product_envelope(X,Y,kind,choice,bounds):
        check(kind in ('upper','lower') and choice in (0,1))
        sides=(('lo','lo') if choice==0 else ('hi','hi')) if kind=='lower' else (('hi','lo') if choice==0 else ('lo','hi'))
        check(len(bounds)==2);xx=endpoint(bounds[0],X,sides[0]);yy=endpoint(bounds[1],Y,sides[1])
        return plus_coeff({Y:xx},{X:yy}),-xx*yy
    factors={}
    for row in packet['factors']:
        index=row['index'];why=row['origin'];kind=why['kind'];coeff={};constant=F()
        if kind=='fan':
            rr=relations[str(why['relation'])]['row'];check(rr[0]=='fan');direction=why['direction'];check(direction in (-1,1))
            coeff=plus_coeff({rr[1]:F(direction)},*[{t:F(-direction)} for t in rr[2:]])
        elif kind=='four_point':
            aa,bb,cc,dd=why['vertices'];direction=why['direction'];check(len(set((aa,bb,cc,dd)))==4 and direction in (-1,1))
            coeff=plus_coeff(*[{key(t):F(sign*direction*sg(kn,t))} for t,sign in [(aa+bb+cc,1),(aa+cc+dd,1),(aa+bb+dd,-1),(bb+cc+dd,-1)]])
            check(all(sg(kn,t) for t in (aa+bb+cc,aa+cc+dd,aa+bb+dd,bb+cc+dd)) and not add(*(sc(area(t),v) for t,v in coeff.items())))
        elif kind=='linear':
            rr=relations[str(why['relation'])]['row'];check(rr[0]=='linear');coeff={t:F(v) for t,v in rr[1].items()};constant=-F(rr[2])
        elif kind=='product_linear_envelope':
            rr=relations[str(why['relation'])]['row'];orientation=why['orientation'];check(orientation in (-1,1))
            if rr[0]=='plu':terms=[[1,rr[1],rr[2]],[-1,rr[3],rr[4]],[-1,rr[5],rr[6]]]
            else:check(rr[0]=='balance');terms=rr[1]
            check(len(terms)==len(why['products']))
            for (sign0,X,Y),piece in zip(terms,why['products']):
                sign=sign0*orientation;check(piece['sign']==sign and piece['X']==X and piece['Y']==Y and piece['type']==('upper' if sign>0 else 'lower'))
                co,c0=product_envelope(X,Y,piece['type'],piece['choice'],piece['bounds']);coeff=plus_coeff(coeff,scaled(co,sign));constant+=sign*c0
        elif kind=='nested_fan_product':
            check(why['outer']=='CEF' and why['first']=='O' and why['second']=='P' and why['line_sign']==-1)
            check(inside(kn,'CEF','O') and inside(kn,'CEO','P') and sg(kn,'FOP')==-1)
            TT,SS,face,beta,gamma,delta=[why[k] for k in ('T','S','face','beta','gamma','d')]
            check((TT,SS,face,beta,gamma,delta)==('CEO','CEF','CFO','COP','CEP','FOP'))
            check(mul(area(TT),area(face))==add(mul(area(delta),area(TT)),mul(area(beta),sub(area(SS),area(TT))),mul(area(gamma),area(face))))
            check(sub(area(SS),area(TT))==add(area('CFO'),area('EFO')))
            check(len(why['lower'])==3);ld,lb,lg=[endpoint(obj,t,'lo') for obj,t in zip(why['lower'],(delta,beta,gamma))];check(min(ld,lb,lg)>0)
            env=why['envelope'];check(env['type']=='upper');coeff,constant=product_envelope(TT,face,'upper',env['choice'],env['bounds'])
            coeff=plus_coeff(coeff,{TT:lb-ld,SS:-lb,face:-lg})
        else:raise AssertionError(kind)
        check(index not in factors and coeff=={t:F(v) for t,v in row['coefficients'].items()} and constant==F(row['constant']),'wrong affine-area factor')
        factors[index]=(coeff,constant)
    total={};constant=F();used=set()
    for index,weight0 in packet['weights']:
        weight=int(weight0);check(str(weight)==weight0 and weight>0 and index in factors and index not in used);used.add(index)
        co,c0=factors[index];total=plus_coeff(total,scaled(co,weight));constant+=weight*c0;stats['linear_terms']+=1
    check(used==set(factors) and total=={t:F(v) for t,v in packet['sum']['coefficients'].items()} and constant==F(packet['sum']['constant']))
    check(set(packet['box'])==set(total),'incomplete affine endpoint table')
    upper=constant
    for tri,co in total.items():
        bounds=packet['box'][tri];lo0=endpoint(bounds['lo'],tri,'lo');hi0=endpoint(bounds['hi'],tri,'hi');check(lo0<=hi0)
        upper+=co*(hi0 if co>0 else lo0)
    check(upper==F(packet['upper']) and upper<0,'affine-area maximum not negative')


def audit(packets,verbose=True,complete=True):
    expected_cases={(cell,tuple([a0,b0,c0]+extra)) for cell in ('CA','CB')
              for a0,b0,c0 in [('AGO-','AGP-','DGP-'),('AGO-','AGP-','DGP+'),
                               ('AGO+','AGP-','DGP-'),('AGO+','AGP-','DGP+'),('AGO+','AGP+','DGP-')]
              for extra in ([['AEG-'],['AEG+']] if (a0,b0,c0)==('AGO+','AGP-','DGP+') else [[]])}
    seen=set();stats={k:0 for k in ('leaves','geometry','stages','initial','updates','relations','factors','coordinate','lines','products','linear_terms','vertex_values')}
    for packet in packets:
        cell=packet['cell'];case=(cell,tuple(packet['given']));check(case in expected_cases and case not in seen,'duplicate or unexpected E-only leaf');seen.add(case)
        low=['139/1000','108/1000','541/1000','120/1000','57/100','108/1000','118/1000','613/1000','139/1000'] if cell=='CA' else ['122/1000','123/1000','541/1000','122/1000','57/100','123/1000','123/1000','613/1000','134/1000']
        high=['685/1000','279/1000','883/1000','705/1000','907/1000','279/1000','685/1000','1','773/1000' if cell=='CA' else '775/1000']
        low+=['108/1000','120/1000']*2 if cell=='CA' else ['7347/69700','122/1000']*2
        high+=['883/1000','907/1000']*2
        expected_box=(list(map(F,low)),list(map(F,high)));history={};stage_records={};physical_by_stage={};boxes={};stage_relations={}
        for stage in packet['stages']:
            sid=stage['id'];check(sid==len(history));lo=list(map(F,stage['initial_box']['low']));hi=list(map(F,stage['initial_box']['high']));check((lo,hi)==expected_box,'unproved stage box')
            kn=geometry(packet,stage,history,stats)
            def area(w):check(sg(kn,w),'unknown signed area '+w);return sc(det(w),sg(kn,w))
            records={}
            def ref(name,w,side,value):
                check(name in records and records[name]==(key(w),side,F(value)),'unavailable immutable source '+name);return F(value)
            for name,row in stage['initial'].items():
                tri=row['triangle'];side=row['side'];value=F(row['value']);wit=row['witness'];kind=wit['kind'];check(tri==key(tri) and sg(kn,tri) and side in ('lo','hi') and name not in records)
                if kind=='occupants':
                    hull=wit['triangle'];pts=wit['points'];check(key(hull)==tri and len(set(pts))==len(pts) and all(inside(kn,hull,p) for p in pts));check(side=='lo' and value==COST[len(pts)])
                elif kind=='vertices':
                    check(side=='hi' and wit['cell']==cell and key(wit['signed'])==tri and sg(kn,wit['signed'])==1)
                    ids,vals=vertices(det(wit['signed']),lo,hi);used=sorted({i for pt in wit['signed'] for coord in POINTS[pt] for mon in coord for i in mon})
                    check(set(ids)<=set(used) and used==wit['used'] and vals==list(map(F,wit['values'])) and value==min(F(1),max(vals)),'incomplete scalar endpoint maximum');stats['vertex_values']+=len(vals)
                elif kind=='cap':
                    hull=wit['cap'];cost={'ABC':F(403,1000),'ABH':F(403,1000),'BCD':F(357,1000),'CDE':F(357,1000),'BCE':T,'DEF':T,'EFG':T,'ABF':3*S,'AEF':F(203613,250000) if cell=='CA' else F(51431,62500)}[hull]
                    check(side=='hi' and value==F(wit['value'])==cost and all(pt in hull or inside(kn,hull,pt) for pt in tri))
                elif kind=='central_ACD_cap':check(tri=='ACD' and side=='hi' and value==F(27,40))
                else:raise AssertionError(kind)
                records[name]=(tri,side,value);stats['initial']+=1
            validated=set()
            def relation(rid):
                rid=str(rid)
                data=stage['relations'][rid];row=data['row'];wit=data['witness'];kind=wit['kind']
                if rid in validated:return row
                if kind=='fan':
                    h0=wit['outer'];point=wit['point'];check(inside(kn,h0,point))
                    check(row==['fan',key(h0),*[key(h0[i]+h0[(i+1)%3]+point) for i in range(3)]])
                    check(area(h0)==add(*(area(w) for w in row[2:])))
                elif kind=='plu':
                    p0,b0,c0,d0,e0=wit['word'];terms=[(p0+b0+c0,p0+d0+e0,1),(p0+b0+d0,p0+c0+e0,-1),(p0+b0+e0,p0+c0+d0,1)]
                    vals=[co*sg(kn,x)*sg(kn,y) for x,y,co in terms];check(0 not in vals and len(set(vals))==2)
                    odd=next(i for i,v in enumerate(vals) if vals.count(v)==1)
                    check(row[0]=='plu' and sorted(row[1:3])==sorted(map(key,terms[odd][:2])) and sorted(sorted(row[i:i+2]) for i in (3,5))==sorted(sorted(map(key,t[:2])) for j,t in enumerate(terms) if j!=odd))
                    check(mul(area(row[1]),area(row[2]))==add(mul(area(row[3]),area(row[4])),mul(area(row[5]),area(row[6]))))
                elif kind=='quad':
                    hull=wit['poly'];pts=wit['occupants'];check(convex(kn,hull) and 1<=len(pts)<=3 and len(set(pts))==len(pts) and all(inside(kn,hull,pt) for pt in pts))
                    check(row[:3]==['quad',key(hull[:3]),key(hull[0]+hull[2:])] and F(row[3])==[None,F(449,1000),8*S,F(93,91)][len(pts)])
                elif kind in ('five_support','quad_support'):
                    hull=wit['poly'];check(convex(kn,hull))
                    if kind=='five_support':
                        aa,bb,cc,dd,ee=hull;expected=list(map(key,[aa+bb+ee,aa+dd+ee,aa+bb+dd]));rate=F(11)
                    else:
                        aa,bb,cc,dd=hull;pts=wit['occupants'];check(1<=len(pts)<=2 and len(set(pts))==len(pts) and all(inside(kn,hull,pt) for pt in pts))
                        counts=tuple(sorted(sum(bool(inside(kn,tr,pt)) for pt in pts) for tr in (aa+cc+dd,bb+cc+dd)))
                        rates={(0,0):F(29,5),(0,1):F(149,20),(1,1):F(12)} if len(pts)==1 else {(0,0):F(1142,125),(0,1):F(1142,125),(0,2):F(139,10),(1,1):F(12),(1,2):F(199,10),(2,2):F(149,5)}
                        rate=rates[counts]
                        if len(pts)==2 and all(inside(kn,aa+bb+cc,pt) and inside(kn,aa+bb+dd,pt) for pt in pts):rate=max(rate,F(299,31))
                        check(F(wit['rate'])==rate);expected=list(map(key,[aa+bb+dd,aa+bb+cc,aa+cc+dd]))
                    check(row[:4]==['support',*expected] and F(row[4])==rate*S)
                elif kind=='six_label':
                    aa,bb,cc=wit['outer'];point=wit['point'];line=wit['line'];check(len(set(wit['outer']+point+line))==6)
                    raw=[(aa+bb+cc,line+point,1),(point+bb+cc,line+aa,-1),(aa+point+cc,line+bb,-1),(aa+bb+point,line+cc,-1)]
                    expected=[[co*sg(kn,x)*sg(kn,y),key(x),key(y)] for x,y,co in raw]
                    actual=sorted((co,*sorted((x,y))) for co,x,y in row[1])
                    check(row[0]=='balance' and any(actual==sorted((orient*co,*sorted((x,y))) for co,x,y in expected) for orient in (-1,1)) and all(x[0] for x in expected));check(not add(*(sc(mul(area(x),area(y)),co) for co,x,y in row[1])))
                elif kind=='quad_container':
                    hull=wit['poly'];container=wit['container'];check(convex(kn,hull) and set(hull)==set(container) and container in ('HABC','HCEF','ABEF'))
                    cap=hi[7]*hi[2]-lo[0]*lo[1] if container=='HABC' else F(1)
                    check(F(wit['cap'])==cap)
                    actual=add(area(hull[:3]),area(hull[0]+hull[2:]))
                    expected={'HABC':sub(mul(h,c),mul(a,b)), 'HCEF':sub(ONE,mul(sub(h,e),sub(c,f))), 'ABEF':sub(ONE,mul(sub(e,a),sub(f,b)))}[container]
                    check(actual==expected)
                    check(row[0]=='linear' and {w:F(v) for w,v in row[1].items()}=={key(hull[:3]):F(-1),key(hull[0]+hull[2:]):F(-1)} and F(row[2])==-cap)
                elif kind=='spread':
                    hull=wit['poly'];pair=wit['pair'];diagonal=wit['diagonal'];check(convex(kn,hull) and len(set(pair))==2 and all(inside(kn,hull,pt) for pt in pair))
                    check(diagonal in (hull[0]+hull[2],hull[1]+hull[3]) and all(sg(kn,line+pair[0])*sg(kn,line+pair[1])==-1 for line in (hull[0]+hull[2],hull[1]+hull[3])))
                    check(F(wit['rate'])==F(29,5) and wit['container'] is None)
                    coeff={key(hull[:3]):F(1),key(hull[0]+hull[2:]):F(1)}
                    for point in pair:
                        tri=key(diagonal+point);coeff[tri]=coeff.get(tri,F())-1
                    check(row[0]=='linear' and {t:F(co) for t,co in row[1].items()}==coeff and F(row[2])==F(29,5)*S)
                elif kind=='bary_sign':
                    hull=wit['outer'];point=wit['point'];line=wit['line'];check(inside(kn,hull,point) and sg(kn,hull)==1)
                    outer=wit['outer_upper'];check(outer['triangle']==key(hull));cap=ref(outer['ref'],key(hull),'hi',outer['value']);check(cap>0)
                    floors=[]
                    for i,rr in enumerate(wit['fan_lower']):
                        tri=key(hull[(i+1)%3]+hull[(i+2)%3]+point);check(rr['triangle']==tri);floors.append(ref(rr['ref'],tri,'lo',rr['value']))
                    remain=cap-sum(floors);check(remain==F(wit['residual']) and remain>=0 and all(x>0 for x in floors))
                    coeff={}
                    def coef(w,v):
                        if len(set(w))==3:coeff[key(w)]=coeff.get(key(w),F())+v*sg(kn,w)
                    upper=wit['side']=='upper';check(wit['side'] in ('upper','lower'))
                    for i,vertex in enumerate(hull):
                        sign=sg(kn,line+vertex);v=floors[i]+(remain if sign==(1 if upper else -1) else 0)
                        check(vertex in line or sign!=0,'unknown barycentric vertex test')
                        coef(line+vertex,v if upper else -v)
                    coef(line+point,-cap if upper else cap)
                    coeff={w:v for w,v in coeff.items() if v};check(row[0]=='linear' and {w:F(v) for w,v in row[1].items()}==coeff and F(row[2])==0,'barycentric sign inequality')
                else:raise AssertionError(kind)
                validated.add(rid);stats['relations']+=1;return row
            for rr in stage['updates']:
                row=relation(rr['relation']);kind=row[0];w=rr['triangle'];side=rr['side'];rule=rr['rule'];refs=[records[x] for x in rr['sources']];vals=[v for _,_,v in refs]
                expected=[]
                def need(items):check([(t,d0) for t,d0,_ in refs]==items,'wrong immutable scalar sources')
                other_side='hi' if side=='lo' else 'lo'
                if kind=='fan':
                    outer=row[1];parts=row[2:]
                    if w==outer:need([(t,side) for t in parts]);raw=sum(vals);check(rule==('sum' if side=='lo' else 'upper_sum'))
                    else:
                        check(w in parts);others=parts.copy();others.remove(w);need([(outer,side)]+[(t,other_side) for t in others]);raw=vals[0]-sum(vals[1:]);check(rule==('lower_sub' if side=='lo' else 'sub'))
                elif kind=='plu':
                    x,y,u,v,w0,z0=row[1:]
                    if w in (x,y):
                        paired=y if w==x else x;need([(t,side) for t in (u,v,w0,z0)]+[(paired,other_side)]);check(vals[4]>0);raw=(vals[0]*vals[1]+vals[2]*vals[3])/vals[4];check(rule==('sumlo' if side=='lo' else 'sumhi'))
                    else:
                        opts=[(u,v,w0,z0),(v,u,w0,z0),(w0,z0,u,v),(z0,w0,u,v)];target,paired,aa,bb=next(o for o in opts if o[0]==w)
                        need([(x,side),(y,side),(aa,other_side),(bb,other_side),(paired,other_side)]);check(vals[4]>0);raw=(vals[0]*vals[1]-vals[2]*vals[3])/vals[4]
                        if side=='hi':raw=max(F(),raw)
                        check(rule==('diff' if side=='lo' else 'diffhi'))
                elif kind=='balance':
                    terms=row[1];matches=[(i,t) for i,t in enumerate(terms) if w in t[1:]];check(len(matches)==1);idx,(sign,x,y)=matches[0];paired=y if w==x else x
                    others=[t for i,t in enumerate(terms) if i!=idx]
                    need([(q,side if t[0]!=sign else other_side) for t in others for q in t[1:]]+[(paired,other_side)])
                    numer=sum((1 if term[0]!=sign else -1)*vals[2*i]*vals[2*i+1] for i,term in enumerate(others));check(vals[-1]>0 and (side=='hi' or numer>=0));raw=numer/vals[-1]
                    if side=='hi':raw=max(F(),raw)
                    check(rule=='balance_'+side)
                elif kind=='quad':
                    aa,bb,cost=row[1:];check(w in (aa,bb) and side=='lo');need([(bb if w==aa else aa,'hi')]);raw=F(cost)-vals[0];check(rule=='quad')
                elif kind=='support':
                    x,y,z0,k0=row[1:];k=F(k0)
                    if w==y:need([(x,'lo'),(z0,'hi')]);check(side=='lo' and vals[0]>0);raw=k*(1-vals[1]/vals[0]);check(rule=='support_y')
                    elif w==z0:need([(x,'lo'),(y,'hi')]);check(side=='lo' and vals[0]>0 and vals[1]<k);raw=vals[0]*(1-vals[1]/k);check(rule=='support_z')
                    else:check(w==x and side=='hi');need([(z0,'hi'),(y,'hi')]);check(vals[1]<k);raw=k*vals[0]/(k-vals[1]);check(rule=='support_x')
                else:
                    check(kind=='linear' and rule=='linear');coeff={t:F(v) for t,v in row[1].items()};check(w in coeff and coeff[w]!=0);others=sorted(t for t in coeff if t!=w)
                    need([(t,'hi' if coeff[t]>0 else 'lo') for t in others]);raw=(F(row[2])-sum(coeff[t]*v for t,v in zip(others,vals)))/coeff[w];check(side==('lo' if coeff[w]>0 else 'hi'))
                value=down(raw) if side=='lo' else up(raw);check(value>0 and value==F(rr['value']),'wrong exact scalar result');check(rr['id'] not in records,'reused bound id');records[rr['id']]=(w,side,value);stats['updates']+=1

            for rid in stage['relations']:relation(rid)
            history[sid]=dict(records);stage_records[sid]=dict(records);stage_relations[sid]=stage['relations']
            atoms={};physical={}
            pa,pb,pc,pd,pe,pf,pg,ph,pz,px,py,pu,pv=V
            for number,row in stage['physical'].items():
                why=row['why'];kind=why['kind'];name=row['name']
                if kind=='area':
                    tri=why['triangle'];side=why['side'];value=ref(why['reference'],tri,side,why['value']);expected=add(area(tri),const(-value)) if side=='lo' else add(const(value),sc(area(tri),-1))
                elif kind=='setup':
                    expected={
                        'EL':add(mul(ph,pc),const(-F(2911,500)*S)),
                        'Central_z':add(mul(mul(pc,sub(ph,pa)),pz),sc(add(ph,pa),-S)),
                        'Gsum':add(const(F(790,883)),sc(pg,-1),sc(pz,-1)),
                        'overlap_ae':sub(pe,pa),'overlap_bf':sub(pf,pb),'overlap_eh':sub(ph,pe),'overlap_fc':sub(pc,pf),
                        'span_AH':add(ph,sc(pa,-1),const(-S)),'span_DE':add(pe,sc(pd,-1),const(-S)),
                        'span_BC':add(pc,sc(pb,-1),const(-F(117,1000))),
                        'span_BC_hi':add(pb,sc(pc,-1),const(F(79,100))),
                        'span_AH_hi':add(pa,sc(ph,-1),const(F(697,790))),
                        'span_DE_hi':add(pd,sc(pe,-1),const(F(697,790)))}[why['name']]
                elif kind=='central_order':
                    check(why['cell']==cell);expected=sub(mul(pa,pc),mul(pb,ph)) if cell=='CA' else sub(mul(pb,ph),mul(pa,pc))
                elif kind=='central_endpoint_tangent':
                    check(why['cell']==cell);tt=F(why['t'])
                    expected=add(mul(mul(pc,pa),ph),sc(mul(pc,pa),-2*tt),sc(pc,tt*tt),sc(add(ph,pa),-S)) if cell=='CA' else add(mul(mul(ph,pb),pc),sc(mul(ph,pb),-2*tt),sc(ph,tt*tt),sc(add(pc,pb),-S))
                elif kind=='relation':
                    rr=relation(why['index'])
                    if rr[0]=='linear':expected=add(*(sc(area(t),F(co)) for t,co in rr[1].items()),const(-F(rr[2])))
                    else:check(rr[0]=='quad');expected=add(area(rr[1]),area(rr[2]),const(-F(rr[3])))
                elif kind=='support_cap':
                    rr=relation(why['relation']);check(rr[0]=='support');xx,yy,zz,kk=rr[1:];kk=F(kk);axis=why['which'];check(axis in ('X','Y'))
                    paired=xx if axis=='X' else yy;value=ref(why['reference'],paired,'hi',why['value']);expected=add(sc(area(yy if axis=='X' else xx),value),sc(area(xx),-kk),sc(area(zz),kk))
                elif kind=='natural_contact_support':
                    rr=relation(why['relation']);check(rr[0]=='support');xx,yy,zz,kk=rr[1:];kk=F(kk);paired=why['paired'];target=why['target']
                    check((paired,target) in ((xx,yy),(yy,xx)) and paired in ('ABC','ACH','ACE') and why['box']==stage['initial_box'] and why['relax'] is False)
                    cap={'ABC':pa,'ACH':sub(ph,pa),'ACE':pe}[paired]
                    remainder={'ABC':mul(pa,add(ONE,sc(pc,-1),pb)),'ACH':mul(sub(ONE,pc),sub(ph,pa)),'ACE':mul(sub(ONE,pc),sub(pe,pa))}[paired]
                    check(sub(cap,area(paired))==remainder and why['scheme']['tag']=='SUPPORT' and F(why['scheme']['rate'])==kk and F(why['scheme']['constant'])==0)
                    expected=add(mul(cap,area(target)),sc(area(xx),-kk),sc(area(zz),kk));check(parsepoly(why['raw'])==expected)
                else:raise AssertionError(kind)
                check(parsepoly(row['terms'])==expected and number not in physical and name not in atoms,'wrong physical factor '+name)
                physical[number]=expected;atoms[name]=expected;stats['factors']+=1

            def lines(poly,idx):
                check(all(len(mon)==len(set(mon)) for mon in poly),'nonmultiaffine coordinate source')
                inds=sorted({i for mon in poly for i in mon}-{idx});at=list(lo);out=set()
                for bs in product((0,1),repeat=len(inds)):
                    for j,bit in zip(inds,bs):at[j]=hi[j] if bit else lo[j]
                    slope=intercept=F()
                    for mon,coeff in poly.items():
                        for j in mon:
                            if j!=idx:coeff*=at[j]
                        if idx in mon:slope+=coeff
                        else:intercept+=coeff
                    out.add((slope,intercept))
                return out

            if 'coordinate' in stage:
                for row in stage['coordinate']['steps']:
                    idx=NAMES.index(row['target']);check(tuple(map(F,row['old']))==(lo[idx],hi[idx]));ll=lines(physical[str(row['factor'])],idx)
                    check(ll=={tuple(map(F,line)) for line in row['lines']} and len(ll)==len(row['lines']),'incomplete coordinate endpoint lines');possible=[]
                    for aa,bb in ll:
                        left,right=lo[idx],hi[idx]
                        if aa>0:left=max(left,-bb/aa)
                        elif aa<0:right=min(right,-bb/aa)
                        elif bb<0:continue
                        if left<=right:possible.append((left,right))
                    check(possible,'coordinate trace passed through contradiction');raw=(min(t[0] for t in possible),max(t[1] for t in possible))
                    check(raw==tuple(map(F,row['raw'])));rounded=(max(lo[idx],down(raw[0])),min(hi[idx],up(raw[1])));check(rounded==tuple(map(F,row['new'])))
                    lo[idx],hi[idx]=rounded;stats['coordinate']+=1;stats['lines']+=len(ll)
                check(lo==list(map(F,stage['coordinate']['low'])) and hi==list(map(F,stage['coordinate']['high'])))
            elif sid!=packet['terminal']['stage']:raise AssertionError('missing intermediate coordinate stage')
            boxes[sid]=(lo[:],hi[:]);physical_by_stage[sid]=(dict(physical),dict(atoms));expected_box=(lo[:],hi[:]);stats['stages']+=1

        terminal=packet['terminal'];sid=terminal['stage'];check(sid==len(history)-1);records=stage_records[sid];physical,atoms=physical_by_stage[sid];lo,hi=boxes[sid]
        kind=terminal['kind']
        if kind=='scalar':
            end=terminal['contradiction'];low=records[end['lower']];high=records[end['upper']]
            check(low[:2]==(end['triangle'],'lo') and high[:2]==(end['triangle'],'hi') and low[2]>high[2])
        elif kind=='box':
            end=terminal['contradiction'];idx=NAMES.index(end['target']);check((lo[idx],hi[idx])==tuple(map(F,end['old'])))
            ll=lines(physical[str(end['factor'])],idx);check(ll=={tuple(map(F,line)) for line in end['lines']} and len(ll)==len(end['lines']))
            check(max(max(aa*lo[idx]+bb,aa*hi[idx]+bb) for aa,bb in ll)<0);stats['lines']+=len(ll)
        elif kind=='polynomial':
            for i in range(N):atoms['L'+str(2*i)]=add(V[i],const(-lo[i]));atoms['L'+str(2*i+1)]=add(const(hi[i]),sc(V[i],-1))
            total={}
            for term in terminal['sum']['factors']:
                weight=term['weight'];check(type(weight) is int and weight>0);pp=const(weight)
                for name in term['atoms']:check(name in atoms,'missing terminal source');pp=mul(pp,atoms[name])
                check(max(map(len,pp),default=0)<=3);total=add(total,pp);stats['products']+=1
            shifted=shift(total,lo,hi);check(shifted==parsepoly(terminal['sum']['sum']),'changed cubic coefficient sum')
            upper=shifted.get((),F())+sum(co for mon,co in shifted.items() if mon and co>0);check(upper==F(terminal['sum']['upper']) and upper<0)
        else:
            check(kind=='area_linear');audit_area_linear(terminal['sum'],stage_relations[sid],kn,records,stats)
        stats['leaves']+=1
        if verbose:print(packet['id'],'independent',kind,'closure',flush=True)
    if complete:check(seen==expected_cases,'missing E-only sign leaf')
    if verbose:print(json.dumps(stats,indent=2),flush=True)
    return stats


def read(root):
    out=[]
    for path in sorted(Path(root).glob('C*.md')):
        matches=re.findall(r'^```n7-central-e-only-packet\n(.*?)\n```',path.read_text(),re.M|re.S)
        check(len(matches)==1,'missing or repeated literal packet');out.append(json.loads(matches[0]))
    return out


if __name__=='__main__':
    root=Path(__file__).with_name('N7_CENTRAL_COMPLETION_E_ONLY_TABLES')
    audit(read(root))
