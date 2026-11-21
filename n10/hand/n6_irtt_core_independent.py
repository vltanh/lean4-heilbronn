"""Independent verification for the fixed radial cases of the nine-point core."""
from collections import Counter
from fractions import Fraction as F
from functools import cache
from itertools import combinations, product
import json
from pathlib import Path

from audit_c1_iirtt_lifted import add, const, mul, scale, var
from audit_c1_biirr import exact_object

LABELS = "ABCEFHQRS"
HULL = "ABCQERFH"
VARS = "a b c e f h u v r w j k".split()
a,b,c,e,f,h,u,v,r,w,j,k = [var(i) for i in range(12)]
PT = dict(A=({},a),B=(b,{}),C=(c,{}),E=(const(1),e),F=(f,const(1)),H=({},h),
          Q=(u,v),R=(r,w),S=(j,k))
S=F(93,1000)
cost=[S,3*S,F(149,20)*S,F(4427,500)*S]
alpha=F(1037,10000)
width_area=F(8963,25000)
weight=S/width_area
caps={"EFR":width_area,"EQR":F(295779,2000000),"CEQ":F(80667,500000),"BCQ":F(8963,62500)}
ear_cap=F(248858189,10**9)
sum_cap=F(76277533,62500000)
def sub(a,b):return add(a,scale(b,-1))
@cache
def det(t):
    (x,y),(u,v),(a,b)=[PT[p] for p in t]
    return sub(mul(sub(u,x),sub(b,y)),mul(sub(a,x),sub(v,y)))
@cache
def canonical(t):
    seq=[LABELS.index(q) for q in t]
    return "".join(sorted(t,key=LABELS.index)), (-1)**sum(x>y for i,x in enumerate(seq) for y in seq[i+1:])
def key(t):return canonical(t)[0]
def edges(hull):return [p+q for p,q in zip(hull,hull[1:]+hull[0])]
def read(path):return json.loads(path.read_text().split('```json\n')[1].split('\n```')[0],object_pairs_hook=exact_object)

class Actual:
    def __init__(self,cut):
        K=self.signs={}
        def put(t,z):name,parity=canonical(t);assert K.get(name,z*parity)==z*parity;K[name]=z*parity
        for t in combinations(HULL,3):put("".join(t),1)
        for edge in edges(HULL)+edges("ERF"):put(edge+"S",1)
        for i,p in enumerate(HULL):put(HULL[i-1]+HULL[(i+1)%8]+"S", -1 if p=="R" else 1)
        for tail,head in combinations(HULL,2):
            known={self.sgn(tail+head+q) for q in "ERF" if q not in (tail,head)}
            if len(known)==1:put(tail+head+"S",known.pop())
        missing={key("".join(t)) for t in combinations(LABELS,3)}-set(K)
        assert missing=={"ARS","BRS","CRS"}
        for i,p in enumerate("ABC"):put(p+"RS",1 if i>=["HA","AB","BC","CQ"].index(cut) else -1)
        self.triangles={t:scale(det(t),sg) for t,sg in K.items()}
    def sgn(self,word):name,p=canonical(word);return self.signs[name]*p
    def contains(self,hull,point):
        return point not in hull and all(self.sgn(edge+point)==self.sgn(hull[:3]) for edge in edges(hull))
    def occupants(self,hull):return sorted(p for p in LABELS if self.contains(hull,p))
    def convex(self,hull):
        assert len(set(hull))==len(hull) and all(self.sgn("".join(t))==1 for t in combinations(hull,3))

def coarse():
    U=1-3*S/(1-alpha);e0=4*S/(1-alpha);c1=1-S/U;a0=S/(c1-alpha)
    r0=alpha+3*S/(1-e0);w0=e0+3*S/(1-alpha)
    return [(a0,F(97,190)),(alpha,F(19,100)),(4*S,c1),(e0,U),(alpha,1-3*S/(1-e0)),
            (a0+F(93,190),F(1)),(4*S+S/U,F(1)),(a0,U-S/(1-4*S)),(r0,F(1)),(w0,F(1)),
            ((11*alpha+3+3*r0)/17,1-S/(1-e0)),((11*e0+3+3*w0)/17,1-S/(1-alpha))]
def box(r):return list(zip(map(F,r["low"]),map(F,r["high"]),strict=True))
def read_poly(terms):
    pairs=[(tuple(m),F(x)) for m,x in terms]
    assert all(tuple(sorted(m))==m and all(0 <= i < 12 for i in m) for m,x in pairs)
    return exact_object(pairs)
