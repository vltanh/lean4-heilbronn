"""Independent exact audit of the literal C1 two-central/three-cap proof.

Run ``python3 n10/hand/audit_c1_two_central_three_caps.py``. Only the hand
Markdown tables are proof inputs. Every physical factor, refinement and
positive polynomial sum is reconstructed with fractions.Fraction. Existing
independent JS readers validate the geometric/scalar certificates against a
fresh mathematical domain; no discovery engine is imported. This audit also
checks every final scalar endpoint against its immutable source record.

The optional --records mode diagnoses a discovery checkpoint separately.
"""
from pathlib import Path
from fractions import Fraction as F
from itertools import combinations, product
from collections import defaultdict, Counter
import argparse, json, re, subprocess, sys, time
import tempfile

LABELS='OHCDFYZPQR'
OUTER='OCPDQFRH'
VARIABLES='h c d f u v z w p q r t j k'.split()
S=F(93,1000)
N=14

def check(ok,message):
    if not ok:raise AssertionError(message)

def read(path):
    return json.loads(Path(path).read_text())

def constant(c):
    c=F(c);return {():c} if c else {}

def variable(i):return {(i,):F(1)}

def add(*polys):
    out=defaultdict(F)
    for p in polys:
        for mon,c in p.items():out[mon]+=c
    return {m:c for m,c in out.items() if c}

def scale(p,a):
    a=F(a);return {m:c*a for m,c in p.items() if c*a}

def multiply(p,q):
    out=defaultdict(F)
    for m,a in p.items():
        for n,b in q.items():out[tuple(sorted(m+n))]+=a*b
    return {m:c for m,c in out.items() if c}

def minus(p,q):return add(p,scale(q,-1))

def parse_poly(p):
    out={}
    for m,c in p.items():
        mon=tuple(map(int,m.split(','))) if m else ()
        check(tuple(sorted(mon))==mon and all(0<=i<N for i in mon),'invalid printed monomial')
        check(mon not in out,'duplicate polynomial monomial')
        if F(c):out[mon]=F(c)
    return out

VARS=list(map(variable,range(N)))
ZERO={};ONE=constant(1)
POINTS={'O':(ZERO,ZERO),'H':(ZERO,VARS[0]),'C':(VARS[1],ZERO),'D':(ONE,VARS[2]),'F':(VARS[3],ONE),'Y':(VARS[4],VARS[5]),'Z':(VARS[6],VARS[7]),'P':(VARS[8],VARS[9]),'Q':(VARS[10],VARS[11]),'R':(VARS[12],VARS[13])}

def determinant(word):
    a,b,c=[POINTS[t] for t in word]
    return minus(multiply(minus(b[0],a[0]),minus(c[1],a[1])),multiply(minus(b[1],a[1]),minus(c[0],a[0])))

def canonical(word):
    check(len(word)==3 and len(set(word))==3 and all(t in LABELS for t in word),'invalid actual triple')
    indices=[LABELS.index(t) for t in word]
    parity=(-1)**sum(a>b for i,a in enumerate(indices) for b in indices[i+1:])
    return ''.join(sorted(word,key=LABELS.index)),parity

def key(word):return canonical(word)[0]

def sign(known,word):
    if len(set(word))<3:return 0
    name,e=canonical(word);return known.get(name,0)*e

def inside(known,hull,point):
    sg=sign(known,hull[:3])
    return point not in hull and sg!=0 and all(sign(known,hull[i]+hull[(i+1)%len(hull)]+point)==sg for i in range(len(hull)))

def convex(known,hull,orientation=1):
    return len(set(hull))==len(hull) and all(sign(known,''.join(t))==orientation for t in combinations(hull,3))

