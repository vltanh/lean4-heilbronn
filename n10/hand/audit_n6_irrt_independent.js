/* Independent IRRT audit: reconstructs all geometry, rational polynomials,
 * endpoint-line hulls, immutable scalar updates, and McCormick affine factors.
 * Premises: the published N6 domain, occupied-side bounds, triangle occupancy,
 * and actual quadrilateral occupancy theorems stated in the IRRT manuscript.
 * This file uses no discovery engine or author replay implementation.
 */
function createIRRTIndependentAudit(){

const LABELS="ABCEFHPQRS", ANCHORS="ABCEFH", VARS="a b c e f h p q u v r w j k".split(" ");
function need(ok,msg){if(!ok)throw Error(msg);}
function gcd(x,y){x=x<0n?-x:x;y=y<0n?-y:y;while(y){const t=x%y;x=y;y=t;}return x;}
function rat(n,d=1n){n=BigInt(n);d=BigInt(d);need(d!==0n,"zero denominator");if(d<0n){n=-n;d=-d;}const g=gcd(n,d);return {n:n/g,d:d/g};}
function Q(x){if(x&&typeof x==="object"&&!Array.isArray(x)&&"n"in x)return x;if(Array.isArray(x))return rat(x[0],x[1]);const p=String(x).split("/");return rat(p[0],p[1]||1);}
const Z=rat(0),ONE=rat(1),S=Q("93/1000"),ALPHA=Q("1037/10000"),K=Q("149/20"),J=Q("4427/500"),G=Q("1457/250"),SCALE=1000000n;
const add=(a,b)=>rat(a.n*b.d+b.n*a.d,a.d*b.d), neg=a=>({n:-a.n,d:a.d}), sub=(a,b)=>add(a,neg(b)), mul=(a,b)=>rat(a.n*b.n,a.d*b.d), div=(a,b)=>rat(a.n*b.d,a.d*b.n);
function cmp(a,b){const n=a.n*b.d-b.n*a.d;return n<0n?-1:n>0n?1:0;}
const eq=(a,b)=>cmp(a,b)===0, le=(a,b)=>cmp(a,b)<=0, lt=(a,b)=>cmp(a,b)<0;
const min=(...a)=>a.reduce((x,y)=>lt(x,y)?x:y),max=(...a)=>a.reduce((x,y)=>lt(x,y)?y:x),sum=a=>a.reduce(add,Z),str=a=>a.n+"/"+a.d;
function down(x){const n=x.n*SCALE;let q=n/x.d;if(n<0n&&n%x.d)q--;return rat(q,SCALE);}
const up=x=>neg(down(neg(x)));
const sameQ=(x,y)=>eq(Q(x),Q(y));
function combos(seq,n){const a=[...seq],out=[];function f(v,j){if(v.length===n){out.push(v);return;}for(let i=j;i<=a.length-(n-v.length);i++)f([...v,a[i]],i+1);}f([],0);return out;}
function permutations(a){a=[...a];if(a.length===0)return [[]];return a.flatMap((x,i)=>permutations(a.filter((_,j)=>j!==i)).map(v=>[x,...v]));}
function canonical(w){need(w.length===3&&new Set(w).size===3&&[...w].every(x=>LABELS.includes(x)),"invalid actual triple "+w);const a=[...w];let n=0;for(let i=0;i<3;i++)for(let j=i+1;j<3;j++)if(LABELS.indexOf(a[i])>LABELS.indexOf(a[j]))n++;a.sort((x,y)=>LABELS.indexOf(x)-LABELS.indexOf(y));return [a.join(""),n%2?-1:1];}
function sign(kn,w){if(new Set(w).size<3)return 0;const[k,e]=canonical(w);return (kn[k]||0)*e;}
function impose(kn,w,s){need(s===1||s===-1,"invalid sign");const[k,e]=canonical(w),v=e*s;need(!kn[k]||kn[k]===v,"inconsistent sign "+w);kn[k]=v;}
const edgeWords=h=>[...h].map((x,i)=>x+h[(i+1)%h.length]);
function inside(kn,h,p){if(h.includes(p))return false;const s=sign(kn,h.slice(0,3));return !!s&&edgeWords(h).every(e=>sign(kn,e+p)===s);}
function convex(kn,h){return new Set(h).size===h.length&&combos(h,3).every(w=>sign(kn,w.join(""))===1);}
const cost=n=>{need(Number.isInteger(n)&&n>=0&&n<=3,"unsupported triangle occupancy");return [ONE,Q(3),K,J][n];};
function occupied(kn,h){return [...LABELS].filter(p=>inside(kn,h,p));}
function equalSet(a,b){return a.length===b.length&&new Set(a).size===a.length&&a.every(x=>b.includes(x));}
function qpoly(c){const v=Q(c);return v.n?new Map([["",v]]):new Map();}
function vpoly(i){return new Map([[String(i),ONE]]);}
function plus(...args){const out=new Map();for(const p of args)for(const[m,c]of p){const d=add(out.get(m)||Z,c);if(d.n)out.set(m,d);else out.delete(m);}return out;}
function timesConstant(p,q){const out=new Map();for(const[m,c]of p){const d=mul(c,q);if(d.n)out.set(m,d);}return out;}
function minus(a,b){return plus(a,timesConstant(b,neg(ONE)));}
function times(a,b){const out=new Map();for(const[m,c]of a)for(const[n,d]of b){const key=[...m.split(",").filter(Boolean),...n.split(",").filter(Boolean)].map(Number).sort((x,y)=>x-y).join(",");const value=add(out.get(key)||Z,mul(c,d));if(value.n)out.set(key,value);else out.delete(key);}return out;}
const V=VARS.map((_,i)=>vpoly(i)), P0=qpoly(0),P1=qpoly(1);
const POINTS={A:[P0,V[0]],B:[V[1],P0],C:[V[2],P0],E:[P1,V[3]],F:[V[4],P1],H:[P0,V[5]],P:[V[6],V[7]],Q:[V[8],V[9]],R:[V[10],V[11]],S:[V[12],V[13]]};
const determinantCache=new Map();
function determinant(w){if(determinantCache.has(w))return determinantCache.get(w);const[A,B,C]=[...w].map(x=>POINTS[x]);const p=minus(times(minus(B[0],A[0]),minus(C[1],A[1])),times(minus(B[1],A[1]),minus(C[0],A[0])));determinantCache.set(w,p);return p;}
function termsPoly(terms){let out=new Map();for(const[m,c]of terms){need(Array.isArray(m)&&m.every(i=>Number.isInteger(i)&&i>=0&&i<VARS.length),"bad monomial");const key=m.slice().sort((a,b)=>a-b).join(",");need(new Set(m).size===m.length,"non-multiaffine factor");need(!out.has(key),"duplicate monomial");const d=Q(c);if(d.n)out.set(key,d);}return out;}
function samePoly(a,b){return a.size===b.size&&[...a].every(([m,c])=>b.has(m)&&eq(c,b.get(m)));}
function evaluate(p,values){let r=Z;for(const[m,c]of p){let x=c;for(const i of m.split(",").filter(Boolean).map(Number))x=mul(x,values[i]);r=add(r,x);}return r;}
function support(p){return [...new Set([...p.keys()].flatMap(m=>m.split(",").filter(Boolean).map(Number)))].sort((a,b)=>a-b);}
function vertexMaximum(p,lo,hi){const used=support(p);need(used.length<=14,"too many coordinates");const at=lo.slice();let best=null;for(let b=0;b<2**used.length;b++){used.forEach((i,j)=>at[i]=(b&(1<<j))?hi[i]:lo[i]);const value=evaluate(p,at);if(best===null||lt(best,value))best=value;}return best;}


const TC=[S,mul(Q(3),S),Q("347/500"),Q("823/1000")];
const irCost=n=>{need(Number.isInteger(n)&&n>=0&&n<=3,"bad triangle occupant count");return TC[n];};
function irBase(){
 const kn={};for(const t of combos(ANCHORS,3))impose(kn,t.join(""),1);
 for(const T of "PQRS")for(const[e,s]of [["AB",1],["AC",1],["AH",-1],["BC",1],["BH",-1],["CH",-1]])impose(kn,e+T,s);
 for(const T of "PRS")for(const[e,s]of [["EF",1],["EH",1],["FH",1]])impose(kn,e+T,s);
 for(const[e,s]of [["EF",-1],["EH",-1],["FH",1],["AE",1],["AF",-1],["BE",1],["BF",-1],["CE",1],["CF",-1]])impose(kn,e+"Q",s);
 impose(kn,"CEP",1);impose(kn,"BEP",1);
 for(const T of "RS")for(const e of ["AE","AF","BE","BF","CE","CF"])impose(kn,e+T,-1);
 for(const[t,s]of [["ERS",-1],["CRS",1],["BRS",1],["EQR",1],["EQS",1]])impose(kn,t,s);
 return kn;
}
function irBox(){
 const rho=Q("347/500"),eps=ALPHA,emax=Q("897/1000"),cmax=Q("609/1000"),bmax=sub(ONE,div(rho,emax)),amin=div(S,sub(cmax,eps)),amax=sub(ONE,div(S,bmax)),emin=div(rho,sub(ONE,eps)),cmin=mul(Q(4),S),rmin=Q("23/25"),wmax=sub(emax,div(mul(Q(3),S),sub(ONE,cmin))),xmin=div(S,sub(ONE,amin));
 const fmax=min(cmax,sub(ONE,div(S,sub(ONE,emin)))),umin=add(eps,div(S,sub(ONE,emin))),vmin=add(emin,div(S,sub(ONE,eps)));
 return[[amin,amax],[eps,bmax],[cmin,cmax],[emin,emax],[eps,fmax],[emin,ONE],[xmin,sub(ONE,S)],[amin,sub(ONE,S)],[umin,ONE],[vmin,ONE],[rmin,ONE],[amin,wmax],[div(add(add(mul(Q(5),cmin),Q(3)),mul(Q(3),rmin)),Q(11)),div(add(mul(Q(3),cmax),Q(8)),Q(11))],[div(mul(Q(3),add(emin,amin)),Q(11)),div(add(mul(Q(5),emax),mul(Q(3),wmax)),Q(11))]];
}
function irSigned(kn,t){need(sign(kn,t),"unknown determinant "+t);return timesConstant(determinant(t),Q(sign(kn,t)));}
function irCap(tri,claimed,witness,box,kn,stats){
 const value=Q(claimed),type=witness[0];need(sign(kn,tri),"unknown cap orientation");
 if(type==="box"){
  const poly=irSigned(kn,tri),ids=support(poly);need(JSON.stringify(ids)===JSON.stringify(witness[1]),"cap support mismatch");
  need(witness[2].length===2**ids.length,"incomplete cap endpoint residuals");let hit=false;
  const at=box.map(x=>x[0]);for(let mask=0;mask<2**ids.length;mask++){ids.forEach((v,j)=>at[v]=box[v][mask&(1<<j)?1:0]);const residual=sub(value,evaluate(poly,at));need(le(Z,residual)&&eq(residual,Q(witness[2][mask])),"false area cap residual");if(eq(residual,Z))hit=true;}
  need(hit,"cap is not its declared exact maximum");stats.capVertices+=witness[2].length;
 }else if(type==="unit")need(eq(value,ONE),"wrong square cap");
 else if(type==="side_outer"){need(tri==="CER"&&witness[1]==="CER"&&witness[2]==="S"&&inside(kn,"CER","S")&&eq(value,mul(Q("11/3"),S)),"invalid outer side cap");}
 else if(type==="side_fan"){need(["CES","CRS","ERS"].includes(tri)&&witness[1]==="CER"&&witness[2]==="S"&&witness[3]===tri&&inside(kn,"CER","S")&&eq(value,mul(Q("5/3"),S)),"invalid side fan cap");}
 else if(type==="outer_bottom"){need(tri==="BCR"&&witness[1]==="CER"&&witness[2]==="S"&&eq(value,mul(Q("3/2"),S)),"invalid outer bottom cap");}
 else throw Error("unlisted cap witness "+type);
 stats.caps++;return value;
}
function irGeometry(record,assign,box,stats){
 const kn=irBase();for(const[t,s]of Object.entries(assign))impose(kn,t,s);
 need(record.meshes.length===0,"unexpected mesh in IRRT");
 for(const row of record.steps){
  if(row[0]==="plu"){
   const[_,word,target,sg]=row,[a,b,c,d,e]=word;need(new Set(word).size===5,"Plucker labels");
   const terms=[[a+b+c,a+d+e,1],[a+b+d,a+c+e,-1],[a+b+e,a+c+d,1]],values=terms.map(([u,v,s])=>s*sign(kn,u)*sign(kn,v)),nz=values.filter(Boolean);
   need(nz.length===2&&nz[0]===nz[1],"Plucker premises");const[u,v,s]=terms[values.indexOf(0)],su=sign(kn,u),sv=sign(kn,v);need(!!su!==!!sv,"two unknown product factors");
   const want=su?v:u,value=-nz[0]*s*(su||sv),[kt,pt]=canonical(target),[kw,pw]=canonical(want);need(kt===kw&&pt*sg===pw*value&&!sign(kn,target),"wrong Plucker conclusion");impose(kn,target,sg);stats.plucker++;
  }else if(row[0]==="capacity"){
   const[_,tri,occupants0,p,target,sg,cap,witness]=row,occ=[...occupants0],orientation=sign(kn,tri);
   need(orientation&&new Set(occ).size===occ.length&&occ.every(x=>inside(kn,tri,x))&&!tri.includes(p)&&!occ.includes(p),"capacity containment");
   irCap(tri,cap,witness,box,kn,stats);need(occ.length===3||lt(Q(cap),irCost(occ.length+1)),"insufficient capacity cap");
   const tests=edgeWords(tri).map(e=>[e+p,sign(kn,e+p)]);need(tests.filter(x=>x[1]===orientation).length===2,"capacity inward edges");
   const missing=tests.find(x=>!x[1]);need(missing,"capacity has no missing edge");const[a,sa]=canonical(missing[0]),[b,sb]=canonical(target);need(a===b&&sa*(-orientation)===sb*sg&&!sign(kn,target),"capacity conclusion");impose(kn,target,sg);stats.capacity++;
  }else throw Error("unlisted IRRT inference "+row[0]);
 }
 need(JSON.stringify(Object.entries(kn).sort())===JSON.stringify(Object.entries(record.kn).sort()),"final geometric signs differ");
 if(record.terminal){const[type,tri,occ,cap,witness]=record.terminal;need(type==="area_cap"&&[...occ].every(p=>inside(kn,tri,p)),"unsupported geometric terminal");irCap(tri,cap,witness,box,kn,stats);need(lt(Q(cap),irCost(occ.length)),"no geometric cap contradiction");stats.geometryLeaves++;}
 stats.contexts++;return kn;
}
function irCoefficient(poly,target,value){const a=Q(value);if(!a.n)return;const old=poly.get(target)||Z,v=add(old,a);if(v.n)poly.set(target,v);else poly.delete(target);}
function sameCoefficients(a,b){const x=new Map(Object.entries(a).map(([t,v])=>[t,Q(v)]).filter(([,v])=>v.n)),y=new Map(Object.entries(b).map(([t,v])=>[t,Q(v)]).filter(([,v])=>v.n));return samePoly(x,y);}
function irBaryCoefficients(base,which,kn){
 const out=new Map();if(!base.includes("S"))irCoefficient(out,canonical(base+"S")[0],Q((which==="lower"?11:-11)*sign(kn,base+"S")));
 for(const p of "CER")if(!base.includes(p)){const t=canonical(base+p)[0],sg=sign(kn,base+p);need(sg,"unknown barycentric vertex sign");irCoefficient(out,t,Q(which==="lower"?(sg>0?-3:5):(sg>0?5:-3)));}
 return Object.fromEntries([...out].map(([t,v])=>[t,str(v)]));
}
function irRelation(entry,kn,stats){
 const r=entry.rel,w=entry.witness,kind=w[0],key=t=>canonical(t)[0];
 if(kind==="fan"){
  const[t,p]=w.slice(1);need(inside(kn,t,p)&&r[0]==="fan"&&r[1]===key(t)&&equalSet(r.slice(2),edgeWords(t).map(e=>key(e+p))),"invalid actual fan");
 }else if(kind==="plu"){
  const[a,b,c,d,e]=w[1];need(new Set(w[1]).size===5,"bad Plucker relation labels");const terms=[[a+b+c,a+d+e,1],[a+b+d,a+c+e,-1],[a+b+e,a+c+d,1]],sigs=terms.map(([x,y,c])=>c*sign(kn,x)*sign(kn,y));need(sigs.every(Boolean)&&new Set(sigs).size===2,"unsigned relation signs");
  const i=sigs.findIndex(s=>sigs.filter(v=>s===v).length===1),pair=a=>a.map(key).sort().join("*"),rhs=terms.filter((_,j)=>i!==j).map(x=>pair(x.slice(0,2)));
  need(r[0]==="plu"&&pair(r.slice(1,3))===pair(terms[i].slice(0,2))&&equalSet([pair(r.slice(3,5)),pair(r.slice(5,7))],rhs),"invalid unsigned products");
 }else if(kind==="quad"){
  const[h,pts]=w.slice(1),[a,b,c,d]=h;need(convex(kn,h)&&[...pts].every(p=>inside(kn,h,p))&&new Set(pts).size===pts.length&&pts.length>=1,"quad witnesses");
  const pair=r.slice(1,3),ok=[[key(a+b+c),key(a+c+d)],[key(a+b+d),key(b+c+d)]].some(v=>equalSet(v,pair)),floor=pts.length===1?Q("449/1000"):pts.length===2?mul(Q(8),S):Q("93/91");need(r[0]==="quad"&&ok&&eq(Q(r[3]),floor),"quad factor floor/diagonal");
 }else if(kind==="affine_quad"){
  const[h,sg]=w.slice(1);need(h.length===4&&new Set(h).size===4&&[1,-1].includes(sg),"affine four-point witness");const[a,b,c,d]=h,words=[a+b+c,a+c+d,a+b+d,b+c+d],co={};
  words.forEach((t,i)=>{need(sign(kn,t),"missing affine-identity sign");co[key(t)]=(i<2?1:-1)*sign(kn,t)*sg;});need(r[0]==="linear"&&sameCoefficients(r[1],co)&&eq(Q(r[2]),Z),"wrong four-point identity");
 }else if(kind==="barycentric"){
  const[base,point,hull,direction]=w.slice(1);need(point==="S"&&hull==="CER"&&inside(kn,hull,point)&&["lower","upper"].includes(direction),"barycentric premises");
  need(r[0]==="linear"&&sameCoefficients(r[1],irBaryCoefficients(base,direction,kn))&&eq(Q(r[2]),Z),"wrong all-line barycentric factor");
 }else if(kind==="side_pair_weights"){
  const[base,point,hull,weight]=w.slice(1);need(point==="S"&&hull==="CER"&&weight==="3/11"&&inside(kn,hull,point),"weight premises");
  const target=base.includes(point)?["ZERO",1]:[key(base+point),sign(kn,base+point)],vertices=[...hull].map(p=>base.includes(p)?null:[key(base+p),sign(kn,base+p)]);
  need(r[0]==="bary"&&JSON.stringify(r[1])===JSON.stringify(target)&&JSON.stringify(r[2])===JSON.stringify(vertices)&&r[3]===11&&JSON.stringify(r[4])==="[3,3,3]"&&vertices.filter(Boolean).every(v=>v[1])&&target[1],"wrong signed barycentric relation");
 }else throw Error("unlisted relation witness "+kind);
 stats.relations++;
}
function irInitial(row,kn,box,stats){
 const t=row.triangle,side=row.side,v=Q(row.value),w=row.witness;need(sign(kn,t)&&["lo","hi"].includes(side),"initial area scope");
 if(w[0]==="cost"){need(side==="lo"&&new Set(w[1]).size===w[1].length&&[...w[1]].every(p=>inside(kn,t,p))&&eq(v,irCost(w[1].length)),"bad occupied cost");}
 else{need(side==="hi","cap side");irCap(t,v,w,box,kn,stats);}
 stats.initialBounds++;return{triangle:t,side,value:v};
}

function endpointLines(poly,target,lo,hi){
 const other=support(poly).filter(i=>i!==target),pairs=new Map();
 for(let bits=0;bits<2**other.length;bits++){
  const at=lo.slice();other.forEach((i,j)=>at[i]=bits&(1<<j)?hi[i]:lo[i]);let a=Z,b=Z;
  for(const[m,c]of poly){const indices=m.split(",").filter(Boolean).map(Number);let value=c;for(const i of indices)if(i!==target)value=mul(value,at[i]);if(indices.includes(target))a=add(a,value);else b=add(b,value);}
  pairs.set(str(a)+","+str(b),[a,b]);
 }
 return [...pairs.values()];
}
function intervalHull(lines,L,H){
 const possible=[];for(const[a,b]of lines){let l=L,h=H;if(lt(Z,a))l=max(l,div(neg(b),a));else if(lt(a,Z))h=min(h,div(neg(b),a));else if(lt(b,Z))continue;if(le(l,h))possible.push([l,h]);}
 return possible.length?[min(...possible.map(v=>v[0])),max(...possible.map(v=>v[1]))]:null;
}
function verifyInterval(record,polys,lo,hi,terminal){
 const p=polys.get(String(record.factor));need(p,"missing factor "+record.factor);const i=VARS.indexOf(record.target);need(i>=0&&support(p).includes(i),"invalid interval target");
 need(record.old.length===2&&eq(Q(record.old[0]),lo[i])&&eq(Q(record.old[1]),hi[i]),"wrong old interval");
 const lines=endpointLines(p,i,lo,hi),printed=record.lines.map(pair=>pair.map(Q)),keys=a=>a.map(([x,y])=>str(x)+","+str(y)).sort();
 need(JSON.stringify(keys(lines))===JSON.stringify(keys(printed)),"incomplete endpoint-line list");
 const raw=intervalHull(lines,lo[i],hi[i]);if(terminal){need(raw===null,"claimed empty interval is nonempty");return;}
 need(raw&&record.raw&&record.new,"missing interval result");need(eq(Q(record.raw[0]),raw[0])&&eq(Q(record.raw[1]),raw[1]),"wrong exact interval hull");
 const rounded=[max(lo[i],down(raw[0])),min(hi[i],up(raw[1]))];need(eq(Q(record.new[0]),rounded[0])&&eq(Q(record.new[1]),rounded[1]),"unsafe interval rounding");
 need(le(rounded[0],rounded[1]),"unrecorded interval contradiction");lo[i]=rounded[0];hi[i]=rounded[1];
}

function irFixed(name){
 const [a,b,c,e,f,h,p,q,u,v,r,w,j,k]=V;
 const ps={
 h_e:minus(h,e),c_f:minus(c,f),f_b:minus(f,b),
 side_support:minus(times(e,minus(P1,b)),qpoly("347/500")),
 lower_contacts:minus(times(h,c),qpoly("93/250")),
 inner_x_lower:plus(timesConstant(j,Q(11)),timesConstant(c,Q(-5)),timesConstant(r,Q(-3)),qpoly(-3)),
 inner_y_lower:plus(timesConstant(k,Q(11)),timesConstant(e,Q(-3)),timesConstant(w,Q(-3))),
 inner_y_upper:plus(timesConstant(k,Q(-11)),timesConstant(e,Q(5)),timesConstant(w,Q(3))),
 top_budget:plus(qpoly("907/1000"),timesConstant(e,Q(-1)),timesConstant(f,Q(-1)),times(e,f))
 };need(ps[name],"unknown fixed factor "+name);return ps[name];
}
function irRelationPoly(entry,kn){
 const r=entry.rel;
 if(r[0]==="quad")return plus(irSigned(kn,r[1]),irSigned(kn,r[2]),qpoly(neg(Q(r[3]))));
 need(r[0]==="linear","unlisted physical relation");return plus(qpoly(neg(Q(r[2]))),...Object.entries(r[1]).map(([t,c])=>timesConstant(irSigned(kn,t),Q(c))));
}
function irPhysical(record,assign,stats){
 const source=irBox();need(record.box.length===14&&record.box.every((b,i)=>b.length===2&&b.every((v,j)=>eq(Q(v),source[i][j]))),"physical source box not established coarse box");
 const kn=irGeometry(record.geometry,assign,source,stats),polys=new Map();
 for(const ent of Object.values(record.relations))irRelation(ent,kn,stats);
 for(const[id,f]of Object.entries(record.factors)){
  const w=f.source;let p;
  if(w[0]==="area_initial"){
   const [,t,side,value,wit]=w;need(side==="lo","unlisted physical cap");
   irInitial({triangle:t,side,value,witness:wit},kn,source,stats);
   p=minus(irSigned(kn,t),qpoly(value));
  }else if(w[0]==="relation"){
   const entry=record.relations[w[1]];need(entry,"missing physical relation");p=irRelationPoly(entry,kn);
  }else {need(w[0]==="fixed","unknown physical factor source");p=irFixed(w[1]);}
  const printed=termsPoly(f.terms);need(samePoly(p,printed),"false physical expansion "+f.name);
  polys.set(id,p);stats.factors++;stats.physicalTerms+=f.terms.length;
 }
 const lo=source.map(x=>x[0]),hi=source.map(x=>x[1]);
 for(const step of record.trace.steps){verifyInterval(step,polys,lo,hi,false);stats.physicalSteps++;stats.endpointLines+=step.lines.length;}
 need(record.trace.low.length===14&&record.trace.high.length===14&&lo.every((v,i)=>eq(v,Q(record.trace.low[i])))&&hi.every((v,i)=>eq(v,Q(record.trace.high[i]))),"wrong final physical box");
 if(record.trace.contradiction){verifyInterval(record.trace.contradiction,polys,lo,hi,true);stats.physicalTerminals++;stats.endpointLines+=record.trace.contradiction.lines.length;}
 return {kn,box:lo.map((v,i)=>[v,hi[i]])};
}


function irScalarInitials(initial,kn,box,stats){
 const refs=new Map();for(const[id,row]of Object.entries(initial)){need(!refs.has(id),"duplicate initial bound");refs.set(id,irInitial(row,kn,box,stats));}return refs;
}
function irScalarUpdate(u,entry,refs,stats){
 need(!refs.has(u.id),"overwritten scalar ref");const r=entry.rel,t=u.triangle,dir=u.side,ss=u.sources.map(id=>{need(refs.has(id),"future or unproved scalar source "+id);return refs.get(id);});need(dir==="lo"||dir==="hi","bad scalar side");
 let expected=[],raw;const val=i=>ss[i].value,match=()=>{need(expected.length===ss.length,"scalar source arity "+u.id);expected.forEach(([a,d],i)=>need(ss[i].triangle===a&&ss[i].side===d,"scalar source direction "+u.id));},pos=i=>{need(lt(Z,val(i)),"nonpositive scalar denominator");return val(i);};
 if(r[0]==="fan"){
  const outer=r[1],parts=r.slice(2);
  if(t===outer){need(u.rule===(dir==="lo"?"sum":"upper_sum"),"fan rule tag");expected=parts.map(a=>[a,dir]);match();raw=sum(ss.map(b=>b.value));}
  else{need(parts.includes(t)&&u.rule===(dir==="lo"?"lower_sub":"sub"),"fan target/tag");expected=[[outer,dir],...parts.filter(a=>a!==t).map(a=>[a,dir==="lo"?"hi":"lo"])];match();raw=sub(val(0),add(val(1),val(2)));}
 }else if(r[0]==="plu"){
  const iso=r.slice(1,3),rhs=[r.slice(3,5),r.slice(5,7)],i=iso.indexOf(t);
  if(i>=0){need(u.rule===(dir==="lo"?"sumlo":"sumhi"),"Plucker sum tag");expected=[...rhs.flat().map(a=>[a,dir]),[iso[1-i],dir==="lo"?"hi":"lo"]];match();raw=div(add(mul(val(0),val(1)),mul(val(2),val(3))),pos(4));}
  else{
   let a=-1,b=-1;rhs.forEach((p,j)=>p.forEach((v,k)=>{if(v===t){a=j;b=k;}}));need(a>=0&&u.rule===(dir==="lo"?"diff":"diffhi"),"Plucker difference tag/target");
   expected=[...iso.map(a=>[a,dir]),...rhs[1-a].map(a=>[a,dir==="lo"?"hi":"lo"]),[rhs[a][1-b],dir==="lo"?"hi":"lo"]];match();
   raw=div(sub(mul(val(0),val(1)),mul(val(2),val(3))),pos(4));if(dir==="hi")raw=max(Z,raw);
  }
 }else if(r[0]==="quad"){
  const p=r.slice(1,3);need(dir==="lo"&&p.includes(t)&&u.rule==="quad","quad rule target");expected=[[p.find(a=>a!==t),"hi"]];match();raw=sub(Q(r[3]),val(0));
 }else if(r[0]==="linear"){
  need(u.rule==="linear"&&r[1][t]!==undefined,"linear target");const target=Q(r[1][t]),others=Object.entries(r[1]).filter(([a])=>a!==t&&Q(r[1][a]).n).sort(([a],[b])=>a.localeCompare(b));need((lt(Z,target)&&dir==="lo")||(lt(target,Z)&&dir==="hi"),"linear target direction");
  expected=others.map(([a,c])=>[a,lt(Z,Q(c))?"hi":"lo"]);match();raw=div(sub(Q(r[2]),sum(others.map(([,c],i)=>mul(Q(c),val(i))))),target);
 }else if(r[0]==="bary"){
  const target=r[1],verts=r[2],N=Q(r[3]),weights=r[4].map(Q),which=u.rule==="bary_lo"?"lo":u.rule==="bary_hi"?"hi":null;need(which&&t===target[0]&&target[0]!=="ZERO","bary rule target");
  need(dir===(target[1]===1?which:which==="lo"?"hi":"lo"),"bary target orientation");
  expected=verts.filter(Boolean).map(([a,sg])=>[a,sg===1?which:which==="lo"?"hi":"lo"]);match();let n=0;
  const signed=verts.map(v=>v?mul(Q(v[1]),val(n++)):Z),residual=sub(N,sum(weights));need(le(Z,residual),"negative residual weights");
  raw=div(add(sum(weights.map((w,i)=>mul(w,signed[i]))),mul(residual,which==="lo"?min(...signed):max(...signed))),N);
  if(target[1]===-1)raw=neg(raw);
 }else throw Error("unsupported retained scalar kind "+r[0]);
 const v=dir==="lo"?down(raw):up(raw);need(eq(v,Q(u.value)),"incorrect scalar rounding/value "+u.id);refs.set(u.id,{triangle:t,side:dir,value:v});stats.scalarUpdates++;
}
function irScalar(proof,kn,box,stats){
 const refs=irScalarInitials(proof.initial,kn,box,stats);proof.relations.forEach(e=>irRelation(e,kn,stats));
 for(const u of proof.updates){need(Number.isInteger(u.relation)&&proof.relations[u.relation],"scalar relation scope");irScalarUpdate(u,proof.relations[u.relation],refs,stats);}
 const e=proof.end,lo=refs.get(e.lower),hi=refs.get(e.upper);need(lo&&hi&&lo.triangle===e.triangle&&hi.triangle===e.triangle&&lo.side==="lo"&&hi.side==="hi"&&lt(hi.value,lo.value),"invalid scalar terminal");stats.scalarLeaves++;
 return{lower:str(lo.value),upper:str(hi.value),gap:str(sub(lo.value,hi.value))};
}


function irLinearCertificate(packet,kn,box,stats){
 const refs=irScalarInitials(packet.initial,kn,box,stats);for(const e of Object.values(packet.relations))irRelation(e,kn,stats);
 function bound(w){const b=refs.get(w.ref);need(b&&b.triangle===w.triangle&&b.side===w.side&&eq(b.value,Q(w.value)),"unproved or cross-scope LP source");return b;}
 const factors=new Map();
 for(const f of packet.certificate.factors){
  need(!factors.has(f.index),"duplicate LP factor");const o=f.origin,entry=packet.relations[o.relation];need(entry,"missing LP relation");const r=entry.rel,co=new Map();let c=Z;
  const put=(t,v)=>irCoefficient(co,t,v);
  if(o.kind==="fan"){
   need(r[0]==="fan"&&[1,-1].includes(o.direction),"fan LP origin");
   put(r[1],Q(o.direction));for(const t of r.slice(2))put(t,Q(-o.direction));
  }else if(o.kind==="linear"){
   need(r[0]==="linear","linear LP origin");for(const[t,v]of Object.entries(r[1]))put(t,Q(v));c=neg(Q(r[2]));
  }else if(o.kind==="product_linear_envelope"){
   need(r[0]==="plu"&&[1,-1].includes(o.orientation)&&o.products.length===3,"envelope origin");
   const pair=(x,y)=>[x,y].sort().join("*"),expected=[[o.orientation,pair(r[1],r[2])],[-o.orientation,pair(r[3],r[4])],[-o.orientation,pair(r[5],r[6])]].map(v=>v.join(":")).sort();
   const actual=o.products.map(p=>[p.sign,pair(p.X,p.Y)].join(":")).sort();need(JSON.stringify(actual)===JSON.stringify(expected),"wrong envelope product identity");
   for(const p of o.products){
    need(p.type===(p.sign===1?"upper":"lower")&&[0,1].includes(p.choice)&&p.bounds.length===2,"invalid McCormick choice");
    const sides=p.type==="lower"?(p.choice===0?["lo","lo"]:["hi","hi"]):(p.choice===0?["hi","lo"]:["lo","hi"]);
    const a=bound(p.bounds[0]),b=bound(p.bounds[1]);need(a.triangle===p.X&&b.triangle===p.Y&&a.side===sides[0]&&b.side===sides[1],"envelope endpoint assignment");
    const sg=Q(p.sign);put(p.X,mul(sg,b.value));put(p.Y,mul(sg,a.value));c=sub(c,mul(sg,mul(a.value,b.value)));
   }
  }else throw Error("unknown LP factor origin "+o.kind);
  need(sameCoefficients(f.coefficients,Object.fromEntries([...co].map(([t,v])=>[t,str(v)])))&&eq(Q(f.constant),c),"incorrect exact LP factor expansion");
  factors.set(f.index,{co,c});stats.linearFactors++;
 }
 const used=new Set(),total=new Map();let constant=Z;
 for(const[idx,weight]of packet.certificate.weights){
  const w=Q(weight),f=factors.get(idx);need(f&&!used.has(idx)&&lt(Z,w)&&w.d===1n,"invalid LP nonnegative integer weight");used.add(idx);
  for(const[t,c]of f.co)irCoefficient(total,t,mul(w,c));constant=add(constant,mul(w,f.c));stats.linearWeights++;
 }
 need(eq(constant,Q(packet.certificate.sum.constant))&&sameCoefficients(packet.certificate.sum.coefficients,Object.fromEntries([...total].map(([t,v])=>[t,str(v)]))),"incorrect weighted affine sum");
 const sources={};for(const[t,v]of Object.entries(packet.certificate.box)){
  const lo=bound(v.lo),hi=bound(v.hi);need(lo.triangle===t&&hi.triangle===t&&lo.side==="lo"&&hi.side==="hi"&&le(lo.value,hi.value),"invalid final affine box");sources[t]={lo:lo.value,hi:hi.value};
 }
 let upper=constant;for(const[t,c]of total){need(sources[t],"missing affine max area");upper=add(upper,mul(c,c.n>0n?sources[t].hi:sources[t].lo));}
 need(eq(upper,Q(packet.certificate.upper))&&lt(upper,Z),"nonnegative affine maximum");stats.linearLeaves++;return {upper:str(upper),factors:factors.size};
}
function irCoverage(packet){
 need(packet.format==="n6-irrt-fixed-v1"&&packet.hypotheses.s==="93/1000"&&packet.hypotheses.labels===LABELS&&JSON.stringify(packet.hypotheses.variables)===JSON.stringify(VARS)&&packet.hypotheses.locations==="IRRT","domain/format mismatch");
 const expected=irBox();need(packet.box.length===14&&packet.box.every((b,i)=>b.length===2&&b.every((v,j)=>eq(Q(v),expected[i][j]))),"packet coarse box mismatch");
 need(JSON.stringify(Object.entries(packet.initialSigns).sort())===JSON.stringify(Object.entries(irBase()).sort()),"packet initial signs mismatch");
 const nodes=new Map();for(const n of packet.nodes){need(!nodes.has(n.id),"duplicate tree id");nodes.set(n.id,n);}const visited=new Set();let split=0,leaves=0;
 function visit(id,assign){const n=nodes.get(id);need(n&&!visited.has(id),"missing/repeated tree node "+id);visited.add(id);need(JSON.stringify(Object.entries(n.assign).sort())===JSON.stringify(Object.entries(assign).sort()),"wrong inherited sign assignment");
 if(n.kind==="split"){need(canonical(n.triangle)[0]===n.triangle&&assign[n.triangle]===undefined,"invalid or repeated actual sign cut");split++;visit(id+"m",{...assign,[n.triangle]:-1});visit(id+"p",{...assign,[n.triangle]:1});}
 else {need(["physical","linear","area","geometry"].includes(n.kind),"unsupported leaf");leaves++;}}
 visit("r",{});need(visited.size===nodes.size,"unreachable or missing tree branch");return {nodes:nodes.size,split,leaves};
}


function audit(packet){
 const coverage=irCoverage(packet),stats={contexts:0,plucker:0,capacity:0,caps:0,capVertices:0,relations:0,initialBounds:0,factors:0,physicalTerms:0,physicalSteps:0,endpointLines:0,physicalTerminals:0,geometryLeaves:0,scalarUpdates:0,linearFactors:0,linearWeights:0,scalarLeaves:0,linearLeaves:0},terminals=[];
 for(const n of packet.nodes.filter(n=>n.kind!=="split")){
  let result=n.physical?irPhysical(n.physical,n.assign,stats):{box:irBox()};
  if(n.refinedBox)need(n.refinedBox.length===14&&n.refinedBox.every((v,i)=>v.length===2&&v.every((x,j)=>eq(Q(x),result.box[i][j]))),"unproved post-refinement source box");
  if(n.geometry)result.kn=irGeometry(n.geometry,n.assign,result.box,stats);
  need(result.kn,"missing leaf sign context");
  if(n.kind==="physical"){need(n.physical.trace.contradiction,"missing physical contradiction");terminals.push({id:n.id,kind:n.kind});}
  else{
   need(!n.physical?.trace.contradiction,"later proof after contradictory physical prefix");
   if(n.kind==="geometry"){need(n.geometry.terminal,"missing geometric contradiction");terminals.push({id:n.id,kind:n.kind});}
   else if(n.kind==="area")terminals.push({id:n.id,kind:n.kind,...irScalar(n.proof,result.kn,result.box,stats)});
   else if(n.kind==="linear")terminals.push({id:n.id,kind:n.kind,...irLinearCertificate(n.linear,result.kn,result.box,stats)});
  }
 }
 return {accepted:true,coverage,stats,terminals};
}
return {audit};

}

if(typeof module!=="undefined"&&module.exports){
 module.exports=createIRRTIndependentAudit;
 if(typeof require==="function"&&require.main===module){
  const fs=require("fs"),path=require("path"),syntax=require("./check_n6_irrt.js");
  const indexPath=process.argv[2]||path.join(__dirname,"n6_irrt_tables","INDEX.md");
  const index=fs.readFileSync(indexPath,"utf8"),files={};
  for(const file of syntax.irrtTableFiles(index))files[file]=fs.readFileSync(path.join(path.dirname(indexPath),file),"utf8");
  console.log(JSON.stringify(createIRRTIndependentAudit().audit(syntax.readN6IRRTTables(index,files))));
 }
}