def values(poly,bounds,target=None):
    variables=sorted({i for term in poly for i in term}-{target})
    assert all(len(set(mon))==len(mon) for mon in poly)
    def val(at):
        tot=F(0)
        for mon,co in poly.items():
            for i in mon:co*=at[i]
            tot+=co
        return tot
    out=[]
    for assignment in product(*(bounds[i] for i in variables)):
        at=dict(zip(variables,assignment))
        if target is None:out.append(val(at))
        else:
            at[target]=0;base=val(at);at[target]=1;out.append((val(at)-base,base))
    return out
def support(act,src,bounds):
    mode,hull,*extras=src;act.convex(hull)
    if len(hull)==5:
        aa,bb,cc,dd,ee=hull
        assert mode in ("pentagon","pentagon-ear-box")
        rate=11*S
        if mode=="pentagon-ear-box":
            ears,printed=extras;roots=[]
            assert len(ears)==3
            for i,ear in enumerate(ears):
                tri=hull[i:i+3];occup=act.occupants(tri)
                assert ear["ear"]==tri and sorted(ear["occupants"])==occup
                lower=cost[len(occup)]
                for pair,axis,den in [('AH',0,1),('BC',1,0)]:
                    if set(pair)<=set(tri):
                        other=(set(tri)-set(pair)).pop()
                        coord=PT[other][axis]
                        lower=max(lower, S*min(values(coord,bounds))/bounds[den][1])
                assert 0<=F(ear["root"])**2<=F(ear["lower"])<=lower and F(ear["root"])>=0
                roots.append(F(ear["root"]))
            rate=max(rate,sum(roots)**2);assert F(printed)==rate
        else: assert not extras
        return tuple(map(key,[aa+bb+ee,aa+dd+ee,aa+bb+dd])),rate
    assert len(hull)==4 and mode=="quad"
    aa,bb,cc,dd=hull;pts,printed=extras
    assert 1<=len(pts)<=2 and len(set(pts))==len(pts) and all(act.contains(hull,p) for p in pts)
    m,n=sorted(sum(act.contains(tri,p) for p in pts) for tri in (aa+cc+dd,bb+cc+dd))
    if len(pts)==1:
        val={(0,0):F(1457,250),(0,1):F(149,20),(1,1):F(12)}[m,n]
    else:
        val=max(F(1142,125),{(0,0):9,(0,1):9,(0,2):F(139,10),(1,1):12,(1,2):F(199,10),(2,2):F(149,5)}[m,n])
        if all(act.contains(aa+bb+cc,p) and act.contains(aa+bb+dd,p) for p in pts):val=max(val,F(299,31))
    assert 0<F(printed)<=val
    return tuple(map(key,[aa+bb+dd,aa+bb+cc,aa+cc+dd])),F(printed)*S

