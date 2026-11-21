"""Independent actual-point/Fraction audit of the central N7 EFG cap.

Only the literal Markdown packet is input. No discovery or author checker
is imported. Polynomial arithmetic, sign closure and scalar replay are fresh.
"""
from fractions import Fraction as F
from itertools import combinations, product
from pathlib import Path
from functools import lru_cache
import json, re, sys

L='ABCDEFGH'; ANCHORS='ABCDEFH'; N=9; S=F(93,1000); T=F(149,20)*S
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
V=list(map(var,range(N))); a,b,c,d,e,f,g,h,z=V; O={}; ONE=const(1)
POINTS={'A':(O,a),'B':(b,O),'C':(c,O),'D':(ONE,d),
        'E':(ONE,e),'F':(f,ONE),'G':(g,z),'H':(O,h)}
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
GP=[]
for p in L:
    for b0,c0,d0,e0 in combinations([v for v in L if v!=p],4):
        GP.append([(p+b0+c0,p+d0+e0,1),(p+b0+d0,p+c0+e0,-1),(p+b0+e0,p+c0+d0,1)])
def signs(word):
    kn={}
    for w in combinations(ANCHORS,3): put(kn,''.join(w),1)
    for w,v in [('HAG',1),('ABG',1),('BCG',1),('CHG',1),
                ('ACG',1),('HBG',1),('AFG',-1),('BFG',-1)]: put(kn,w,v)
    for w,v in word.items(): put(kn,w,1 if v=='+' else -1)
    while True:
        changed=False
        for terms in GP:
            vals=[co*sg(kn,x)*sg(kn,y) for x,y,co in terms]
            nz=[v for v in vals if v]
            if len(nz)==3 and len(set(nz))==1: return None
            if len(nz)!=2 or len(set(nz))!=1: continue
            x,y,co=terms[vals.index(0)]
            if not sg(kn,x) and sg(kn,y): target=x;v=-nz[0]*co*sg(kn,y)
            elif sg(kn,x) and not sg(kn,y): target=y;v=-nz[0]*co*sg(kn,x)
            else: continue
            put(kn,target,v);changed=True
        if not changed: return kn
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