def down(x):return F(x.numerator*10**6//x.denominator,10**6)
def up(x):return -down(-x)

def initial_box():
    d0=4*S;beta=F(108,125);alpha=F(79,100);ell=S/beta;chi=alpha-S/(1-d0);theta=d0+S/(1-d0);p0=F(13597,19750)
    return [(d0,beta),(d0,beta),(d0,alpha),(d0,alpha)]+[(ell,1-S)]*4+[(p0,F(1)),(ell,chi),(theta,F(1)),(theta,F(1)),(ell,chi),(p0,F(1))]

JS_DOMAIN=r'''
const domain=JSON.parse(fs.readFileSync(path.join(root,'root.json'),'utf8'));
const labels='OHCDFYZPQR';
function gcd(a,b){a=a<0n?-a:a;b=b<0n?-b:b;while(b){const r=a%b;a=b;b=r;}return a;}
class Q{constructor(a,b=1n){if(a instanceof Q){this.n=a.n;this.d=a.d;return;}if(typeof a==='string'&&a.includes('/'))[a,b]=a.split('/');a=BigInt(a);b=BigInt(b);if(!b)throw Error('zero denominator');if(b<0n){a=-a;b=-b;}const g=gcd(a,b);this.n=a/g;this.d=b/g;}
add(x){x=R(x);return new Q(this.n*x.d+x.n*this.d,this.d*x.d);}neg(){return new Q(-this.n,this.d);}sub(x){return this.add(R(x).neg());}mul(x){x=R(x);return new Q(this.n*x.n,this.d*x.d);}div(x){x=R(x);return new Q(this.n*x.d,this.d*x.n);}cmp(x){x=R(x);const a=this.n*x.d-x.n*this.d;return a<0n?-1:a>0n?1:0;}toString(){return this.d===1n?String(this.n):this.n+'/'+this.d;}}
const R=x=>x instanceof Q?x:new Q(x);
function canon(w){const a=[...w].map(x=>labels.indexOf(x));let s=1;for(let i=0;i<a.length;i++)for(let j=i+1;j<a.length;j++)if(a[i]>a[j])s=-s;return[[...w].sort((x,y)=>labels.indexOf(x)-labels.indexOf(y)).join(''),s];}
function get(k,w){const[t,s]=canon(w);return(k[t]||0)*s;}
function put(k,w,s){const[t,e]=canon(w);if(k[t]&&k[t]!==e*s)throw Error('conflicting actual sign');k[t]=e*s;}
function choose(a,n){if(n===0)return[[]];const out=[];for(let i=0;i<=a.length-n;i++)for(const b of choose(a.slice(i+1),n-1))out.push([a[i],...b]);return out;}
const BASE={},hull='OCPDQFRH';for(const t of choose([...hull],3))put(BASE,t.join(''),1);
for(const t of 'YZ'){for(let i=0;i<hull.length;i++)put(BASE,hull[i]+hull[(i+1)%hull.length]+t,1);for(const[e,s]of Object.entries({OH:-1,OC:1,HC:1,HF:-1,CD:1,DF:1}))put(BASE,e+t,s);}put(BASE,'OYZ',1);
globalThis.C1RTL={Q,R,canon,get,put,BASE,labels,s:R('93/1000'),box:domain.box.map(b=>b.map(R)),polys:domain.polynomials};
for(const file of ['c1_js_threecap_replay.js','c1_js_threecap_linear_replay.js'])require(path.join(repo,'n10/discovery',file));
'''

JS_CHECK=r'''
const fs=require('fs'),path=require('path');const repo=process.argv[1],root=process.argv[2],ids=JSON.parse(process.argv[3]);
'''+JS_DOMAIN+r'''
const state=JSON.parse(fs.readFileSync(path.join(root,'state.json'),'utf8'));const original=C1RTL_CHECK.check(state);let count=0;
for(const id of ids){const d=JSON.parse(fs.readFileSync(path.join(root,id+'.json'),'utf8'));const leaf={assign:d.assign,steps:d.steps,meshes:d.meshes};const known=C1RTL_CHECK.geometry(leaf);if(JSON.stringify(Object.entries(known).sort())!==JSON.stringify(Object.entries(d.signs).sort()))throw Error('sign snapshot '+id);if(d.terminal)C1RTL_CHECK.terminal({...leaf,terminal:d.terminal},known);if(d.area)C1RTL_CHECK.arithmetic(d.area,known,d.meshes,true);count++;}
process.stdout.write(JSON.stringify({original,nodes:count}));
'''

class Audit:
    def __init__(self,root,repo):
        self.root=Path(root);self.repo=Path(repo);self.data={};self.atom_cache={};self.refine_cache={};self.stats=Counter();self.root_bounds=[]

    def node(self,id):
        if id in self.data:return self.data[id]
        d=read(self.root/(id+'.json'));check(d['id']==id,'node ID mismatch '+id)
        check(d['labels']==LABELS and d['vars']==VARIABLES,'point label/coordinate domain')
        check([tuple(map(F,b)) for b in d['box']]==initial_box(),'initial coordinate box')
        check(set(d['signs'])<=set(map(''.join,combinations(LABELS,3))),'noncanonical known signs')
        check(all(v in [-1,1] for v in d['signs'].values()),'invalid actual sign')
        for t,p in d['polynomials'].items():check(parse_poly(p)==determinant(t),'determinant expansion '+t)
        check(set(d['polynomials'])==set(map(''.join,combinations(LABELS,3))),'incomplete determinant catalogue')
        if d['area'] is not None:
            ar=d['area'];records={};latest={};latest_ref={}
            for rid,row in ar['initial'].items():
                check(rid not in records and row['triangle'] in d['signs'],'invalid initial actual area')
                records[rid]=row;latest[row['side'],row['triangle']]=F(row['value']);latest_ref[row['side'],row['triangle']]=rid
            for row in ar['updates']:
                check(row['id'] not in records,'reused immutable scalar bound')
                check(all(r in records for r in row['sources']),'future scalar source')
                records[row['id']]=row;latest[row['side'],row['triangle']]=F(row['value']);latest_ref[row['side'],row['triangle']]=row['id']
            if 'final' in ar:
                check(set(ar['final'])==set(d['signs']),'final actual-area domain')
                for t,b in ar['final'].items():
                    check(F(b['lo'])==latest['lo',t] and F(b['hi'])==latest['hi',t],'stale/unproved final area snapshot '+id+' '+t)
                    if 'finalRefs' in ar:check(ar['finalRefs'][t]=={side:latest_ref[side,t] for side in ['lo','hi']},'stale printed final area reference '+id+' '+t)
                    check(F(b['lo'])>0,'nonpositive final lower area')
                    if ar['end'] is None:check(F(b['lo'])<=F(b['hi']),'unrecorded area contradiction')
                self.stats['final_endpoints']+=2*len(ar['final'])
        self.data[id]=d;return d

    def area(self,d,word):
        sg=sign(d['signs'],word);check(sg!=0,'unknown actual-area sign '+word)
        return scale(determinant(word),sg)

    def relation(self,d,index):
        if 'sourceRelations' in d:return d['sourceRelations'][str(index)]
        return d['area']['relations'][index]

    def source(self,id,name):
        cache=(id,name)
        if cache in self.atom_cache:return self.atom_cache[cache]
        d=self.node(id);ar=d['area'];kn=d['signs'];h,c,dd,f=VARS[:4]
        if name.startswith('lo_') or name.startswith('hi_'):
            side,t=name.split('_',1);check(t in ar['final'],'missing final area '+name)
            a=self.area(d,t);bound=F(ar['final'][t][side]);p=add(a,constant(-bound)) if side=='lo' else add(constant(bound),scale(a,-1))
        elif name in ['order_hd','order_cf','order_hc']:
            a,b={'order_hd':(h,dd),'order_cf':(c,f),'order_hc':(h,c)}[name];p=minus(a,b)
        elif name=='right_support':p=add(multiply(multiply(dd,c),minus(ONE,c)),constant(-S))
        elif name=='left_support':p=add(multiply(multiply(f,h),minus(ONE,h)),constant(-S))
        elif name=='top_support':p=add(multiply(minus(ONE,dd),minus(ONE,f)),constant(-S))
        elif name=='central_two':p=add(constant(1-8*S),scale(multiply(minus(h,dd),minus(c,f)),-1))
        elif re.fullmatch(r'linear_\d+',name):
            i=int(name.split('_')[1]);r=self.relation(d,i)['rel'];check(r[0]=='linear','linear source relation kind');p=add(constant(-F(r[2])),*(scale(self.area(d,t),a) for t,a in r[1].items()))
        elif re.fullmatch(r'quad_\d+',name):
            i=int(name.split('_')[1]);r=self.relation(d,i)['rel'];check(r[0]=='quad','quad source relation kind');p=add(self.area(d,r[1]),self.area(d,r[2]),constant(-F(r[3])))
        elif re.fullmatch(r'(?:area_)?support_\d+_[0-3]_[xy]_(?:scalar|anchor)',name):
            m=re.fullmatch(r'(area_)?support_(\d+)_([0-3])_([xy])_(scalar|anchor)',name);extra,i,rot,axis,tag=m.groups();item=self.relation(d,int(i));r=item['rel'];check(r[0]=='quad' and item['witness'][0]=='quad','support source geometry')
            hull,pts=item['witness'][1:];rot=int(rot);hull=hull[rot:]+hull[:rot];check(convex(kn,hull) and pts and len(set(pts))==len(pts) and all(inside(kn,hull,t) for t in pts),'unproved physical quad support')
            A,B,C,D=hull;words=[A+B+C,A+B+D,A+C+D,B+C+D];names=list(map(key,words));X,Y,Z,V=[self.area(d,t) for t in words];delta=minus(Y,Z)
            lows=[F(ar['final'][t]['lo']) for t in names]
            q=F(1142,125) if len(pts)>=2 else F(29,5)
            nz,nv=[sum(inside(kn,w,t) for t in pts) for w in words[2:]]
            if len(pts)==2:q=max(q,{(0,0):F(9),(0,1):F(9),(0,2):F(139,10),(1,1):F(12),(1,2):F(199,10),(2,2):F(149,5)}[tuple(sorted((nz,nv)))])
            elif len(pts)==1:q={(0,0):F(29,5),(0,1):F(149,20),(1,1):F(12)}[tuple(sorted((nz,nv)))]
            index=0 if axis=='x' else 1;other=Y if index==0 else X;cap=self.cap(d,names[index],tag)
            if extra:
                floor=max(F(r[3]),lows[0]+lows[2],lows[1]+lows[3]);M=min(lows[0]*lows[1],lows[2]*lows[3]);check(floor>0 and min(lows)>0,'area-support positivity');p=add(multiply(cap,other),scale(delta,-floor),constant(-M))
            else:p=add(multiply(cap,other),scale(delta,-q*S))
        elif re.fullmatch(r'pent_[A-Z]{5}_[0-4]_[xy]_(?:scalar|anchor)',name):
            _,seq,rot,axis,tag=name.split('_');check(set(seq)<=set(OUTER) and (convex(kn,seq,1) or convex(kn,seq,-1)),'unproved five-chain convexity');rot=int(rot);A,B,C,D,E=seq[rot:]+seq[:rot];words=[A+B+E,A+D+E,A+B+D];names=list(map(key,words));X,Y,Z=map(lambda t:self.area(d,t),words);index=0 if axis=='x' else 1;cap=self.cap(d,names[index],tag);p=add(multiply(cap,Y if index==0 else X),scale(minus(X,Z),-11*S))
        elif re.fullmatch(r'spread_\d+_[A-Z]{2}_-?1',name):
            _,i,edge,ss=name.split('_');item=self.relation(d,int(i));r=item['rel'];check(r[0]=='quad','spread source kind');hull,pts=item['witness'][1:];check(convex(kn,hull) and len(pts)==2 and len(set(pts))==2 and all(inside(kn,hull,p) for p in pts),'spread occupants');diags=[hull[0]+hull[2],hull[1]+hull[3]];check(edge in diags and all(sign(kn,e+pts[0])*sign(kn,e+pts[1])==-1 for e in diags),'spread diagonal separation');W=add(self.area(d,r[1]),self.area(d,r[2]));dif=minus(determinant(edge[1]+pts),determinant(edge[0]+pts));rate=F(6) if set(hull)==set('HCDF') else F(1457,250);p=add(W,constant(-rate*S),scale(dif,int(ss)))
        else:raise AssertionError('unlisted physical atom '+name)
        if 'printedFactors' in d:
            check(name in d['printedFactors'],'unprinted physical atom '+name)
            check(parse_poly(d['printedFactors'][name])==p,'incorrect printed physical polynomial '+id+' '+name)
        self.atom_cache[cache]=p;self.stats['physical_sources']+=1;return p

    def cap(self,d,t,tag):
        if tag=='scalar':return constant(F(d['area']['final'][t]['hi']))
        caps={key('HCD'):VARS[0],key('HCF'):VARS[1],key('HDF'):minus(ONE,VARS[2]),key('CDF'):minus(ONE,VARS[3])}
        check(t in caps,'unproved affine anchor cap');return caps[t]

    def endpoint_lines(self,p,target,box):
        check(all(len(mon)==len(set(mon)) for mon in p),'non-multiaffine refinement factor')
        support=sorted(set(i for m in p for i in m));check(target in support,'absent refinement target');other=[i for i in support if i!=target];out=set()
        for bs in product([0,1],repeat=len(other)):
            at={i:box[i][b] for i,b in zip(other,bs)};a=b=F(0)
            for mon,c in p.items():
                v=c
                for i in mon:
                    if i!=target:v*=at[i]
                if target in mon:a+=v
                else:b+=v
            out.add((a,b))
        return out

    def hull(self,lines,old):
        possible=[]
        for a,b in lines:
            lo,hi=old
            if a>0:lo=max(lo,-b/a)
            elif a<0:hi=min(hi,-b/a)
            elif b<0:continue
            if lo<=hi:possible.append((lo,hi))
        return (min(a for a,b in possible),max(b for a,b in possible)) if possible else None

    def refinement(self,id,ref):
        signature=(id,json.dumps(ref,sort_keys=True))
        if signature in self.refine_cache:return self.refine_cache[signature]
        box=initial_box();seen=set()
        for row in ref.get('globalBounds',[]):
            check(id!='root','root global-bound circularity');ci=row['certificate'];check(isinstance(ci,int) and 0<=ci<len(self.root_bounds) and ci not in seen,'global bound source index');seen.add(ci);cert=self.root_bounds[ci];j=cert['coordinate'];side=cert['side'];check(row['coordinate']==j and row['side']==side,'global bound source target');value=F(cert['value']);endpoint=down(value) if side=='lo' else up(value);check(F(row['endpoint'])==endpoint,'global bound outward endpoint');lo,hi=box[j];box[j]=(max(lo,endpoint),hi) if side=='lo' else (lo,min(hi,endpoint));check(box[j][0]<=box[j][1],'global bound empty interval')
        for row in ref['trace']:
            p=self.source(id,row['factor']);j=row['target'];check(isinstance(j,int) and 0<=j<N,'refinement coordinate');check(tuple(map(F,row['old']))==box[j],'stale coordinate source interval');actual=self.endpoint_lines(p,j,box);printed=set(tuple(map(F,z)) for z in row['lines']);check(len(printed)==len(row['lines']) and actual==printed,'incomplete exact endpoint lines');raw=self.hull(actual,box[j]);check(raw is not None and tuple(map(F,row['raw']))==raw,'incorrect exact endpoint hull');lo,hi=map(F,row['new']);check(box[j][0]<=lo<=raw[0]<=raw[1]<=hi<=box[j][1] and lo<=hi,'unsafe refinement enclosure');check((lo*10**6).denominator==1 or lo==box[j][0],'unsafe lower rounding grid');check((hi*10**6).denominator==1 or hi==box[j][1],'unsafe upper rounding grid');box[j]=(lo,hi);self.stats['coordinate_updates']+=1
        check([b[0] for b in box]==list(map(F,ref['low'])) and [b[1] for b in box]==list(map(F,ref['high'])),'refinement final snapshot')
        term=ref['contradiction']
        if term:
            p=self.source(id,term['factor'])
            if term['kind']=='negative-constant':check(not any(p) and p.get((),F(0))==F(term['value'])<0,'negative constant terminal')
            else:
                check(term['kind']=='empty-endpoint-union','unknown refinement terminal');j=term['target'];check(tuple(map(F,term['old']))==box[j],'terminal old interval');actual=self.endpoint_lines(p,j,box);printed=set(tuple(map(F,z)) for z in term['lines']);check(actual==printed and len(printed)==len(term['lines']) and self.hull(actual,box[j]) is None,'nonempty terminal endpoint union')
            self.stats['coordinate_terminals']+=1
        self.refine_cache[signature]=box;return box

    def translate(self,p,box):
        out={}
        for mon,c in p.items():
            term=constant(c)
            for i in mon:term=multiply(term,add(constant(box[i][0]),scale(variable(i),box[i][1]-box[i][0])))
            out=add(out,term)
        return out

    def polynomial_sum(self,id,cert,box,objective=None):
        check([tuple(map(F,b)) for b in cert['box']]==box,'unproved polynomial certificate box')
        check(all(lo<hi for lo,hi in box),'nonpositive normalized coordinate width')
        cache={};total={}
        for row in cert['factors']:
            weight=row['weight'];check(isinstance(weight,int) and weight>0,'nonpositive/noninteger polynomial weight');check(isinstance(row['atoms'],list) and row['atoms'],'empty factor product');term=constant(weight)
            for name in row['atoms']:
                if name not in cache:
                    if re.fullmatch(r'L\d+',name):
                        z=int(name[1:]);check(z<2*N,'coordinate factor index');j=z//2;p=minus(variable(j),constant(box[j][0])) if z%2==0 else minus(constant(box[j][1]),variable(j))
                    else:p=self.source(id,name)
                    cache[name]=self.translate(p,box)
                term=multiply(term,cache[name])
            total=add(total,term);self.stats['positive_products']+=1
        if objective is not None:
            j,side,weight=objective;check(isinstance(weight,int) and weight>0,'objective integer weight');total=add(total,scale(variable(j),weight*(1 if side=='hi' else -1)))
        check(total==parse_poly(cert['sum']),'incorrect expanded weighted polynomial sum '+id)
        upper=total.get((),F(0))+sum(c for mon,c in total.items() if mon and c>0)
        check(upper==F(cert['upper']),'incorrect normalized polynomial upper '+id)
        return upper

    def global_coordinates(self):
        d=self.node('root');check(d['assign']=={},'global root has extra sign assumptions');ref=read(self.root/'root-physical-refine.json');check(not ref.get('globalBounds') and ref['contradiction'] is None,'root refinement premise');box=self.refinement('root',ref)
        certs=read(self.root/'root-coordinate-lp.json')
        for cert in certs:
            j,side,weight=cert['coordinate'],cert['side'],cert['objectiveWeight'];check(isinstance(j,int) and 0<=j<N and side in ['lo','hi'],'global coordinate target');upper=self.polynomial_sum('root',cert,box,(j,side,weight));raw=upper/F(weight);lo,hi=box[j];value=lo+(hi-lo)*(raw if side=='hi' else -raw);check(value==F(cert['value']),'wrong global physical coordinate bound');gain=value-lo if side=='lo' else hi-value;check(gain==F(cert['gain']) and gain>0,'global coordinate gain');self.root_bounds.append(cert);self.stats['global_coordinate_certificates']+=1

    def coverage(self,state,tree):
        original=state['nodes'];extension=tree['nodes'];original_queue={row['id']:row for row in state['queue']};new_queue={row['id']:row for row in tree['queue']};check(len(original_queue)==len(state['queue']) and len(new_queue)==len(tree['queue']),'repeated frontier');visited_old=set();visited_new=set();used_queue=set();leaves=[]
        def visit(id,assign,in_extension=False):
            if id in original:
                check(not in_extension and id not in extension and id not in visited_old,'extension overwrites original proof');visited_old.add(id);node=original[id]
            else:
                if not in_extension:check(id in original_queue and original_queue[id]['assign']==assign,'lost original frontier');in_extension=True
                if id not in extension:
                    check(id in new_queue and new_queue[id]['assign']==assign,'missing extension branch');used_queue.add(id);return
                check(id not in visited_new,'repeated extension node');visited_new.add(id);node=extension[id];check(node['id']==id,'extension node ID')
            check(node['assign']==assign,'signed ancestry mismatch '+id)
            if node['kind']=='split':
                t=node['triangle'];canonical(t)
                for suffix,sg in [('m',-1),('p',1)]:visit(id+suffix,{**assign,t:sg},in_extension)
            elif in_extension:
                check(node['kind'] in ['physical','geometry','area'],'unclosed extension kind');d=self.node(id);check(d['assign']==assign,'node data has hidden branch assumptions')
                if node['kind']=='physical':
                    ref=read(self.root/(id+'-physical-refine.json'));box=self.refinement(id,ref);cp=self.root/(id+'-physical-cert.json')
                    if ref['contradiction'] is None:
                        check(cp.exists(),'physical leaf lacks certificate');cert=read(cp)
                        if 'refinement' in cert:box=self.refinement(id,cert['refinement'])
                        upper=self.polynomial_sum(id,cert,box);check(upper<0,'nonnegative polynomial terminal');self.stats['polynomial_terminals']+=1
                    leaves.append(id)
                elif node['kind']=='geometry':check(d['terminal'] is not None,'missing actual geometric terminal');leaves.append(id)
                else:check(d['area']['end'] is not None,'missing exact scalar terminal');leaves.append(id)
            else:
                check(node['kind'] in ['linear','area','geometry'],'unclosed original node');self.stats['original_terminal_leaves']+=1
        visit('r',{})
        check(visited_old==set(original) and visited_new==set(extension) and used_queue==set(new_queue),'unreachable proof node/frontier')
        self.stats['extension_splits']=sum(extension[n]['kind']=='split' for n in visited_new);self.stats['extension_leaves']=len(leaves);self.stats['queued_branches']=len(new_queue)
        return sorted(visited_new)

    def run(self):
        start=time.time();state=read(self.root/'state.json');tree=read(self.root/'physical-tree.json')
        ids=['root']+list(tree['nodes']);js=subprocess.run(['node','-e',JS_CHECK,str(self.repo.resolve()),str(self.root.resolve()),json.dumps(ids)],capture_output=True,text=True)
        check(js.returncode==0,'existing independent sign/scalar replay failed: '+js.stderr);report=json.loads(js.stdout)
        self.global_coordinates();visited=self.coverage(state,tree)
        # Every split's geometry/scalar stage also receives final-snapshot audit.
        for id in visited:
            data=self.node(id)
            for name in data.get('printedFactors',{}):self.source(id,name)
        for name in self.node('root').get('printedFactors',{}):self.source('root',name)
        self.stats['geometry_scalar_nodes']=report['nodes'];self.stats['elapsed_seconds']=round(time.time()-start,3)
        return {'complete':self.stats['queued_branches']==0,'stats':dict(self.stats),'areaOnlyReplay':report['original'],'physicalLeavesDischarged':self.stats['extension_leaves'],'remaining':tree['queue']}

def md_blocks(text):
    out={}
    for match in re.finditer(r'^```(c1-[a-z-]+)\n(.*?)^```\s*$',text,re.M|re.S):
        tag,body=match.groups();check(tag not in out,'repeated literal block '+tag)
        out[tag]=[json.loads(line) for line in body.splitlines() if line.strip()]
    return out

def one(blocks,tag):
    check(tag in blocks and len(blocks[tag])==1,'missing/singular literal block '+tag)
    return blocks[tag][0]

def term_rows(rows):
    out={}
    for mon,c in rows:
        check(isinstance(mon,list) and tuple(sorted(mon))==tuple(mon) and all(isinstance(i,int) and 0<=i<N for i in mon),'invalid literal exponent list')
        key0=','.join(map(str,mon));check(key0 not in out,'repeated literal monomial');out[key0]=c
    return out

def md_stage(blocks):
    initial={}
    for ref,row in blocks['c1-area-initial']:
        check(ref not in initial,'repeated literal initial reference');initial[ref]=row
    source={}
    for i,rel,witness in blocks['c1-area-relations']:
        check(isinstance(i,int) and i>=0 and str(i) not in source,'repeated/invalid literal relation index');source[str(i)]={'rel':rel,'witness':witness}
    ordered=sorted(map(int,source));remap={i:j for j,i in enumerate(ordered)}
    updates=[]
    for row in blocks['c1-area-updates']:
        check(row['relation'] in remap,'literal update lacks relation');updates.append({**row,'relation':remap[row['relation']]})
    stage={'initial':initial,'relations':[source[str(i)] for i in ordered],'updates':updates,'end':one(blocks,'c1-area-end')}
    if 'c1-area-final' in blocks:
        stage['final']={};stage['finalRefs']={}
        for t,b,refs in blocks['c1-area-final']:
            check(t not in stage['final'],'repeated literal final triangle');stage['final'][t]=b;stage['finalRefs'][t]=refs
    return stage,source

def md_combination(blocks,tag):
    cert=dict(one(blocks,tag));check(not {'factors','sum','refinement'}&set(cert),'hidden literal combination fields')
    cert['factors']=blocks['c1-combination'];cert['sum']=term_rows(blocks['c1-shifted-polynomial']);return cert

def markdown_records(tables,destination,repo):
    """Translate literal mathematical tables to temporary reader input.

    Only these Markdown files are proof inputs. The temporary JSON is a
    serialization generated by this parser, never a discovery certificate.
    """
    tables=Path(tables);destination=Path(destination);index=md_blocks((tables/'INDEX.md').read_text());meta=one(index,'c1-proof-metadata')
    check(meta['format']=='c1-two-central-three-caps-v1' and F(meta['threshold'])==S and meta['labels']==LABELS and meta['variables']==VARIABLES,'literal theorem domain')
    check([tuple(map(F,b)) for b in meta['initialBox']]==initial_box(),'literal initial coordinate box')
    nodes={};leaves={};physical={};expected_files={'INDEX.md',meta['commonBounds']}
    for id,triangle,assign,minus_child,plus_child in index['c1-tree']:
        check(id not in nodes and minus_child==id+'m' and plus_child==id+'p','literal binary children');canonical(triangle);nodes[id]={'kind':'split','triangle':triangle,'assign':assign}
    polynomial_data={''.join(t):{','.join(map(str,m)):int(c) for m,c in determinant(''.join(t)).items()} for t in combinations(LABELS,3)}
    rootdata={}

    def parse_node(blocks):
        metadata=one(blocks,'c1-node');id=metadata['id'];check(metadata['kind'] in ['coordinate-bounds','physical','area','linear','geometry'],'literal node kind')
        data={**metadata,'labels':LABELS,'vars':VARIABLES,'box':meta['initialBox'],'polynomials':polynomial_data,'steps':blocks['c1-geometry'],'terminal':None}
        check('meshes' in data and 'assign' in data,'literal geometric premises')
        if 'c1-area-initial' in blocks:data['area'],data['sourceRelations']=md_stage(blocks)
        else:data['area']=None
        if 'c1-geometric-terminal' in blocks:data['terminal']=one(blocks,'c1-geometric-terminal')
        if 'c1-physical-factors' in blocks:
            data['printedFactors']={}
            for name,terms in blocks['c1-physical-factors']:
                check(name not in data['printedFactors'],'repeated printed physical factor');data['printedFactors'][name]=term_rows(terms)
        if 'c1-refinement-metadata' in blocks:
            ref=dict(one(blocks,'c1-refinement-metadata'));check('trace' not in ref,'hidden coordinate updates');ref['trace']=blocks['c1-coordinate-updates'];(destination/(id+'-physical-refine.json')).write_text(json.dumps(ref))
        return data

    for id,kind,file in index['c1-leaves']:
        check(re.fullmatch(r'r[mp]*',id) and file==id+'.md' and id not in leaves and id not in nodes,'literal leaf identity');expected_files.add(file);blocks=md_blocks((tables/file).read_text());data=parse_node(blocks);check(data['id']==id and data['kind']==kind,'leaf metadata differs');leaves[id]=(data,blocks)
        if kind=='physical':
            physical[id]={'id':id,'kind':kind,'assign':data['assign']}
            if 'c1-physical-certificate' in blocks:(destination/(id+'-physical-cert.json')).write_text(json.dumps(md_combination(blocks,'c1-physical-certificate')))
        else:
            node={'kind':kind,'assign':data['assign'],'steps':data['steps'],'meshes':data['meshes']}
            if kind=='area':node['proof']=data['area']
            elif kind=='geometry':node['terminal']=data['terminal']
            elif kind=='linear':
                check(data['area']['end'] is None,'linear scalar stage already terminal');relations={}
                for i,row in blocks['c1-linear-relations']:
                    check(str(i) not in relations,'repeated literal affine relation');relations[str(i)]=row
                node['packet']={'id':id,'leaf':{'assign':data['assign'],'steps':data['steps'],'meshes':data['meshes']},'stage':data['area'],'relations':relations,'certificate':one(blocks,'c1-linear-certificate')}
            nodes[id]=node
        rootdata[id]=data
    common=(tables/meta['commonBounds']).read_text();parts=re.split(r'^## Bound (\d+)\s*$',common,flags=re.M);check(len(parts)%2==1,'common coordinate section format');common_data=parse_node(md_blocks(parts[0]));check(common_data['id']=='root' and common_data['kind']=='coordinate-bounds','literal common bounds root');rootdata['root']=common_data
    certs=[]
    for i in range(1,len(parts),2):
        check(int(parts[i])==len(certs),'coordinate certificate order');certs.append(md_combination(md_blocks(parts[i+1]),'c1-coordinate-certificate'))
    (destination/'root-coordinate-lp.json').write_text(json.dumps(certs))
    check({p.name for p in tables.glob('*.md')}==expected_files,'unlisted literal companion file')
    counts=Counter({'split':sum(n['kind']=='split' for n in nodes.values())});counts.update(kind for _,kind,_ in index['c1-leaves']);check(dict(counts)==meta['counts'],'literal proof counts')
    # Recover actual known signs by replaying only the printed geometry, using
    # a fixed coordinate-domain stub rather than the discovery implementation.
    for id,data in rootdata.items():(destination/(id+'.json')).write_text(json.dumps(data))
    script="const fs=require('fs'),path=require('path');const repo=process.argv[1],root=process.argv[2],ids=JSON.parse(process.argv[3]);\n"+JS_DOMAIN+"\nconst out={};for(const id of ids){const d=JSON.parse(fs.readFileSync(path.join(root,id+'.json'),'utf8'));out[id]=C1RTL_CHECK.geometry({assign:d.assign,steps:d.steps,meshes:d.meshes});}process.stdout.write(JSON.stringify(out));"
    result=subprocess.run(['node','-e',script,str(Path(repo).resolve()),str(destination.resolve()),json.dumps(list(rootdata))],capture_output=True,text=True);check(result.returncode==0,'literal geometry replay: '+result.stderr);known=json.loads(result.stdout)
    for id,data in rootdata.items():
        data['signs']=known[id];(destination/(id+'.json')).write_text(json.dumps(data))
    state={'version':1,'nodes':nodes,'queue':[{'id':id,'assign':data['assign']} for id,(data,_) in leaves.items() if data['kind']=='physical'],'done':False}
    (destination/'state.json').write_text(json.dumps(state));(destination/'physical-tree.json').write_text(json.dumps({'nodes':physical,'queue':[]}))
    return meta

def main():
    parser=argparse.ArgumentParser();parser.add_argument('--records',help='Optional discovery checkpoint; default reads only hand Markdown.');parser.add_argument('--tables',default=str(Path(__file__).resolve().parent/'C1_TWO_CENTRAL_THREE_CAPS_TABLES'));parser.add_argument('--repo',default=str(Path(__file__).resolve().parents[2]));args=parser.parse_args()
    if args.records:result=Audit(args.records,args.repo).run()
    else:
        with tempfile.TemporaryDirectory(prefix='c1-literal-audit-') as directory:
            meta=markdown_records(args.tables,directory,args.repo);result=Audit(directory,args.repo).run();result['literalCounts']=meta['counts'];result['proofInputs']='literal Markdown only'
    print(json.dumps(result,indent=2))

if __name__=='__main__':main()