def physical(act,why,B,prior):
    tag,*p=why
    A=act.triangles
    if tag=="actual-area":
        tri,pts=p
        assert sorted(pts)==act.occupants(tri)
        return sub(A[key(tri)],const(cost[len(pts)]))
    if tag=="contact-order":
        assert p[0] in ("ha","ea","he","fb","cf")
        x,y=p[0]
        return sub(var(VARS.index(x)),var(VARS.index(y)))
    if tag=="endpoint-lower":
        assert F(p[0])==4*S
        return sub(mul(h,c),const(4*S))
    if tag=="right-support":
        assert p==["BCQE"]
        return sub(mul(e,sub(const(1),b)),const(4*S))
    if tag=="octagon-ear-cap":
        hull,ear,occ=p
        assert hull==HULL and occ==["ERF","S"]
        assert key(ear) in {key(HULL[i-1]+HULL[i]+HULL[(i+1)%8]) for i in range(8)}-{"EFR"}
        return sub(const(ear_cap),A[key(ear)])
    if tag=="octagon-ear-root-budget":
        hull,rows,occupied=p;assert hull==HULL and len(rows)==8 and occupied==["ERF","S"]
        expr=const(4)
        for i,row in enumerate(rows):
            tri=HULL[i-1]+HULL[i]+HULL[(i+1)%8];occup=act.occupants(tri)
            assert row["ear"]==tri and sorted(row["occupants"])==occup
            lo,hi,beta,gamma=[F(row[k]) for k in ["floor","ceiling","beta","gamma"]]
            ceiling=min(F(1),max(values(A[key(tri)],B)),caps.get(key(tri),F(1)))
            if key(tri)!="EFR":ceiling=min(ceiling,ear_cap)
            assert 0<lo<hi and lo<=cost[len(occup)] and hi>=ceiling
            assert beta>=0 and gamma>=0 and beta**3<=lo and gamma**3<=hi
            slope=(gamma-beta)/(hi-lo)
            expr=sub(expr,add(const(beta-slope*lo),scale(A[key(tri)],slope)))
        return expr
    if tag=="right-clearance":
        assert p[0]=="Q"
        xx,yy=sub(u,c),sub(e,v)
        choices=dict(x=xx,y=yy,px=mul(e,xx),py=mul(sub(const(1),c),yy))
        return sub(choices[p[1]],const(S))
    if tag=="top-hull":
        assert p==["-"]
        return sub(mul(sub(const(1),f),sub(const(1),e)),const(3*S))
    if tag=="core-width-six-chain-cap":
        assert p[0]=="BCQERF" and p[2:]==["ERF","S"]
        return sub(const(caps[key(p[1])]),A[key(p[1])])
    if tag in ("core-rs-cut-gap","core-rs-bary-gap"):
        lo,hi=p[0]
        assert act.sgn(lo+"RS")==-1 and act.sgn(hi+"RS")==1
        gap=sub(det(hi+"RS"),det(lo+"RS"))
        if tag.endswith("bary-gap"):
            assert p[0]!="CQ" and p[1:]==["2325/8963","ERF","S","8963/25000"]
            # Replace j,k in the area difference by barycentric lower bounds.
            # Their coefficients are nonpositive on HA,AB and BC.
            lower_x=add(const(weight),scale(f,1-2*weight),scale(r,weight))
            lower_y=add(const(weight),scale(e,1-2*weight),scale(w,weight))
            out={}
            for term,coeff in gap.items():
                prod=const(coeff)
                for i in term:prod=mul(prod, lower_x if i==10 else lower_y if i==11 else var(i))
                out=add(out,prod)
            gap=out
        return sub(gap,const(2*S))
    if tag=="weighted-barycentric-core-width":
        outer,inner,ws,printed,axis,witness=p
        assert (outer,inner,witness)==("R","S",["BCQERF","ERF","S","8963/25000"])
        total=min(width_area,(1-B[3][0])*(1-B[4][0]))/S
        weights=[cost[len(act.occupants(tri))]/S for tri in ['FRS','ERS','EFS']]
        assert F(printed)==total and list(map(F,ws))==weights and sum(weights)<=total
        axis_coordinate=axis//2
        verts=[PT[t][axis_coordinate] for t in 'EFR']
        target=PT['S'][axis_coordinate]
        residual=total-sum(weights)
        base=add(*(scale(v,wt) for v,wt in zip(verts,weights)))
        extremum=const(1) if axis%2 else (f,e)[axis_coordinate]
        total_bound=add(base,scale(extremum,residual))
        return scale(sub(scale(target,total),total_bound),(-1)**(axis%2))
    if tag=="earlier-area":
        bound=p[0];val=prior(bound)
        return scale(sub(A[bound["triangle"]],const(val)),1 if bound["direction"]=="lo" else -1)
    if tag=="support-envelope":
        src,x,y,z,val=p
        ids,rate=support(act,src,B)
        assert (x,y,z)==ids and F(val)>=min(1,max(values(A[x],B)))
        return add(scale(A[y],F(val)),scale(A[x],-rate),scale(A[z],rate))
    raise ValueError(tag)

def coord_source(act,factor,B,prior):
    polynomial=read_poly(factor["terms"])
    if factor["why"][0]=="anchor-cap":
        assert min(values(polynomial,B))>=0
    else:
        assert physical(act,factor["why"],B,prior)==polynomial
    return polynomial