def audit(packets,verbose=True):
    expected_words={}
    for bits in product(('-', '+'),repeat=4):
        word=dict(zip(('ADG','AEG','BDG','BEG'),bits));kn=signs(word)
        if kn is not None:
            check(len(kn)==56,'incomplete independently reconstructed G signs')
            expected_words[tuple(bits)]=kn
    check(set(expected_words)=={tuple('----'),tuple('--+-'),tuple('--++'),tuple('+-+-'),tuple('+-++'),tuple('++++')},'six-word coverage')
    seen=set(); stats={'packets':0,'updates':0,'relations':0,'factors':0,'products':0,'vertex_values':0}
    bounds_by_packet={}
    for packet in packets:
        cell=packet['cell'];check(cell in ('CA','CB'))
        word=packet['sign_word'];check(set(word)==set(('ADG','AEG','BDG','BEG')))
        wordid=tuple(word[w] for w in ('ADG','AEG','BDG','BEG'))
        check(wordid in expected_words and (cell,wordid) not in seen,'duplicate/missing chamber');seen.add((cell,wordid));kn=expected_words[wordid]
        def area(w): return sc(det(w),sg(kn,w))
        low=['139/1000','108/1000','541/1000','120/1000','57/100','108/1000','118/1000','613/1000','139/1000'] if cell=='CA' else ['122/1000','123/1000','541/1000','122/1000','57/100','123/1000','123/1000','613/1000','134/1000']
        high=['685/1000','279/1000','883/1000','705/1000','907/1000','279/1000','685/1000','1','773/1000' if cell=='CA' else '775/1000']
        lo=list(map(F,packet['box']['low']));hi=list(map(F,packet['box']['high']))
        check(lo==list(map(F,low)) and hi==list(map(F,high)),'unproved initial box')
        records={}
        def ref(name,w,side,value):
            check(name in records and records[name]==(key(w),side,F(value)),'unavailable or wrong immutable bound '+name)
            return F(value)
        for name,row in packet['initial'].items():
            w=row['triangle'];side=row['side'];value=F(row['value']);wit=row['witness'];kind=wit['kind']
            check(w==key(w) and len(w)==3 and sg(kn,w) and side in ('lo','hi') and name not in records)
            if kind=='occupants':
                hull=wit['triangle'];pts=wit['points'];check(key(hull)==w and len(set(pts))==len(pts) and all(inside(kn,hull,x) for x in pts))
                check(side=='lo' and value==[S,3*S,T,F(4427,500)*S][len(pts)])
            elif kind=='vertices':
                check(side=='hi' and wit['cell']==cell and key(wit['signed'])==w and sg(kn,wit['signed'])==1)
                ids,vals=vertices(det(wit['signed']),lo,hi)
                used=sorted({i for vertex in wit['signed'] for coord in POINTS[vertex] for mon in coord for i in mon})
                check(set(ids)<=set(used) and used==wit['used'] and vals==list(map(F,wit['values'])) and value==min(F(1),max(vals)),'incomplete endpoint values');stats['vertex_values']+=len(vals)
            elif kind=='cap':
                cap=wit['cap'];cost={'ABC':F(403,1000),'ABH':F(403,1000),'BCD':F(357,1000),'CDE':F(357,1000),'BCE':T,'DEF':T}[cap]
                check(side=='hi' and value==F(wit['value'])==cost and all(x in cap or inside(kn,cap,x) for x in w),'unproved containing cap')
            elif kind=='fixed_central_cap': check(side=='hi' and w==wit['triangle']=='ABE' and value==F(167879,245720))
            elif kind=='occupied_upper_ear': check(side=='lo' and w==wit['triangle'] and w in ('CEF','CEH') and value==T)
            elif kind=='contrary_EFG_cap': check(side=='lo' and w==wit['triangle']=='EFG' and value==T)
            else: raise AssertionError(kind)
            records[name]=(w,side,value)
        validated=set()
        def relation(rid):
            data=packet['relations'][rid];row=data['row'];wit=data['witness'];kind=wit['kind']
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
                hull=wit['poly'];pts=wit['occupants'];check(convex(kn,hull) and pts==['G'] and inside(kn,hull,'G'))
                check(row==['quad',key(hull[:3]),key(hull[0]+hull[2:]),'449/1000'])
            elif kind in ('five_support','quad_support'):
                hull=wit['poly'];check(convex(kn,hull))
                if kind=='five_support':
                    aa,bb,cc,dd,ee=hull;expected=list(map(key,[aa+bb+ee,aa+dd+ee,aa+bb+dd]));rate=F(11)
                else:
                    aa,bb,cc,dd=hull;pts=wit['occupants'];check(pts==['G'] and inside(kn,hull,'G'))
                    counts=tuple(sorted([int(bool(inside(kn,aa+cc+dd,'G'))),int(bool(inside(kn,bb+cc+dd,'G')))]))
                    rate={(0,0):F(29,5),(0,1):F(149,20),(1,1):F(12)}[counts]
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
                    coef(line+vertex,v if upper else -v)
                coef(line+point,-cap if upper else cap)
                coeff={w:v for w,v in coeff.items() if v};check(row[0]=='linear' and {w:F(v) for w,v in row[1].items()}==coeff and F(row[2])==0,'barycentric sign inequality')
            else:raise AssertionError(kind)
            validated.add(rid);stats['relations']+=1;return row
        for rr in packet['updates']:
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
        if 'contradiction' in packet:
            rr=packet['contradiction'];x=records[rr['lower']];y=records[rr['upper']];check(x[:2]==(rr['triangle'],'lo') and y[:2]==(rr['triangle'],'hi') and x[2]>y[2]);check(not packet['factors'])
        else:
            atoms={}
            for i in range(N):atoms['L'+str(2*i)]=add(V[i],const(-lo[i]));atoms['L'+str(2*i+1)]=add(const(hi[i]),sc(V[i],-1))
            for name,row in packet['factors'].items():
                why=row['why'];kind=why['kind'];check(row['name']==name)
                if kind=='area':
                    tri=why['triangle'];side=why['side'];value=ref(why['reference'],tri,side,why['value']);expected=add(area(tri),const(-value)) if side=='lo' else add(const(value),sc(area(tri),-1))
                elif kind=='central_order':
                    check(why['cell']==cell);expected=sub(mul(a,c),mul(b,h)) if cell=='CA' else sub(mul(b,h),mul(a,c))
                elif kind=='central_endpoint_tangent':
                    check(why['cell']==cell);tt=F(why['t'])
                    if cell=='CA':expected=add(mul(mul(c,a),h),sc(mul(c,a),-2*tt),sc(c,tt*tt),sc(add(h,a),-S))
                    else:expected=add(mul(mul(h,b),c),sc(mul(h,b),-2*tt),sc(h,tt*tt),sc(add(c,b),-S))
                elif kind=='setup':
                    expected={'Central_z':add(mul(mul(c,sub(h,a)),z),sc(add(h,a),-S)),
                        'Gsum':add(const(F(790,883)),sc(g,-1),sc(z,-1)),
                        'overlap_ae':sub(e,a),'overlap_bf':sub(f,b),'overlap_eh':sub(h,e),'overlap_fc':sub(c,f),
                        'span_BC':add(c,sc(b,-1),const(-F(117,1000))),
                        'span_BC_hi':add(b,sc(c,-1),const(F(79,100))),
                        'span_DE_hi':add(d,sc(e,-1),const(F(697,790))),
                        'span_AH_hi':add(a,sc(h,-1),const(F(697,790))),
                        'PAIR_BL':add(mul(h,c),sc(area('ABC'),-1),sc(area('ABH'),-1),const(-2*S))}[why['name']]
                elif kind=='relation':
                    rr=relation(why['index'])
                    if rr[0]=='linear':expected=add(*(sc(area(w),F(v)) for w,v in rr[1].items()),const(-F(rr[2])))
                    else:check(rr[0]=='quad');expected=add(area(rr[1]),area(rr[2]),const(-F(rr[3])))
                elif kind in ('support_cap','natural_contact_support'):
                    rr=relation(why['relation']);check(rr[0]=='support');x,y,z0,k0=rr[1:];k=F(k0)
                    if kind=='support_cap':
                        axis=why['which'];check(axis in ('X','Y'));paired=x if axis=='X' else y;value=ref(why['reference'],paired,'hi',why['value']);expected=add(sc(area(y if axis=='X' else x),value),sc(area(x),-k),sc(area(z0),k))
                    else:
                        check(why['paired']=='ACE'==y and why['target']==x and why['box']==packet['box'] and why['relax'] is False)
                        check(why['scheme']['tag']=='SUPPORT' and F(why['scheme']['rate'])==k and F(why['scheme']['constant'])==0)
                        check(sub(e,area('ACE'))==mul(sub(ONE,c),sub(e,a)))
                        expected=add(mul(e,area(x)),sc(area(x),-k),sc(area(z0),k));check(parsepoly(why['raw'])==expected)
                else:raise AssertionError(kind)
                check(parsepoly(row['terms'])==expected,'wrong physical factor '+name);check(name not in atoms);atoms[name]=expected;stats['factors']+=1
            total={}
            for term in packet['sum']['factors']:
                weight=term['weight'];check(type(weight) is int and weight>0);pp=const(weight)
                for name in term['atoms']:check(name in atoms,'missing source atom');pp=mul(pp,atoms[name])
                check(max(map(len,pp),default=0)<=3,'degree exceeds three');total=add(total,pp);stats['products']+=1
            shifted=shift(total,lo,hi);check(shifted==parsepoly(packet['sum']['sum']),'wrong translated coefficient sum')
            upper=shifted.get((),F())+sum(v for m,v in shifted.items() if m and v>0)
            check(upper==F(packet['sum']['upper']) and upper<0,'nonnegative cubic maximum')
            if verbose:print(packet['id'],'exact negative upper',upper,flush=True)
        # Every printed relation is validated, including premises used only in factors.
        for rid in packet['relations']:relation(rid)
        stats['packets']+=1;bounds_by_packet[packet['id']]=len(records)
    check(seen=={(cell,word) for cell in ('CA','CB') for word in expected_words},'missing sign leaf')
    stats['bounds']=sum(bounds_by_packet.values());stats['inconsistent_sign_words_per_root']=16-len(expected_words)
    if verbose:print(json.dumps(stats,indent=2))
    return stats

def read(path):return [json.loads(x) for x in re.findall(r'^```n7-central-efg-packet\n(.*?)\n```',Path(path).read_text(),re.M|re.S)]

def mutations(packets):
    from copy import deepcopy
    changes=[]
    def trial(name,fn):
        pp=deepcopy(packets);fn(pp)
        try:audit(pp,False)
        except (AssertionError,KeyError,ValueError,IndexError,StopIteration):changes.append(name);return
        raise AssertionError('corruption accepted: '+name)
    trial('omitted sign leaf',lambda p:p.pop())
    trial('duplicated sign leaf',lambda p:p.append(deepcopy(p[0])))
    trial('unproved contact endpoint',lambda p:p[0]['box']['high'].__setitem__(0,'684/1000'))
    trial('omitted endpoint value',lambda p:next(r for r in p[0]['initial'].values() if r['witness']['kind']=='vertices')['witness']['values'].pop())
    trial('zero polynomial multiplier',lambda p:p[0]['sum']['factors'][0].__setitem__('weight',0))
    trial('changed polynomial source',lambda p:next(iter(p[0]['factors'].values()))['terms'][0].__setitem__(1,'0'))
    trial('changed coefficient sum',lambda p:p[0]['sum']['sum'].__setitem__('', '0'))
    trial('future scalar premise',lambda p:p[0]['updates'][0]['sources'].__setitem__(0,p[0]['updates'][-1]['id']))
    trial('missing scalar premise',lambda p:p[0]['updates'][0]['sources'].pop())
    trial('wrong actual sign word',lambda p:p[0]['sign_word'].__setitem__('ADG','+'))
    trial('changed barycentric premise',lambda p:next(r for r in p[0]['relations'].values() if r['witness']['kind']=='bary_sign')['witness']['fan_lower'][0].__setitem__('value','94/1000'))
    trial('wrong terminal area',lambda p:next(r for r in p if 'contradiction' in r)['contradiction'].__setitem__('triangle','ABE'))
    print('Rejected '+str(len(changes))+' deliberate corruptions: '+', '.join(changes))

if __name__=='__main__':
    args=sys.argv[1:];negative='--mutations' in args
    if negative:args.remove('--mutations')
    check(len(args)<=1,'usage: audit_n7_central_efg_cap.py [tables.md] [--mutations]')
    path=Path(args[0]) if args else Path(__file__).with_name('N7_CENTRAL_COMPLETION_EFG_CAP_TABLES.md')
    packets=read(path);audit(packets)
    if negative:mutations(packets)