def apply_steps(refinement,act,B,prior,terminal=None):
    trusted={int(i):coord_source(act,fac,B,prior) for i,fac in refinement["factors"].items()}
    counts=Counter(physical=len(trusted))
    for row in refinement['steps']+([terminal] if terminal else []):
        i=VARS.index(row["target"]);lo,hi=B[i]
        assert (lo,hi)==tuple(map(F,row["old"]))
        lines=set(values(trusted[row["factor"]],B,i))
        assert lines=={(F(x),F(y)) for x,y in row["lines"]}
        intervals=[]
        for slope,const_ in lines:
            left=lo if slope<=0 else max(lo,-const_/slope)
            right=hi if slope>=0 else min(hi,-const_/slope)
            if left<=right and (slope or const_>=0):intervals.append((left,right))
        if row is terminal: assert not intervals
        else:
            counts["coordinate"]+=1
            raw=min(pair[0] for pair in intervals),max(pair[1] for pair in intervals)
            nla,nha=map(F,row["new"])
            assert raw==tuple(map(F,row["raw"])) and lo<=nla<=raw[0]<=raw[1]<=nha<=hi
            B[i]=(nla,nha)
    return counts

def initial(act,row,B,prior):
    t,side,value=row["triangle"],row["direction"],F(row["value"])
    tag,*data=row['source']
    if tag=='vertices':
        assert side=='hi' and value>=min(F(1),max(values(act.triangles[t],B)))
    elif tag=='occupants':
        assert side=='lo' and sorted(data[0])==act.occupants(t) and value<=cost[len(data[0])]
    elif tag=='octagon-ear-cap':
        assert data[0]==HULL and key(data[1])==t and data[2]==['ERF','S'] and side=='hi'
        assert t in {key(HULL[i-1]+HULL[i]+HULL[(i+1)%8]) for i in range(8)}-{'EFR'} and value>=ear_cap
    elif tag=='core-width-six-chain-cap':
        assert data[0]=='BCQERF' and data[2:]==['ERF','S'] and key(data[1])==t and side=='hi' and value>=caps[t]
    elif tag=='earlier-area':
        old=data[0];assert (old['triangle'],old['direction'])==(t,side) and value==prior(old)
    else:raise ValueError(tag)

def rat(num):return F(*map(int,num)) if isinstance(num,list) else F(num)
def relation(act,row,B):
    """Return an area polynomial P and its equality or inequality sign."""
    k=row["kind"]; A=act.triangles
    if k=="fan":
        out=row["outer"]; pts=row["parts"]
        assert act.contains(out,row["point"])
        terms={tuple([out]):1,**{tuple([p]):-1 for p in pts}}
    elif k=="four":terms={(a["triangle"],):a["co"] for a in row["terms"]}
    elif k=="plu":
        terms={tuple(row["iso"]):1,**{tuple(pair):-1 for pair in row["rhs"]}}
    elif k=="bary":
        src=row["witness"];outer,inner=src['container'],src['inner']
        assert act.contains(outer,inner) and row['outer']==key(outer)
        expected=[key(outer[(i+1)%3]+outer[(i+2)%3]+inner) for i in range(3)]
        assert expected==row['fans']
        line=src['line'];assert len(line)==len(set(line))==2
        for p,val in zip(outer+inner,row['vertices']+[dict(name=row['target'],sign=row['targetSign'])],strict=True):
            assert val==(dict(name=None,sign=0) if p in line else dict(name=key(line+p),sign=act.sgn(line+p)))
        return row
    elif k=="quad":
        hull=row['hull'];act.convex(hull);pts=act.occupants(hull);assert sorted(row['occupants'])==pts
        # Only S can lie in a quadrilateral of outer vertices in this core.
        assert len(pts)==1 and rat(row['floor'])<=F(24,5)*S
        a,b,c,d=hull;assert sorted(row['parts'])==sorted(map(key,[a+b+c,a+c+d]))
        return {'terms':{(t,):1 for t in row['parts']},'c':-rat(row['floor']),'ineq':True}
    elif k=='octagon-sum':
        assert row['hull']==HULL and sorted(row['parts'])==sorted(key(HULL[i-1]+HULL[i]+HULL[(i+1)%8]) for i in range(8))
        assert rat(row['ceiling'])>=sum_cap
        return {'terms':{(t,):-1 for t in row['parts']},'c':rat(row['ceiling']),'ineq':True}
    else:
        assert k=='support';(x,y,z),q=support(act,row['source'],B)
        assert [x,y,z]==[row[t] for t in 'XYZ'] and q==rat(row['constant'])
        return {'terms':{(x,y):1,(x,):-q,(z,):q},'c':0,'ineq':True}
    poly={}
    for mon,coef in terms.items():
        block=const(coef)
        for t in mon:block=mul(block,A[t])
        poly=add(poly,block)
    assert not poly,"incorrect actual-area identity"
    return {'terms':terms,'c':0,'ineq':False}

def derive_bound(row,refs,rel):
    t=row['triangle'];side=row['direction']
    limits={}
    for ref in refs:
        tr,direction,val=ref['triangle'],ref['direction'],F(ref['value'])
        ends=limits.setdefault(tr,[S,F(1)])
        if direction=='lo':ends[0]=max(ends[0],val)
        else:ends[1]=min(ends[1],val)
    if rel.get('kind')=='bary':
        assert t==rel['target']
        weights=[limits.get(fan,[S,1])[0]/limits.get(rel['outer'],[S,1])[1] for fan in rel['fans']]
        assert sum(weights)<=1
        orient=rel['targetSign']
        low=(orient==1)==(side=='lo')
        vv=[]
        for vtx in rel['vertices']:
            nm,sg=vtx['name'],vtx['sign']
            bounds=limits.get(nm,[S,F(1)])
            vv.append(0 if nm is None else sg*bounds[int(low != (sg==1))])
        residual=(1-sum(weights))*(min(vv) if low else max(vv))
        return orient*(residual+sum(x*y for x,y in zip(vv,weights)))
    # After isolating the target, its bound is a ratio of two
    # multiaffine functions of the other actual areas. If the denominator
    # has fixed strict sign, its extrema on the input box occur at corners.
    co=rel['terms']
    oth=sorted({n for mon in co for n in mon if n!=t})
    ds=[];values_=[]
    for vertex in product(*(limits.get(n,(S,F(1))) for n in oth)):
        at=dict(zip(oth,vertex));den=0;num=rel['c']
        for mon,k in co.items():
            coeff=k
            for n in mon:
                if n!=t:coeff*=at[n]
            if t in mon:den+=coeff
            else:num+=coeff
        ds.append(den)
        if den:values_.append(-num/F(den))
    if rel['ineq']:
        assert min(ds)>0 if side=='lo' else max(ds)<0
    else:assert min(ds)>0 or max(ds)<0
    return min(values_) if side=='lo' else max(values_)

def scalar(act,result,B,prior):
    rel_input=result['relations']
    if isinstance(rel_input,list):
        rel_input=dict(enumerate(rel_input))
    validated={int(i):relation(act,rel,B) for i,rel in rel_input.items()}
    recs={}
    for row in result['initial']:
        initial(act,row,B,prior)
        assert row['id'] not in recs;recs[row['id']]=row
    for row in result['updates']:
        bound=derive_bound(row,[recs[i] for i in row['refs']],validated[row['why'][1]])
        printed,raw=F(row['value']),F(row['raw'])
        if row['direction']=='lo':assert printed<=raw<=max(S,bound),(row,bound)
        else:assert printed>=raw>=min(F(1),bound),(row,bound)
        assert row['id'] not in recs;recs[row['id']]=row
    return recs,Counter(initial=len(result['initial']),scalar=len(result['updates']),relations=len(validated))

def audit_radial(folder):
    counts=Counter()
    for cut in ('AB','BC','CQ'):
        data=read(folder/(cut+'.md'))
        assert data['id']==cut and data['labels']==LABELS and data['variables']==VARS
        act=Actual(cut);B=coarse();local={};closed=False
        for i,stage in enumerate(data['stages']):
            assert not closed and not stage['forced']
            rr=stage['result']
            assert rr['known']==act.signs and box(rr['initialBox'])==B
            def prior(bound):
                ref=bound['origin'];assert ref['packet']==cut and 0<=ref['stage']<i
                old=local[ref['stage']][ref['id']]
                assert (old['triangle'],old['direction'],F(old['value']))==(bound['triangle'],bound['direction'],F(bound['value']))
                return F(old['value'])
            ending=rr.get('reason',{}).get('interval')
            counts.update(apply_steps(rr['refinement'],act,B,prior,ending))
            assert box(rr['box'])==B
            if ending:closed=True
            else:
                local[i],ct=scalar(act,rr,B,prior)
                counts.update(ct)
        assert closed
    return counts

def check_product(act,cert,B,records,factors):
    assert box(cert['box'])==B
    sources={}
    for num,src in cert['sources'].items():
        orig=src['origin'];tag=orig['kind']
        if tag=='physical':
            ident=str(orig['factorIndex'])
            assert orig['factor']==factors[ident]
            poly=read_poly(factors[ident]['terms'])
        else:
            direction=orig['direction']
            assert direction in ('lo','hi')
            if tag=='coordinate':
                j=VARS.index(orig['variable']);poly=var(j)
                value=B[j][direction=='hi']
            else:
                assert tag=='bound'
                t=orig['triangle'];poly=act.triangles[t]
                bound=records[orig['id']]
                assert (bound['triangle'],bound['direction'])==(t,direction)
                value=F(bound['value'])
            assert value==F(orig['value'])
            poly=scale(sub(poly,const(value)),1 if direction=='lo' else -1)
        assert poly==read_poly(src['terms'])
        sources[int(num)]=poly
    total={};used=set()
    for product in cert['products']:
        ids=product['factors'];wt=F(product['weight'])
        assert wt>0 and len(ids) in (1,2)
        term=const(wt)
        for k in ids:
            term=mul(term,sources[k]);used.add(k)
        total=add(total,term)
    assert used==set(sources) and total==read_poly(cert['sum'])
    shifted={}
    for mon,k in total.items():
        term=const(k)
        for i in mon:term=mul(term,add(var(i),const(B[i][0])))
        shifted=add(shifted,term)
    assert shifted==read_poly(cert['shifted'])
    hi=shifted.get((),F(0))
    for mon,k in shifted.items():
        if mon and k>0:
            for i in mon:k*=B[i][1]-B[i][0]
            hi+=k
    assert hi==F(cert['upper'])<0
    return Counter(products=len(cert['products']),product_sources=len(sources))

def audit_ha(folder):
    index=read(folder/'INDEX.md');nodes=index['nodes']
    assert index['labels']==LABELS and index['variables']==VARS and index['extra']==['ARS+']
    assert index['global_']=='global.md'
    act=Actual('HA');counts=Counter()
    def replay(name,data,B,path_bounds):
        assert data['id']==name and data['extra']==['ARS+'] and data['labels']==LABELS and data['variables']==VARS
        closed=False;records={}
        for i,wrapped in enumerate(data['stages']):
            assert not closed and wrapped['forced']==[]
            rr=wrapped['result']
            assert rr['known']==act.signs and box(rr['initialBox'])==B
            def prior(ref):
                org=ref['origin'];old=path_bounds[org['packet'],org['stage'],org['id']]
                assert (old['triangle'],old['direction'],F(old['value']))==(ref['triangle'],ref['direction'],F(ref['value']))
                return F(old['value'])
            term=rr.get('reason',{}).get('interval')
            counts.update(apply_steps(rr['refinement'],act,B,prior,term))
            assert box(rr['box'])==B
            if term:closed=True
            else:
                records,ct=scalar(act,rr,B,prior);counts.update(ct)
                for num,row in records.items():
                    source=(name,i,num);assert source not in path_bounds
                    path_bounds[source]=row
        if 'coordinateCertificate' in data:
            assert not closed
            counts.update(check_product(act,data['coordinateCertificate'],B,records,rr['refinement']['factors']))
            closed=True
        return closed
    B=coarse();globals_={}
    assert not replay('HA',read(folder/'global.md'),B,globals_)
    stack=[('r',None,B,globals_)];visited=set()
    while stack:
        name,parent,B,available=stack.pop();assert name not in visited
        visited.add(name);entry=nodes[name]
        assert entry['parent']==parent and entry['depth']==len(name)-1 and entry['table']==name+'.md'
        closed=replay(name,read(folder/entry['table']),B,available)
        if closed:
            assert entry['status']!='split' and 'split' not in entry
            counts['leaves']+=1
            continue
        assert entry['status']=='split'
        cut=entry['split'];j=VARS.index(cut['variable']);mid=F(cut['value']);lo,hi=B[j]
        assert lo<mid<hi
        for suffix,limits in [('m',(lo,mid)),('p',(mid,hi))]:
            child=B.copy();child[j]=limits
            stack.append((name+suffix,name,child,available.copy()))
        counts['splits']+=1
    assert visited==set(nodes) and counts['leaves']==counts['splits']+1
    return counts

if __name__=='__main__':
    print(audit_radial(Path(__file__).with_name('N6_IRTT_CORE_RADIAL_TABLES')))
    print(audit_ha(Path(__file__).with_name('N6_IRTT_CORE_HA_TABLES')))
