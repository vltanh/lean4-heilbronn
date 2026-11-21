"use strict";
/* Literal Markdown replay for N6_BTTT_REMAINING_BITT.md.
 * Standard-library only; imports no discovery implementation.
 */
function createN6RemainingBITTReader(WORD="+",CONCLUSION="contradiction",additionalSigns=[]){
if(!["-","+"].includes(WORD))throw Error("unknown BITT top-pair word");
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
function termsPoly(terms,repeated=false){let out=new Map();for(const[m,c]of terms){need(Array.isArray(m)&&m.every(i=>Number.isInteger(i)&&i>=0&&i<VARS.length),"bad monomial");const key=m.slice().sort((a,b)=>a-b).join(",");need(repeated||new Set(m).size===m.length,"non-multiaffine factor");need(!out.has(key),"duplicate monomial");const d=Q(c);if(d.n)out.set(key,d);}return out;}
function samePoly(a,b){return a.size===b.size&&[...a].every(([m,c])=>b.has(m)&&eq(c,b.get(m)));}
function evaluate(p,values){let r=Z;for(const[m,c]of p){let x=c;for(const i of m.split(",").filter(Boolean).map(Number))x=mul(x,values[i]);r=add(r,x);}return r;}
function support(p){return [...new Set([...p.keys()].flatMap(m=>m.split(",").filter(Boolean).map(Number)))].sort((a,b)=>a-b);}
function vertexMaximum(p,lo,hi){const used=support(p);need(used.length<=14,"too many coordinates");const at=lo.slice();let best=null;for(let b=0;b<2**used.length;b++){used.forEach((i,j)=>at[i]=(b&(1<<j))?hi[i]:lo[i]);const value=evaluate(p,at);if(best===null||lt(best,value))best=value;}return best;}
const tokenSign=t=>{need(typeof t==="string"&&t.length===4&&"+-".includes(t[3]),"bad sign token");canonical(t.slice(0,3));return t[3]==="+"?1:-1;};
function tokenKnown(kn,t){return sign(kn,t.slice(0,3))===tokenSign(t);}
function initialSigns(){const kn={};for(const w of combos(ANCHORS,3))impose(kn,w.join(""),1);
 for(const p of "PQRS"){
  for(const e of edgeWords(ANCHORS))impose(kn,e+p,"RS".includes(p)&&e==="EF"?-1:1);
  impose(kn,"HC"+p,p==="P"?-1:1);
  if("RS".includes(p)){impose(kn,"HE"+p,1);impose(kn,"CF"+p,-1);}
  if(p!=="P"){impose(kn,"HP"+p,1);impose(kn,"CP"+p,-1);}
 }
 for(const t of "RS")for(const p of "PQ"){impose(kn,"E"+p+t,-1);impose(kn,"F"+p+t,1);}
 impose(kn,"ERS",1);impose(kn,"FRS",WORD==="+"?1:-1);return kn;
}
function circuit(w){const[a,b,c,d,e]=w;need(w.length===5&&new Set(w).size===5,"bad circuit");return [[a+b+c,a+d+e,1],[a+b+d,a+c+e,-1],[a+b+e,a+c+d,1]];}
const MESH="ABZ BCX CAY AZY BXZ CYX ZXY AZX BXY CYZ AXY BYZ CZX".split(" ");
function verifyContext(ctx,allowed){
 need(ctx.locations==="BITT"&&ctx.word===WORD,"context hypothesis");
 const kn=initialSigns();const supplied=new Set();
 for(const row of ctx.trace){
  const[w,e,why]=[row.word,row.sign,row.why];need(!sign(kn,w),"redundant trace sign "+w);
  const type=why[0];
  if(type==="fixed-top-cross")need((w[0]==="E"&&w[1]==="P"&&"QRS".includes(w[2])&&e===-1)||(w[0]==="F"&&w[1]==="P"&&"QRS".includes(w[2])&&e===1),"bad fixed cross");
  else if(type==="branch"){const token=w+(e===1?"+":"-");need(allowed.has(token),"unproved branch "+token);supplied.add(token);}
  else if(type==="plu"){
   const cs=circuit(why[1]),vals=cs.map(([a,b,c])=>c*sign(kn,a)*sign(kn,b)),nz=vals.filter(Boolean);
   need(nz.length===2&&nz[0]===nz[1],"invalid Plucker premise "+why[1]);const[a,b,c]=cs[vals.indexOf(0)],sa=sign(kn,a),sb=sign(kn,b);
   need(!!sa!==!!sb,"two missing circuit signs");const target=sa?b:a,value=-nz[0]*c*(sa||sb);
   const[k,p]=canonical(target),[kk,pp]=canonical(w);need(k===kk&&p*value===pp*e,"wrong circuit conclusion");
  }else if(type==="empty"){
   const h=why[1],p=why[2];need(false,"BITT has no unconditional empty-anchor rule");
   need(sign(kn,h)===1,"empty hull orientation");const tests=edgeWords(h).map(a=>[a+p,sign(kn,a+p)]);
   need(tests.filter(x=>x[1]===1).length===2,"empty hull requires two sides");
   const missing=tests.find(x=>x[1]===0);need(missing,"no missing empty side");const[k,r]=canonical(missing[0]),[kk,t]=canonical(w);
   need(k===kk&&r*(-1)===t*e,"wrong empty conclusion");
  }else if(type==="octagon-ear"){
   const[hull,sourceEar,sourcePoint,ear,p]=why.slice(1);
   need(WORD==='+'&&hull==='ABCERSFH'&&convex(kn,hull),'unproved octagon hull');
   const ears=[...hull].map((_,i)=>hull[(i+7)%8]+hull[i]+hull[(i+1)%8]);
   need(ears.includes(sourceEar)&&ears.includes(ear)&&'PQ'.includes(sourcePoint)&&'PQ'.includes(p)&&inside(kn,sourceEar,sourcePoint),'unproved occupied octagon ear');
   need(sourceEar!==ear||sourcePoint!==p,'occupied ear point cannot exclude itself');
   const tests=edgeWords(ear).map(ed=>[ed+p,sign(kn,ed+p)]);need(tests.filter(x=>x[1]===1).length===2,'octagon ear requires two sides');
   const missing=tests.find(x=>x[1]===0);need(missing,'no unknown octagon ear side');
   const[k,r]=canonical(missing[0]),[kk,t]=canonical(w);need(k===kk&&-r===t*e,'wrong octagon-ear conclusion');
  }else if(type==="via"){
   const[h,p,line]=why.slice(1);need(w.length===3&&new Set(line).size===2&&line.length===2,"bad via line");
   need((h===ANCHORS&&"PQ".includes(p))||(h==="HABC"&&p==="P")||(h==="HCEF"&&p==="Q")||(h.length===3&&inside(kn,h,p)),"unproved containment");
   const vals=[...h].map(x=>line.includes(x)?0:sign(kn,line+x));need([...h].every((x,i)=>line.includes(x)||vals[i]!==0),"unknown via vertex");
   const nz=vals.filter(Boolean);need(nz.length&&nz.every(x=>x===nz[0]),"nonconstant via side");
   const[k,r]=canonical(line+p),[kk,t]=canonical(w);need(k===kk&&r*nz[0]===t*e,"wrong via conclusion");
  }else if(type==="mesh"){
   const[h,ps]=why.slice(1);need(h.length===3&&sign(kn,h)===1&&ps.length===3&&new Set(ps).size===3&&ps.every(p=>inside(kn,h,p)),"bad distributed mesh container");
   const rows=[];for(const order of permutations(ps)){const map=Object.fromEntries([..."ABCXYZ"].map((x,i)=>[x,(h+order.join(""))[i]])),candidate={};for(const z of MESH){const mapped=[...z].map(x=>map[x]).join(""),[k,p]=canonical(mapped);candidate[k]=p;}
    if(Object.entries(candidate).every(([k,s])=>!kn[k]||kn[k]===s))rows.push(candidate);
   }
   need(rows.length,"no allowed distributed mesh");const[k,p]=canonical(w);need(rows.every(r=>r[k]===p*e),"mesh sign not common");
  }else throw Error("unknown geometric rule "+type);
  impose(kn,w,e);
 }
 need(equalSet([...supplied],ctx.given),"given-sign snapshot");
 need(JSON.stringify(Object.entries(kn).sort())===JSON.stringify(Object.entries(ctx.known).sort()),"final sign table differs");
 return kn;
}


function coarseBox(kn,version=1){
 need(version===1,"unproved BITT coarse-box version");
 const top=mul(Q(WORD==="+"?4:3),S),rho=mul(sign(kn,"ACP")<0||sign(kn,"HBP")<0?K:G,S);
 const U=sub(ONE,div(top,sub(ONE,ALPHA))),aeHi=min(U,WORD==="+"?Q("391/1000"):Q("59/125")),delta=div(S,sub(ONE,ALPHA));
 const lo=[ALPHA,ALPHA,rho,ALPHA,ALPHA,rho,delta,delta,delta,delta,add(ALPHA,S),add(ALPHA,S),add(ALPHA,S),add(ALPHA,S)];
 const hi=[aeHi,U,ONE,aeHi,U,ONE,sub(ONE,S),sub(ONE,S),sub(ONE,S),sub(ONE,S),ONE,ONE,ONE,ONE];
 lo[2]=max(lo[2],add(ALPHA,div(S,hi[0])));lo[5]=max(lo[5],add(ALPHA,div(S,hi[1])));
 if(sign(kn,"ACP")===1&&sign(kn,"HBP")===1)lo[6]=lo[7]=div(mul(S,add(ONE,ALPHA)),sub(ONE,ALPHA));
 hi[6]=sub(sub(ONE,S),lo[7]);hi[7]=sub(sub(ONE,S),lo[6]);
 for(const pt of "RS"){
  const others=[..."RS"].filter(t=>t!==pt&&inside(kn,"E"+pt+"F",t)),cc=mul(others.length?Q(3):ONE,S),i=6+2*"PQRS".indexOf(pt);
  lo[i]=lo[i+1]=add(ALPHA,div(cc,sub(ONE,ALPHA)));
  for(const t of others){const j=6+2*"PQRS".indexOf(t);hi[j]=min(hi[j],sub(ONE,delta));hi[j+1]=min(hi[j+1],sub(ONE,delta));}
 }
 return{lo,hi,rho,top};
}
function signedAreaPoly(kn,t){const e=sign(kn,t);need(e!==0,"unsigned area "+t);return timesConstant(determinant(t),Q(e));}
const anchorCaps={ABC:[{a:1},{c:1,b:-1}],ABE:[{e:1}],ABF:[{f:1}],ABH:[{b:1},{h:1,a:-1}],ACE:[{e:1}],ACF:[{c:1}],ACH:[{h:1,a:-1},{c:1}],AEF:[{"":1,a:-1}],AEH:[{h:1,a:-1}],AFH:[{f:1},{h:1,a:-1}],BCE:[{e:1},{c:1,b:-1}],BCF:[{c:1,b:-1}],BCH:[{h:1},{c:1,b:-1}],BEF:[{"":1,b:-1}],BEH:[{h:1}],BFH:[{f:1}],CEF:[{"":1,f:-1}],CEH:[{h:1}],CFH:[{c:1}],EFH:[{"":1,e:-1}]};
function anchorPoly(h,i){const a=anchorCaps[h]?.[i];need(a,"unknown anchor cap");return plus(...Object.entries(a).map(([v,c])=>v===""?qpoly(c):timesConstant(V[VARS.indexOf(v)],Q(c))));}
function capContains(kn,t,h){return [...t].every(x=>h.includes(x)||inside(kn,h,x));}
function octagonCap(kn,hull,ear,source){
 need(WORD==='+'&&hull==='ABCERSFH'&&convex(kn,hull),'unproved octagon cap hull');
 const ears=[...hull].map((_,i)=>hull[(i+7)%8]+hull[i]+hull[(i+1)%8]);need(ears.includes(ear),'unproved octagon cap ear');
 if(source)need(Array.isArray(source)&&source.length===2&&ears.includes(source[0])&&'PQ'.includes(source[1])&&inside(kn,source[0],source[1]),'unproved occupied-ear cap source');
 return Q(source&&source[0]!==ear?'248858189/1000000000':'569722789/1000000000');
}
function priorSquareRoot(x){
 need(le(Z,x),'negative root source');const den=10000n;let low=0n,high=den+1n;
 while(high*high*x.d<=x.n*den*den)high*=2n;
 while(low+1n<high){const mid=(low+high)/2n;if(mid*mid*x.d<=x.n*den*den)low=mid;else high=mid;}
 return Q(String(low)+'/'+String(den));
}
function physicalFactor(f,kn,stage,state){
 const why=f.why,type=why[0];let expected;
 if(type==="actual-area"){
  const t=why[1],occ=why[2];need(equalSet(occ,occupied(kn,t)),"actual occupants differ");
  expected=minus(signedAreaPoly(kn,t),qpoly(mul(cost(occ.length),S)));
 }else if(type==='quad-area'){
  const r=why[1];need(r&&r.kind==='quad','wrong materialized quadrilateral source');relationGeometry(r,kn);expected=plus(...r.parts.map(t=>signedAreaPoly(kn,t)),qpoly(neg(Q(r.floor))));
 }else if(type==="anchor-cap"){
  const[t,h,i,occ]=why.slice(1);need(capContains(kn,t,h)&&equalSet(occ,occupied(kn,t)),"unproved anchor area cap");expected=minus(anchorPoly(h,i),qpoly(mul(cost(occ.length),S)));
 }else if(type==='octagon-ear-ratio'){
  const[hull,ear,p]=why.slice(1);need((ear==='BCE'||ear==='FHA')&&'PQ'.includes(p)&&inside(kn,ear,p),'unproved octagon ratio occupant');
  const U=octagonCap(kn,hull,ear==='BCE'?'ABC':'HAB',[ear,p]);expected=minus(timesConstant(V[ear==='BCE'?3:4],U),timesConstant(V[ear==='BCE'?0:1],mul(Q(3),S)));
 }else if(type==='octagon-ear-cap'){
  const[hull,ear,source]=why.slice(1);expected=minus(qpoly(octagonCap(kn,hull,ear,source)),determinant(ear));
 }else if(type==='octagon-ear-sum'){
  const hull=why[1];need(WORD==='+'&&hull==='ABCERSFH'&&convex(kn,hull),'unproved octagon sum hull');
  const ears=[...hull].map((_,i)=>hull[(i+7)%8]+hull[i]+hull[(i+1)%8]);expected=minus(qpoly(Q('76277533/62500000')),plus(...ears.map(determinant)));
 }else if(type==="contact-order"){
  const indices={ha:[5,0],ea:[3,0],he:[5,3],fb:[4,1],cf:[2,4],sym:[4,3]}[why[1]];need(indices,"bad contact order");expected=minus(V[indices[0]],V[indices[1]]);
 }else if(type==="endpoint-lower"){
  const rho=coarseBox(kn,stage.box.coarseVersion).rho;need(eq(Q(why[1]),rho),"wrong endpoint lower floor");expected=minus(times(V[5],V[2]),qpoly(rho));
 }else if(type==="weighted-barycentric"){
  const[outer,inner,weights,M0,axis]=why.slice(1);need("RS".includes(outer)&&"RS".includes(inner)&&outer!==inner&&inside(kn,"EF"+outer,inner),"unproved top barycentric fan");
  const words=["F"+outer+inner,"E"+outer+inner,"EF"+inner],cs=words.map(t=>cost(occupied(kn,t).length));need(weights.length===3&&weights.every((w,i)=>eq(Q(w),cs[i])),"wrong barycentric floor");
  const L=stage.box.initial.low.map(Q),M=div(mul(sub(ONE,L[3]),sub(ONE,L[4])),S);need(eq(Q(M0),M)&&le(sum(cs),M),"bad barycentric upper bound");
  const[ce,cf,cu]=cs,oi=6+2*"PQRS".indexOf(outer),ii=6+2*"PQRS".indexOf(inner);
  const rows=[
   plus(timesConstant(V[ii],M),qpoly(neg(ce)),timesConstant(V[4],neg(sub(sub(M,ce),cu))),timesConstant(V[oi],neg(cu))),
   plus(qpoly(sub(sub(M,cf),cu)),timesConstant(V[4],cf),timesConstant(V[oi],cu),timesConstant(V[ii],neg(M))),
   plus(timesConstant(V[ii+1],M),qpoly(neg(cf)),timesConstant(V[3],neg(sub(sub(M,cf),cu))),timesConstant(V[oi+1],neg(cu))),
   plus(qpoly(sub(sub(M,ce),cu)),timesConstant(V[3],ce),timesConstant(V[oi+1],cu),timesConstant(V[ii+1],neg(M)))
  ];need(Number.isInteger(axis)&&axis>=0&&axis<4,"bad weighted axis");expected=rows[axis];
 }else if(type==="top-hull"){
  need(why[1]===WORD,"wrong top-pair word");need(WORD==="+"?convex(kn,"ERSF"):inside(kn,"ERF","S"),"unproved top-pair hull");expected=minus(times(minus(P1,V[3]),minus(P1,V[4])),qpoly(mul(Q(WORD==="+"?4:3),S)));
 }else if(type==="lower-quad"){
  need(why[1]==="BITT"&&convex(kn,"HABC")&&inside(kn,"HABC","P"),"unproved lower quadrilateral occupant");expected=minus(minus(times(V[5],V[2]),times(V[0],V[1])),qpoly(mul(Q("24/5"),S)));
 }else if(type==="upper-quad"){
  need(why[1]==="BITT"&&convex(kn,"HCEF")&&inside(kn,"HCEF","Q"),"unproved occupied upper quadrilateral");expected=minus(qpoly(sub(ONE,mul(Q("24/5"),S))),times(minus(V[5],V[3]),minus(V[2],V[4])));
 }else if(type==="lower-sum"){
  need(sign(kn,"HCP")===-1,"unproved lower point");expected=minus(qpoly(sub(ONE,S)),plus(V[6],V[7]));
 }else if(type==="central-lower-x"||type==="central-lower-y"){
  need(sign(kn,"ACP")===1&&sign(kn,"HBP")===1,"unproved lower-central point");expected=type==="central-lower-x"?minus(times(times(V[5],minus(V[2],V[1])),V[6]),timesConstant(plus(V[2],V[1]),S)):minus(times(times(V[2],minus(V[5],V[0])),V[7]),timesConstant(plus(V[5],V[0]),S));
 }else if(type==="central-budget"||type==="central-sum"||type==="central-floor"){
  need(sign(kn,"ACP")===1&&sign(kn,"HBP")===1,"unproved central lower position");const L=stage.box.initial.low.map(Q),H=stage.box.initial.high.map(Q),M=mul(H[2],H[5]);
  if(type==="central-budget"){need(eq(M,Q(why[1])),"incorrect central area ceiling");const rhs=plus(timesConstant(times(V[5],V[2]),Q(3)),timesConstant(times(V[0],V[2]),Q(-1)),timesConstant(times(V[1],V[5]),Q(-1)),timesConstant(times(V[0],V[1]),Q(-1)));expected=minus(timesConstant(times(minus(V[5],V[0]),minus(V[2],V[1])),M),timesConstant(rhs,S));}
  else if(type==="central-sum"){need(eq(M,Q(why[1])),"incorrect central sum ceiling");expected=minus(qpoly(sub(ONE,div(S,M))),plus(V[6],V[7]));}
  else{const axis=why[1];need(axis===0||axis===1,"central floor axis");const value=axis===0?div(mul(S,add(H[2],L[1])),mul(H[5],sub(H[2],L[1]))):div(mul(S,add(H[5],L[0])),mul(H[2],sub(H[5],L[0])));need(eq(value,Q(why[2])),"wrong central endpoint floor");expected=minus(V[6+axis],qpoly(value));}
 }else if(type==="upper-point-x"||type==="upper-point-y"){
  need(why[2]==="Q"&&inside(kn,"HCEF","Q"),"unproved upper point");const axis=type==="upper-point-x"?0:1,triangle=axis===0?"CEF":"HEF",L=stage.box.initial.low.map(Q),H=stage.box.initial.high.map(Q),N=min(ONE,vertexMaximum(determinant(triangle),L,H));
  need(eq(N,Q(why[1]))&&lt(Z,N),"wrong fixed upper-point ceiling");const tail=axis===0?plus(qpoly(Q(2)),timesConstant(V[2],Q(-1)),timesConstant(V[4],Q(-1))):plus(qpoly(Q(2)),timesConstant(V[3],Q(-1)),timesConstant(V[5],Q(-1)));
  expected=minus(timesConstant(minus(P1,V[8+axis]),N),timesConstant(tail,S));
 }else if(type==="support-envelope"){
  const[src,X,Y,T,N0]=why.slice(1),rate=src[0]==="pentagon"?Q(11):Q(src[3]),constant=mul(rate,S),r={kind:"support",source:src,X,Y,Z:T,constant:str(constant)};relationGeometry(r,kn);
  const L=stage.box.initial.low.map(Q),H=stage.box.initial.high.map(Q),N=min(ONE,vertexMaximum(signedAreaPoly(kn,X),L,H));need(eq(N,Q(N0))&&lt(Z,N),"incorrect fixed support ceiling");expected=plus(timesConstant(signedAreaPoly(kn,Y),N),timesConstant(signedAreaPoly(kn,X),neg(constant)),timesConstant(signedAreaPoly(kn,T),constant));
 }else if(type==='support-prior'){
  const[r,rows,value,axis]=why.slice(1);need(r&&r.kind==='support'&&(axis===0||axis===1),'wrong prior support witness');relationGeometry(r,kn);
  let expectedRows=[[r.X,'hi'],[r.Y,'hi']],rate=Q(r.constant);
  if(rows.length===9){
   need(['pentagon','pentagon-ears'].includes(r.source[0]),'root-strengthened source is not a pentagon');
   const[a,b,c,d,e]=r.source[1],key=w=>canonical(w)[0];expectedRows.push(...[a+b+c,b+c+d,c+d+e].map(t=>[key(t),'lo']),[r.X,'lo'],[r.Z,'hi'],[r.Y,'lo'],[key(b+d+e),'hi']);
  }else need(rows.length===2,'wrong prior support endpoint arity');
  const values=rows.map((row,i)=>{const b=state.crossBound(row.ref,stage);need(row.triangle===expectedRows[i][0]&&row.direction===expectedRows[i][1]&&b.triangle===row.triangle&&b.direction===row.direction&&eq(b.value,Q(row.value)),'wrong immutable prior support endpoint');return b.value;});
  if(rows.length===9){const roots=sum(values.slice(2,5).map(priorSquareRoot)),candidate=add(mul(roots,roots),max(Z,sub(values[5],values[6]),sub(values[7],values[8])));need(lt(rate,candidate),'unimproved pentagon prior rate');rate=candidate;}
  need(eq(rate,Q(value))&&lt(Z,values[0])&&lt(Z,values[1]),'wrong prior support coefficient');
  const X=signedAreaPoly(kn,r.X),Y=signedAreaPoly(kn,r.Y),T=signedAreaPoly(kn,r.Z);
  expected=axis===0?plus(timesConstant(Y,values[0]),timesConstant(X,neg(rate)),timesConstant(T,rate)):plus(timesConstant(X,sub(values[1],rate)),timesConstant(T,rate));
 }else if(type==="earlier-area"){
  const row=why[1],bound=state.crossBound(row.ref,stage);need(bound.triangle===row.triangle&&bound.direction===row.direction&&eq(bound.value,Q(row.value)),"wrong previous bound");
  const p=signedAreaPoly(kn,row.triangle);expected=row.direction==="lo"?minus(p,qpoly(bound.value)):minus(qpoly(bound.value),p);
 }else throw Error("unlisted physical factor "+type);
 const actual=termsPoly(f.terms);need(samePoly(actual,expected),"incorrect factor polynomial "+f.name);return actual;
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
function verifyBox(stage,kn,state,terminal){
 const b=stage.box;need(b,"required numeric box missing");let {lo,hi}=coarseBox(kn,b.coarseVersion);
 if(b.parent!==null){need(Number.isInteger(b.parent)&&b.parent<stage.id,"future parent box");const previous=state.boxes.get(b.parent);need(previous,"unproved parent box");state.checkScope(b.parent,stage.id);
  lo=lo.map((v,i)=>max(v,previous.lo[i]));hi=hi.map((v,i)=>min(v,previous.hi[i]));
 }
 if(b.cut){const i=VARS.indexOf(b.cut.variable),v=Q(b.cut.value);need(i>=0&&["low","high"].includes(b.cut.side),"bad coordinate cut");need(state.plans[stage.id].cuts.some(c=>JSON.stringify(c)===JSON.stringify(b.cut)),"unplanned coordinate cut");if(b.cut.side==="low")hi[i]=min(hi[i],v);else lo[i]=max(lo[i],v);}
 need(b.initial.low.length===VARS.length&&b.initial.high.length===VARS.length,"wrong box dimension");
 need(lo.every((v,i)=>eq(v,Q(b.initial.low[i])))&&hi.every((v,i)=>eq(v,Q(b.initial.high[i]))),"unjustified initial box at "+stage.id);
 const polys=new Map();for(const[fi,f]of Object.entries(b.factors))polys.set(fi,physicalFactor(f,kn,stage,state));
 for(const step of b.steps)verifyInterval(step,polys,lo,hi,false);
 need(lo.every((v,i)=>eq(v,Q(b.final.low[i])))&&hi.every((v,i)=>eq(v,Q(b.final.high[i]))),"final box differs");
 state.boxes.set(stage.id,{lo,hi,polys});
 if(terminal?.kind==="interval")verifyInterval(terminal.reason,polys,lo,hi,true);
 return {steps:b.steps.length,factors:polys.size};
}


function quadFloor(n){need(n>=1&&n<=6,"quadrilateral occupancy range");return n===1?mul(Q("24/5"),S):n===2?mul(Q(8),S):n===3?Q("93/91"):n===4?mul(add(J,Q(3)),S):n===5?mul(add(J,K),S):mul(Q(2),mul(J,S));}
function relationGeometry(r,kn){
 const key=w=>canonical(w)[0];
 if(r.kind==="four"){
  const[a,b,c,d]=r.vertices;need(r.vertices.length===4&&new Set(r.vertices).size===4,"four-point labels");const expected=[[a+b+c,1],[a+c+d,1],[a+b+d,-1],[b+c+d,-1]].map(([w,e])=>({triangle:key(w),co:e*sign(kn,w)}));need(expected.every(t=>t.co===1||t.co===-1)&&JSON.stringify(expected)===JSON.stringify(r.terms),"incorrect signed four-point relation");
 }else if(r.kind==="fan"){
  need(inside(kn,r.outer,r.point),"unproved scalar fan");const expected=edgeWords(r.outer).map(e=>key(e+r.point));need(equalSet(r.parts,expected),"wrong fan parts");
 }else if(r.kind==="plu"){
  const cs=circuit(r.witness),v=cs.map(([a,b,e])=>e*sign(kn,a)*sign(kn,b));need(v.every(Boolean)&&new Set(v).size===2,"unsigned Plucker relation");
  const i=v.findIndex(x=>v.filter(y=>y===x).length===1);need(i>=0,"invalid circuit isolation");
  const normalize=a=>a.slice().sort().join("*"),iso=cs[i].slice(0,2).map(key),rhs=cs.filter((_,j)=>j!==i).map(p=>p.slice(0,2).map(key));
  need(normalize(r.iso)===normalize(iso)&&equalSet(r.rhs.map(normalize),rhs.map(normalize)),"wrong unsigned Plucker products");
 }else if(r.kind==="quad"){
  const h=r.hull;need(h.length===4&&convex(kn,h),"nonconvex quadrilateral");need(r.occupants.length>=1&&new Set(r.occupants).size===r.occupants.length&&r.occupants.every(p=>inside(kn,h,p)),"unproved quadrilateral occupants");
  const[a,b,c,d]=h;need(equalSet(r.parts,[key(a+b+c),key(a+c+d)]),"wrong quadrilateral diagonal");need(eq(Q(r.floor),quadFloor(r.occupants.length)),"wrong quadrilateral floor");
 }else if(r.kind==="support"){
  const src=r.source,h=src[1];need(convex(kn,h),"nonconvex support hull");
  let expected,rate;
  if(src[0]==="pentagon"){
   need(h.length===5,"wrong five-chain length");const[a,b,c,d,e]=h;expected=[key(a+b+e),key(a+d+e),key(a+b+d)];rate=Q(11);
  }else if(src[0]==="pentagon-ears"){
   need(h.length===5,"wrong five-chain length");const[a,b,c,d,e]=h,ears=[a+b+c,b+c+d,c+d+e],occs=src[2];
   need(Array.isArray(occs)&&occs.length===3&&occs.every((ps,i)=>equalSet(ps,occupied(kn,ears[i]))),"unproved pentagon ear occupants");
   rate=Q(["11","139/10","199/10","27"][occs.filter(ps=>ps.length).length]);need(eq(rate,Q(src[3])),"wrong pentagon ear support rate");expected=[key(a+b+e),key(a+d+e),key(a+b+d)];
  }else if(src[0]==="quad"){
   need(h.length===4,"wrong quad support length");const[a,b,c,d]=h,occ=src[2];need(occ.length>=1&&occ.length<=2&&new Set(occ).size===occ.length&&occ.every(p=>inside(kn,h,p)),"unproved support occupants");
   const n1=occ.filter(p=>inside(kn,a+c+d,p)).length,n2=occ.filter(p=>inside(kn,b+c+d,p)).length,shape=[n1,n2].sort().join("");
   const table=occ.length===1?{"00":"1457/250","01":"149/20","11":"12"}:{"00":"1142/125","01":"1142/125","02":"139/10","11":"12","12":"199/10","22":"149/5"};
   need(table[shape],"unknown support allocation");rate=Q(table[shape]);
   if(occ.length===2&&occ.every(p=>inside(kn,a+b+c,p)&&inside(kn,a+b+d,p)))rate=max(rate,Q("299/31"));
   need(eq(Q(src[3]),rate),"support rate/witness mismatch");expected=[key(a+b+d),key(a+b+c),key(a+c+d)];
  }else throw Error("unknown support witness");
  need(r.X===expected[0]&&r.Y===expected[1]&&r.Z===expected[2]&&eq(Q(r.constant),mul(rate,S)),"wrong support inequality");
 }else if(r.kind==="bary"){
  const w=r.witness,h=w.container,inner=w.inner,line=w.line;
  need(h.length===3&&new Set(h).size===3&&inside(kn,h,inner)&&line.length===2&&new Set(line).size===2,"unproved area barycentric containment");
  need(r.outer===key(h)&&equalSet(r.fans,[key(h[1]+h[2]+inner),key(h[0]+h[2]+inner),key(h[0]+h[1]+inner)]),"wrong barycentric fan");
  const expectedFans=[key(h[1]+h[2]+inner),key(h[0]+h[2]+inner),key(h[0]+h[1]+inner)];need(JSON.stringify(r.fans)===JSON.stringify(expectedFans),"barycentric weight order");
  const target=line.includes(inner)?null:key(line+inner);need(r.target===target&&r.targetSign===(target?sign(kn,line+inner):0),"wrong barycentric target");
  need(r.vertices.length===3&&r.vertices.every((v,i)=>v.name===(line.includes(h[i])?null:key(line+h[i]))&&v.sign===(line.includes(h[i])?0:sign(kn,line+h[i])))&&r.vertices.every(v=>!v.name||v.sign),"wrong barycentric vertex signs");
 }else throw Error("unlisted area relation "+r.kind);
}
function scalarInitial(row,stage,kn,state){
 need(["lo","hi"].includes(row.direction),"bad bound direction");const v=Q(row.value),source=row.source,kind=source[0];need(sign(kn,row.triangle),"unsigned initial area");
 if(kind==="occupants"){
  need(row.direction==="lo"&&equalSet(source[1],occupied(kn,row.triangle)),"wrong initial occupants");
  need(eq(v,mul(cost(source[1].length),S)),"wrong initial floor");
 }else if(kind==='octagon-ear-cap'){
  const[hull,ear,occupant,ceiling]=source.slice(1);need(row.direction==='hi'&&canonical(ear)[0]===row.triangle,'wrong octagon scalar cap triangle');
  const cap=octagonCap(kn,hull,ear,occupant);need(eq(cap,v)&&eq(cap,Q(ceiling)),'wrong octagon scalar cap');
 }else if(kind==="vertices"){
  need(row.direction==="hi","vertex source direction");const box=state.boxes.get(stage.id);need(box,"unproved endpoint cap box");
  const cap=min(ONE,vertexMaximum(signedAreaPoly(kn,row.triangle),box.lo,box.hi));
  need(eq(v,cap)&&eq(v,Q(source[1])),"incorrect vertex area cap");
 }else if(kind==="anchor"){
  const h=source[1],expr=source[2];need(row.direction==="hi"&&capContains(kn,row.triangle,h),"unproved anchor scalar cap");const i=anchorCaps[h]?.findIndex(a=>JSON.stringify(Object.entries(a).sort())===JSON.stringify(Object.entries(expr).sort()));need(i>=0,"wrong anchor expression");const box=state.boxes.get(stage.id);need(box,"anchor cap box absent");need(eq(v,vertexMaximum(anchorPoly(h,i),box.lo,box.hi)),"incorrect anchor scalar cap");
 }else if(kind==="top-container"){
  need(row.direction==="hi"&&[...row.triangle].every(x=>"EFRS".includes(x)),"wrong top-container points");const box=state.boxes.get(stage.id);need(box,"unproved top-container source box");const cap=mul(sub(ONE,box.lo[3]),sub(ONE,box.lo[4]));need(eq(v,cap)&&eq(v,Q(source[1])),"incorrect fixed top-container ceiling");
 }else if(kind==="top-affine"||kind==="top-apex"){
  need(row.direction==="hi","top scalar direction");const box=state.boxes.get(stage.id);need(box,"missing top cap box");let expected;
  if(kind==="top-affine"){const[base,x,y]=source[1];need((base==="E"||base==="F")&&"RS".includes(x)&&"RS".includes(y)&&x!==y&&canonical(base+x+y)[0]===row.triangle&&sign(kn,base+x+y)===1,"incorrect top affine order");const xi=6+2*"PQRS".indexOf(x),yi=6+2*"PQRS".indexOf(y);expected=base==="E"?min(sub(box.hi[xi+1],box.lo[3]),sub(ONE,box.lo[yi])):min(sub(ONE,box.lo[xi+1]),sub(box.hi[yi],box.lo[4]));}
  else{const x=source[1],i=6+2*"PQRS".indexOf(x);need("RS".includes(x)&&canonical("EF"+x)[0]===row.triangle,"incorrect top apex");expected=min(sub(box.hi[i],box.lo[4]),sub(box.hi[i+1],box.lo[3]));}
  need(eq(v,expected),"incorrect top affine ceiling");
 }else if(kind==="square"){
  need(row.direction==="hi"&&eq(v,ONE),"wrong unit-square area ceiling");
 }else if(kind==="earlier-area"){
  const b=state.crossBound(source[1].ref,stage);need(row.triangle===b.triangle&&row.direction===b.direction&&eq(v,b.value)&&source[1].triangle===b.triangle&&source[1].direction===b.direction&&eq(Q(source[1].value),v),"incorrect inherited scalar bound");
 }else throw Error("unlisted scalar source "+kind);
 return {triangle:row.triangle,direction:row.direction,value:v,stage:stage.id};
}
function baryValue(r,refs,which){
 const expected=[[r.outer,"hi"],...r.fans.map(t=>[t,"lo"]),...r.vertices.filter(t=>t.name).map(t=>[t.name,which==="lo"?(t.sign>0?"lo":"hi"):(t.sign>0?"hi":"lo")])];
 need(refs.length===expected.length&&refs.every((b,i)=>b.triangle===expected[i][0]&&b.direction===expected[i][1]),"wrong barycentric references");
 const N=refs[0].value,weights=refs.slice(1,4).map(b=>b.value),residual=sub(N,sum(weights));need(lt(Z,N)&&weights.every(b=>le(Z,b))&&le(Z,residual),"invalid barycentric area budget");
 let j=4;const vertices=r.vertices.map(t=>t.name?(t.sign>0?refs[j++].value:neg(refs[j++].value)):Z);
 return div(add(sum(weights.map((b,i)=>mul(b,vertices[i]))),mul(residual,which==="lo"?min(...vertices):max(...vertices))),N);
}
function scalarUpdate(row,stage,relation,state){
 const refs=row.refs.map(id=>{const b=state.bounds.get(id);need(b,"unproved scalar reference "+id);need(Number(id.split(":")[0])===stage.id&&Number(id.split(":")[1])<Number(row.id.split(":")[1]),"future/nonlocal scalar reference");return b;});
 const r=relation,dir=row.direction,t=row.triangle;need(["lo","hi"].includes(dir),"bad update direction");
 let expected=[],raw;
 const refsMatch=()=>{need(refs.length===expected.length,"wrong update arity");expected.forEach(([tri,d],i)=>need(refs[i].triangle===tri&&refs[i].direction===d,"wrong referenced bound in "+row.id));};
 const val=i=>refs[i].value,positive=i=>{need(lt(Z,val(i)),"nonpositive denominator");return val(i);};
 if(r.kind==="four"){
  const i=r.terms.findIndex(x=>x.triangle===t);need(i>=0,"absent four-point target");const target=r.terms[i],others=r.terms.filter((_,j)=>i!==j),cs=others.map(x=>-x.co*target.co);expected=others.map((x,j)=>[x.triangle,cs[j]>0?dir:(dir==="lo"?"hi":"lo")]);refsMatch();raw=sum(refs.map((x,j)=>mul(Q(cs[j]),x.value)));
 }else if(r.kind==="fan"){
  if(t===r.outer){expected=r.parts.map(x=>[x,dir]);refsMatch();raw=sum(refs.map(x=>x.value));}
  else{const i=r.parts.indexOf(t);need(i>=0,"fan target absent");const others=r.parts.filter((_,j)=>i!==j);expected=[[r.outer,dir],...others.map(x=>[x,dir==="lo"?"hi":"lo"])];refsMatch();raw=sub(val(0),add(val(1),val(2)));}
 }else if(r.kind==="quad"){
  const i=r.parts.indexOf(t);need(i>=0&&dir==="lo","wrong quad target");expected=[[r.parts[1-i],"hi"]];refsMatch();raw=sub(Q(r.floor),val(0));
 }else if(r.kind==="plu"){
  const i=r.iso.indexOf(t);
  if(i>=0){expected=[...r.rhs.flat().map(x=>[x,dir]),[r.iso[1-i],dir==="lo"?"hi":"lo"]];refsMatch();raw=div(add(mul(val(0),val(1)),mul(val(2),val(3))),positive(4));}
  else{let a=-1,b=-1;for(let j=0;j<2;j++)for(let k=0;k<2;k++)if(r.rhs[j][k]===t){a=j;b=k;}need(a>=0,"Plucker target absent");
   expected=[...r.iso.map(x=>[x,dir]),...r.rhs[1-a].map(x=>[x,dir==="lo"?"hi":"lo"]),[r.rhs[a][1-b],dir==="lo"?"hi":"lo"]];refsMatch();
   raw=div(sub(mul(val(0),val(1)),mul(val(2),val(3))),positive(4));if(dir==="hi")raw=max(Z,raw);
  }
 }else if(r.kind==="support"){
  const k=Q(r.constant);need(lt(Z,k),"nonpositive support constant");
  if(t===r.Y&&dir==="lo"){expected=[[r.Z,"hi"],[r.X,"lo"]];refsMatch();raw=mul(k,sub(ONE,div(val(0),positive(1))));}
  else if(t===r.Z&&dir==="lo"){expected=[[r.X,"lo"],[r.Y,"hi"]];refsMatch();raw=mul(val(0),sub(ONE,div(val(1),k)));}
  else if(t===r.X&&dir==="hi"){expected=[[r.Z,"hi"],[r.Y,"hi"]];refsMatch();need(lt(val(1),k),"invalid support upper denominator");raw=div(mul(k,val(0)),sub(k,val(1)));}
  else throw Error("unsupported support update");
 }else if(r.kind==="bary"){
  need(t===r.target&&r.target!==null,"wrong barycentric area target");
  const which=r.targetSign>0?dir:(dir==="lo"?"hi":"lo");raw=baryValue(r,refs,which);if(r.targetSign<0)raw=neg(raw);
 }else throw Error("unknown scalar update relation");
 need(eq(raw,Q(row.raw)),"wrong exact scalar update "+row.id);
 const rounded=dir==="lo"?down(raw):up(raw);need(eq(rounded,Q(row.value)),"unsafe scalar rounding "+row.id);
 return {triangle:t,direction:dir,value:rounded,stage:stage.id};
}
function verifyAreas(stage,kn,state){
 const ids=new Set();let previous=-1;
 function insert(row,b){need(typeof row.id==="string"&&row.id.startsWith(stage.id+":")&&!state.bounds.has(row.id),"duplicate/global bound id");const n=Number(row.id.split(":")[1]);need(Number.isInteger(n)&&n>=0&&n>previous,"unordered scalar IDs");previous=n;state.bounds.set(row.id,b);ids.add(row.id);}
 for(const row of stage.areaInitial)insert(row,scalarInitial(row,stage,kn,state));
 const relations=new Map();for(const[i,r]of Object.entries(stage.relations)){relationGeometry(r,kn);relations.set(i,r);}
 for(const row of stage.areaUpdates){need(row.why.length===2&&relations.has(String(row.why[1])),"missing scalar relation");const r=relations.get(String(row.why[1]));need(row.why[0]===r.kind,"wrong relation type");insert(row,scalarUpdate(row,stage,r,state));}
 let affineFactors=0,affineWeights=0;
 for(const row of stage.affineBounds||[]){const c=verifyAffine(row.certificate,stage,kn,state,row);affineFactors+=c.factors;affineWeights+=c.weights;insert(row,{triangle:row.triangle,direction:row.direction,value:Q(row.value),stage:stage.id});}
 return {initial:stage.areaInitial.length,updates:stage.areaUpdates.length,relations:relations.size,affineBounds:(stage.affineBounds||[]).length,affineFactors,affineWeights};
}


function verifyGeometricTerminal(reason,kn,allowed){
 const [kind,h,p,fan,others]=reason;
 if(kind==="sign"){need((p===1||p===-1)&&sign(kn,h)===-p&&allowed.has(h+(p>0?"+":"-")),"unproved conflicting actual-sign premise");return;}
 if(kind==="plubad"){
  need(h.length===5&&new Set(h).size===5&&[...h].every(x=>LABELS.includes(x)),"invalid Pluecker circuit");
  const vals=circuit(h).map(([a,b,c])=>c*sign(kn,a)*sign(kn,b));
  need(vals[0]!==0&&vals.every(v=>v===vals[0]),"no Pluecker sign contradiction");
  return;
 }
 if(kind==='octagon-ears'){
  need(WORD==='+'&&h==='ABCERSFH'&&convex(kn,h)&&Array.isArray(p)&&p.length===2,'unproved octagon terminal');
  const ears=[...h].map((_,i)=>h[(i+7)%8]+h[i]+h[(i+1)%8]);
  need(p.every(z=>Array.isArray(z)&&z.length===2&&ears.includes(z[0])&&'PQ'.includes(z[1])&&inside(kn,z[0],z[1])),'unproved octagon occupants');
  need(JSON.stringify(p[0])!==JSON.stringify(p[1]),'repeated octagon occupancy');return;
 }
 if(kind==="cluster"){
  need(h.length===3&&sign(kn,h)===1&&inside(kn,h,p)&&Array.isArray(others)&&others.length===2&&new Set([p,...others]).size===3&&others.every(x=>inside(kn,h,x)&&inside(kn,fan,x))&&edgeWords(h).some(e=>e+p===fan),"unproved clustered triple");return;
 }
 need(kind==="nomesh"&&h.length===3&&sign(kn,h)===1&&Array.isArray(p)&&p.length===3&&new Set(p).size===3&&p.every(x=>inside(kn,h,x)),"unproved distributed-mesh container");
 for(const order of permutations(p)){
  const map=Object.fromEntries([..."ABCXYZ"].map((x,i)=>[x,(h+order.join(""))[i]]));
  const conflicts=MESH.some(z=>{const t=[...z].map(x=>map[x]).join("");return sign(kn,t)===-1;});
  need(conflicts,"unexcluded distributed mesh labeling");
 }
}
function verifyAffine(cert,stage,kn,state,output=null){
 const coeff=(m,t,v)=>{const c=add(m.get(t)||Z,v);if(c.n)m.set(t,c);else m.delete(t);};
 const same=(m,o)=>{const n=new Map(Object.entries(o).map(([t,v])=>[t,Q(v)]).filter(([,v])=>v.n));return m.size===n.size&&[...m].every(([t,v])=>n.has(t)&&eq(v,n.get(t)));};
 function bound(w){const b=state.bounds.get(w.ref);need(b&&b.stage===stage.id&&b.triangle===w.triangle&&b.direction===w.side&&eq(b.value,Q(w.value)),"unproved affine area source");if(output)need(Number(w.ref.split(":")[1])<Number(output.id.split(":")[1]),"future affine bound source");return b.value;}
 function product(p,put){
  need([1,-1].includes(p.sign)&&p.type===(p.sign===1?"upper":"lower")&&[0,1].includes(p.choice)&&p.bounds.length===2,"bad McCormick direction");
  const sides=p.type==="lower"?(p.choice===0?["lo","lo"]:["hi","hi"]):(p.choice===0?["hi","lo"]:["lo","hi"]);
  need(p.bounds[0].triangle===p.X&&p.bounds[1].triangle===p.Y&&p.bounds.every((b,i)=>b.side===sides[i]),"wrong McCormick source direction");
  const x=bound(p.bounds[0]),y=bound(p.bounds[1]),sg=Q(p.sign);put(p.X,mul(sg,y));put(p.Y,mul(sg,x));return neg(mul(sg,mul(x,y)));
 }
 const fs=new Map();
 for(const f of cert.factors){
  need(!fs.has(f.index),"duplicate affine factor");const o=f.origin,co=new Map();let c=Z;const put=(t,v)=>coeff(co,t,Q(v));
  if(o.kind==="bound"){
   const b=o.bound;need(b.triangle===o.triangle&&b.side===o.direction&&["lo","hi"].includes(o.direction),"wrong affine bound factor");const v=bound(b);put(b.triangle,b.side==="lo"?ONE:neg(ONE));c=b.side==="lo"?neg(v):v;
  }else if(o.kind==="fan"){
   const r=stage.relations[o.relation];need(r&&r.kind==="fan"&&[1,-1].includes(o.direction),"bad affine fan");put(r.outer,o.direction);r.parts.forEach(t=>put(t,-o.direction));
  }else if(o.kind==="four_point"){
   const[a,b,c0,d]=o.vertices;need(o.vertices.length===4&&new Set(o.vertices).size===4&&[1,-1].includes(o.direction),"bad four-point identity");
   for(const[t,sg]of [[a+b+c0,1],[a+c0+d,1],[a+b+d,-1],[b+c0+d,-1]]){need(sign(kn,t),"unknown four-point sign");put(canonical(t)[0],sg*o.direction*sign(kn,t));}
  }else if(o.kind==="quad"){
   const r=stage.relations[o.relation];need(r&&r.kind==="quad","bad affine quadrilateral");c=neg(Q(r.floor));r.parts.forEach(t=>put(t,ONE));
  }else if(o.kind==="product_linear_envelope"){
   const r=stage.relations[o.relation];need(r&&r.kind==="plu"&&[1,-1].includes(o.orientation)&&o.products.length===3,"bad affine product identity");
   const pair=(x,y)=>[x,y].sort().join("*"),expected=[[o.orientation,pair(...r.iso)],...r.rhs.map(p=>[-o.orientation,pair(...p)])].map(v=>v.join(":")).sort();
   need(JSON.stringify(expected)===JSON.stringify(o.products.map(p=>[p.sign,pair(p.X,p.Y)].join(":")).sort()),"incorrect envelope products");for(const p of o.products)c=add(c,product(p,put));
  }else if(o.kind==="support_envelope"){
   const r=stage.relations[o.relation],p=o.product;need(r&&r.kind==="support"&&p.X===r.X&&p.Y===r.Y&&p.sign===1,"incorrect support envelope witness");c=product(p,put);const k=Q(r.constant);put(r.X,neg(k));put(r.Z,k);
  }else if(o.kind==="bary_affine"){
   const r=stage.relations[o.relation],sg=o.direction;need(r&&r.kind==="bary"&&[1,-1].includes(sg),"incorrect affine barycentric witness");
   const expected=[[r.outer,"hi"],...r.fans.map(t=>[t,"lo"]),...r.vertices.filter(v=>v.name).map(v=>[v.name,sg*v.sign>0?"lo":"hi"])];need(o.sources.length===expected.length&&o.sources.every((b,i)=>b.triangle===expected[i][0]&&b.side===expected[i][1]),"incorrect affine barycentric endpoint order");
   const vs=o.sources.map(bound),N=vs[0],bs=vs.slice(1,4),R=sub(N,sum(bs));need(lt(Z,N)&&bs.every(b=>le(Z,b))&&le(Z,R),"invalid affine barycentric budget");let j=4;const vals=r.vertices.map(v=>v.name?mul(Q(v.sign),vs[j++]):Z);
   if(r.target)put(r.target,mul(Q(sg*r.targetSign),N));r.vertices.forEach((v,i)=>{if(v.name)put(v.name,mul(Q(-sg*v.sign),bs[i]));});c=sg>0?neg(mul(R,min(...vals))):mul(R,max(...vals));
  }else throw Error("unlisted affine factor kind");
  need(same(co,f.coefficients)&&eq(c,Q(f.constant)),"wrong affine factor expansion");fs.set(f.index,{co,c});
 }
 const totals=new Map(),used=new Set();let constant=Z;
 for(const[i,w0]of cert.weights){const f=fs.get(i),w=Q(w0);need(f&&!used.has(i)&&w.d===1n&&lt(Z,w),"invalid positive affine weight");used.add(i);constant=add(constant,mul(w,f.c));for(const[t,c]of f.co)coeff(totals,t,mul(w,c));}
 need(used.size===fs.size,"unused affine factor");need(eq(constant,Q(cert.sum.constant))&&same(totals,cert.sum.coefficients),"incorrect weighted affine sum");
 const box={};for(const[t,r]of Object.entries(cert.box)){need(r.lo.triangle===t&&r.hi.triangle===t&&r.lo.side==="lo"&&r.hi.side==="hi","wrong affine ceiling bound");box[t]={lo:bound(r.lo),hi:bound(r.hi)};need(le(box[t].lo,box[t].hi),"inconsistent affine box");}
 let maximum=constant;for(const[t,c]of totals){if(output&&t===output.triangle)continue;need(box[t],"missing area bound for affine ceiling");maximum=add(maximum,mul(c,c.n>0n?box[t].hi:box[t].lo));}
 if(output){
  need(cert.target===output.triangle&&cert.direction===output.direction&&["lo","hi"].includes(output.direction),"incorrect affine bound target");const c=totals.get(output.triangle);need(c&&(output.direction==="lo"?lt(Z,c):lt(c,Z)),"wrong target coefficient sign");const raw=div(neg(maximum),c),rounded=output.direction==="lo"?down(raw):up(raw);need(eq(raw,Q(output.raw))&&eq(raw,Q(cert.raw))&&eq(rounded,Q(output.value))&&eq(rounded,Q(cert.value)),"incorrect exact affine target bound");
 }else need(eq(maximum,Q(cert.upper))&&lt(maximum,Z),"affine ceiling not strictly negative");
 return {factors:fs.size,weights:used.size};
}


function verifyCoordinateCertificate(cert,stage,kn,state){
 const box=state.boxes.get(stage.id);need(box&&cert.boxStage===stage.id,"coordinate terminal needs completed current box");
 const polys=new Map(),used=new Set();
 for(const row of cert.sources){
  need(Number.isInteger(row.index)&&row.index>=0&&!polys.has(row.index),"duplicate coordinate source");
  const w=row.witness;let expected;
  if(row.kind==="bound"){
   const b=state.bounds.get(w.ref);need(b&&b.triangle===w.triangle&&b.direction===w.direction&&eq(b.value,Q(w.value)),"unproved coordinate area bound");
   if(b.stage!==stage.id)state.checkScope(b.stage,stage.id);
   const p=signedAreaPoly(kn,w.triangle);expected=w.direction==="lo"?minus(p,qpoly(b.value)):minus(qpoly(b.value),p);
  }else if(row.kind==="coordinate"){
   const i=VARS.indexOf(w.variable);need(i>=0&&w.box===stage.id&&["lo","hi"].includes(w.direction),"wrong coordinate source box");
   const endpoint=box[w.direction][i];need(eq(endpoint,Q(w.value)),"wrong coordinate source endpoint");
   expected=w.direction==="lo"?minus(V[i],qpoly(endpoint)):minus(qpoly(endpoint),V[i]);
  }else if(row.kind==="physical"){
   need(Number.isInteger(w.factor)&&w.factor>=0,"invalid physical source index");
   let factorBox=box;
   if(w.stage!==undefined){state.checkScope(w.stage,stage.id);factorBox=state.boxes.get(w.stage);need(factorBox,"unproved physical source stage");}
   expected=factorBox.polys.get(String(w.factor));need(expected,"coordinate source missing from preceding Physical factors");
  }else throw Error("unknown coordinate source kind");
  const actual=termsPoly(row.terms);need(samePoly(actual,expected),"incorrect coordinate source polynomial");polys.set(row.index,actual);
 }
 let total=new Map();
 for(let i=0;i<cert.products.length;i++){
  const row=cert.products[i];need(row.index===i&&/^[1-9][0-9]*$/.test(String(row.weight))&&row.factors.length>=1&&row.factors.length<=4,"invalid positive coordinate product");
  let p=qpoly(row.weight);for(const j of row.factors){need(polys.has(j),"missing coordinate product source");used.add(j);p=times(p,polys.get(j));}total=plus(total,p);
 }
 need(cert.products.length>0&&used.size===polys.size,"unused coordinate source or empty certificate");
 need(samePoly(total,termsPoly(cert.sum,true)),"incorrect expanded coordinate sum");
 let shifted=new Map();for(const[m,c]of total){let p=qpoly(c);for(const i of m.split(",").filter(Boolean).map(Number))p=times(p,plus(qpoly(box.lo[i]),V[i]));shifted=plus(shifted,p);}
 const printed=new Map();let ceiling=Z;
 for(const row of cert.shifted){
  const key=row.monomial.slice().sort((a,b)=>a-b).join(",");need(!printed.has(key)&&row.monomial.every(i=>Number.isInteger(i)&&i>=0&&i<VARS.length),"invalid shifted monomial");
  const c=Q(row.coefficient);need(c.n!==0n,"zero shifted coefficient");printed.set(key,c);
  let width=ONE;for(const i of row.monomial)width=mul(width,sub(box.hi[i],box.lo[i]));
  need(eq(width,Q(row.width)),"incorrect repeated width product");const contribution=key===""?c:lt(Z,c)?mul(c,width):Z;
  need(eq(contribution,Q(row.contribution)),"incorrect shifted upper contribution");ceiling=add(ceiling,contribution);
 }
 need(samePoly(shifted,printed),"incomplete shifted coordinate polynomial");need(eq(ceiling,Q(cert.upper))&&lt(ceiling,Z),"no exact coordinate contradiction");
 return{sources:polys.size,products:cert.products.length,monomials:total.size,shifted:shifted.size};
}

function buildPlan(packet){
 need(!(packet.frontiers||[]).length,"unfinished proof frontier");
 need(packet.format==="n6-bitt-proof-v1","wrong packet format");
 const h=packet.hypotheses;need(h.conclusion===CONCLUSION&&(["contradiction","lower-central"].includes(CONCLUSION))&&(CONCLUSION!=="lower-central"||WORD==="-"),"wrong proof conclusion");need(sameQ(h.s,S)&&h.locations==="BITT"&&h.word===WORD&&h.normalized===true&&h.labels===LABELS&&JSON.stringify(h.variables)===JSON.stringify(VARS),"wrong hypotheses");
 need(equalSet(h.additionalSigns||[],additionalSigns),"unexpected additional actual signs");
 additionalSigns.forEach(tokenSign);
 const nodes=new Map(packet.signTree.map(x=>[x.id,x]));need(nodes.size===packet.signTree.length&&nodes.has("root"),"sign tree IDs");
 const plans=[],visited=new Set(),terminalStages=new Set(),forceByStage=new Map(),metricsSeen=new Set();let signSplits=0,coordinateSplits=0;
 const claim=(sid,info)=>{need(Number.isInteger(sid)&&sid>=0&&sid<packet.stages.length&&!plans[sid],"duplicate/invalid stage");plans[sid]=info;};
 const addTerminal=sid=>{need(!terminalStages.has(sid),"duplicate terminal");terminalStages.add(sid);};
 function metric(tree,scope,allowed,cuts,parent=null,cut=null){
  need(tree&&tree.stages?.length,"empty metric proof");let prior=parent;
  tree.stages.forEach((sid,i)=>{claim(sid,{scope,allowed:new Set(allowed),cuts:cuts.slice(),parent:i?tree.stages[i-1]:prior,cut:i?null:cut,packet:tree.packet,index:i});});
  const last=tree.stages.at(-1);
  need(!(tree.split&&tree.continuation),"ambiguous metric continuation");
  if(tree.split){
   const s=tree.split;need(VARS.includes(s.variable),"unknown cut coordinate");Q(s.value);coordinateSplits++;
   for(const side of ["low","high"]){need(s[side],"missing coordinate branch");const c={variable:s.variable,value:s.value,side};metric(s[side],scope,allowed,[...cuts,c],last,c);}
  }else if(tree.continuation){
   const f=tree.continuation.forcedSource;need(f&&f.forest==="top_scalar_forest_BTTT_--+-"&&f.id===scope,"bad continuation source");
   const n=nodes.get(scope);need(n&&n.forces.some(x=>x.token===f.token&&n.stages[f.stage]===x.stage)&&allowed.has(f.token),"unproved continuation sign");
   metric(tree.continuation,scope,allowed,cuts,last,null);
  }else addTerminal(last);
 }
 function visit(id,allowed,depth,parent=null){
  need(!visited.has(id)&&nodes.has(id),"invalid sign branch");visited.add(id);const n=nodes.get(id);need(n.depth===depth&&equalSet(n.given,[...allowed]),"sign scope mismatch "+id);
  need(n.stages?.length,"empty sign stage list");let current=new Set(allowed);
  for(let i=0;i<n.stages.length;i++){
   const sid=n.stages[i];claim(sid,{scope:id,allowed:new Set(current),cuts:[],parent:i?n.stages[i-1]:parent,cut:null,packet:"forest:"+id,index:i});
   const fs=n.forces.filter(f=>f.stage===sid);forceByStage.set(sid,fs);
   for(const f of fs){tokenSign(f.token);need(!current.has(f.token),"repeated forced sign");current.add(f.token);}
  }
  need(n.forces.every(f=>n.stages.includes(f.stage)),"force at absent stage");
  if(n.split){
   canonical(n.split);need(n.split.length===3&&n.children?.length===2,"bad sign split");signSplits++;
   for(let i=0;i<2;i++){const sign=i===0?"-":"+",child=id+"/"+n.split+sign;need(n.children[i]===child,"wrong signed child");const next=new Set(current);next.add(n.split+sign);visit(child,next,depth+1,n.stages.at(-1));}
  }else if(n.metric){
   need(n.metric===id&&packet.metrics[id],"missing metric closure");metricsSeen.add(id);metric(packet.metrics[id],id,current,[],n.stages.at(-1),null);
  }else{
   need(n.terminal===n.stages.at(-1),"nonfinal sign terminal");addTerminal(n.terminal);
  }
 }
 need(typeof h.lowerCentral==='boolean',"unstated lower-central domain");
 visit("root",new Set([...(h.lowerCentral?['ACP+','HBP+']:[]),...additionalSigns]),0);
 need(visited.size===nodes.size&&metricsSeen.size===Object.keys(packet.metrics).length,"uncovered sign/metric node");
 need(plans.length===packet.stages.length&&plans.every(Boolean),"unassigned numeric stages");
 const terminals=new Map(packet.terminals.map(t=>[t.stage,t]));need(terminals.size===packet.terminals.length&&equalSet([...terminals.keys()],[...terminalStages]),"terminal coverage differs");
 packet.stages.forEach((s,i)=>{need(s.id===i&&s.scope===plans[i].scope&&s.packet===plans[i].packet&&s.index===plans[i].index,"stage identity mismatch");
  if(s.box){need(s.box.parent===plans[i].parent&&JSON.stringify(s.box.cut)===JSON.stringify(plans[i].cut),"box ancestry differs at "+i);}
 });
 return {plans,terminals,forceByStage,signSplits,coordinateSplits};
}
function verifyCapacity(f,stage,kn,state){
 const b=state.bounds.get(f.upperRef);need(b&&b.stage===stage.id&&b.direction==="hi"&&b.triangle===canonical(f.outer)[0],"unproved capacity upper reference");
 need(eq(b.value,Q(f.upper))&&f.occupants.every(p=>inside(kn,f.outer,p))&&new Set(f.occupants).size===f.occupants.length,"capacity witness mismatch");
 need(!f.outer.includes(f.point)&&!f.occupants.includes(f.point),"capacity point repeated");
 const next=mul(cost(f.occupants.length+1),S);need(eq(Q(f.nextCost),next)&&lt(b.value,next),"capacity is insufficient");
 const s=sign(kn,f.outer);need(s,"unsigned capacity hull");const tests=edgeWords(f.outer).map(e=>[e+f.point,sign(kn,e+f.point)]);
 need(tests.filter(x=>x[1]===s).length===2,"capacity lacks two inside sides");const missing=tests.find(x=>x[1]!==s);need(missing&&missing[1]===0,"capacity third side already fixed");
 const[k,e]=canonical(missing[0]),[kk,ee]=canonical(f.token.slice(0,3));need(k===kk&&e*(-s)===ee*tokenSign(f.token),"wrong capacity-forced sign");
}
function verify(packet,options={}){
 const start=Date.now(),plan=buildPlan(packet),contextCache=new Map(),stats={contexts:0,geometryDeductions:0,stages:0,intervalSteps:0,physicalFactors:0,initialBounds:0,areaUpdates:0,scalarRelations:0,capacityForces:0,terminals:0,signSplits:plan.signSplits,coordinateSplits:plan.coordinateSplits,linearFactors:0,linearWeights:0,linearTerminals:0,affineBounds:0,coordinateSources:0,coordinateProducts:0,coordinateMonomials:0,coordinateShifted:0,coordinateTerminals:0};
 const state={plans:plan.plans,boxes:new Map(),bounds:new Map()};
 const cutKey=c=>c.variable+":"+str(Q(c.value))+":"+c.side;
 state.checkScope=(source,target)=>{
  need(source<target,"nonpreceding proof stage");const a=plan.plans[source],b=plan.plans[target];need(a&&b&&(a.scope===b.scope||b.scope.startsWith(a.scope+"/")),"sibling sign-branch dependency");
  const cuts=new Set(b.cuts.map(cutKey));need(a.cuts.every(c=>cuts.has(cutKey(c))),"sibling coordinate-branch dependency");
 };
 state.crossBound=(id,stage)=>{const b=state.bounds.get(id);need(b,"unproved earlier bound "+id);state.checkScope(b.stage,stage.id);return b;};
 for(const stage of packet.stages){
  const pp=plan.plans[stage.id],ctx=packet.contexts[stage.context];need(ctx,"missing geometry context");need(ctx.given.every(t=>pp.allowed.has(t)),"future capacity sign in context");
  let kn=contextCache.get(stage.context);if(!kn){kn=verifyContext(ctx,pp.allowed);contextCache.set(stage.context,kn);stats.contexts++;stats.geometryDeductions+=ctx.trace.length;}
  const terminal=plan.terminals.get(stage.id);
  if(stage.box){const r=verifyBox(stage,kn,state,terminal);stats.intervalSteps+=r.steps;stats.physicalFactors+=r.factors;}
  else need(terminal?.kind!=="interval","interval terminal without box");
  const a=verifyAreas(stage,kn,state);stats.initialBounds+=a.initial;stats.areaUpdates+=a.updates;stats.scalarRelations+=a.relations;stats.affineBounds+=a.affineBounds;stats.linearFactors+=a.affineFactors;stats.linearWeights+=a.affineWeights;
  for(const f of plan.forceByStage.get(stage.id)||[]){verifyCapacity(f,stage,kn,state);stats.capacityForces++;}
  if(terminal){
   need(["interval","area","geometry","linear","baryZero","coordinate","lower-central"].includes(terminal.kind),"unlisted geometric terminal");
   if(terminal.kind==="lower-central"){need(CONCLUSION==="lower-central"&&JSON.stringify(terminal.premises)===JSON.stringify(["ACP+","HBP+"])&&sign(kn,"ACP")===1&&sign(kn,"HBP")===1,"unproved lower-central conclusion");}
   if(terminal.kind==="geometry"){verifyGeometricTerminal(terminal.reason,kn,pp.allowed);}
   if(terminal.kind==="linear"){const counts=verifyAffine(terminal.certificate,stage,kn,state);stats.linearFactors+=counts.factors;stats.linearWeights+=counts.weights;stats.linearTerminals++;}
   if(terminal.kind==="coordinate"){const counts=verifyCoordinateCertificate(terminal.certificate,stage,kn,state);stats.coordinateSources+=counts.sources;stats.coordinateProducts+=counts.products;stats.coordinateMonomials+=counts.monomials;stats.coordinateShifted+=counts.shifted;stats.coordinateTerminals++;}
   if(terminal.kind==="baryZero"){
    const r=stage.relations[terminal.relation];need(r&&r.kind==="bary"&&r.target===null,"wrong zero barycentric relation");
    const refs=terminal.refs.map(ids=>ids.map(id=>{const b=state.bounds.get(id);need(b&&b.stage===stage.id,"missing zero barycentric bound");return b;}));
    const lower=baryValue(r,refs[0],"lo"),upper=baryValue(r,refs[1],"hi");need(eq(lower,Q(terminal.lower))&&eq(upper,Q(terminal.upper))&&(lt(Z,lower)||lt(upper,Z)),"zero belongs to barycentric interval");
   }
   if(terminal.kind==="area"){
    need(terminal.ids.length===2,"wrong terminal arity");const[l,u]=terminal.ids.map(id=>state.bounds.get(id));need(l&&u&&l.stage===stage.id&&u.stage===stage.id&&l.triangle===u.triangle&&l.triangle===terminal.triangle&&l.direction==="lo"&&u.direction==="hi"&&lt(u.value,l.value),"no scalar contradiction");
    if(terminal.lower!==undefined)need(eq(l.value,Q(terminal.lower)),"terminal lower differs");if(terminal.upper!==undefined)need(eq(u.value,Q(terminal.upper)),"terminal upper differs");
   }
   stats.terminals++;
  }
  stats.stages++;
  if(options.progress)options.progress(stage.id,stats);
 }
 need(contextCache.size===packet.contexts.length,"unused geometry context");
 const expected=packet.totals;if(options.calculateTotals){packet.totals={contexts:stats.contexts,signNodes:packet.signTree.length,signSplits:stats.signSplits,signLeaves:packet.signTree.filter(n=>!n.split).length,coordinateSplits:stats.coordinateSplits,terminals:stats.terminals,stages:stats.stages,boxStages:state.boxes.size,intervalSteps:stats.intervalSteps,physicalFactors:stats.physicalFactors,areaBounds:state.bounds.size,areaUpdates:stats.areaUpdates,scalarRelations:stats.scalarRelations,linearFactors:stats.linearFactors,linearWeights:stats.linearWeights,linearTerminals:stats.linearTerminals,affineBounds:stats.affineBounds,coordinateSources:stats.coordinateSources,coordinateProducts:stats.coordinateProducts,coordinateMonomials:stats.coordinateMonomials,coordinateShifted:stats.coordinateShifted,coordinateTerminals:stats.coordinateTerminals};stats.milliseconds=Date.now()-start;return stats;}
 for(const[k,v]of Object.entries({contexts:stats.contexts,signNodes:packet.signTree.length,signSplits:stats.signSplits,signLeaves:packet.signTree.filter(n=>!n.split).length,coordinateSplits:stats.coordinateSplits,terminals:stats.terminals,stages:stats.stages,boxStages:state.boxes.size,intervalSteps:stats.intervalSteps,physicalFactors:stats.physicalFactors,areaBounds:state.bounds.size,areaUpdates:stats.areaUpdates,scalarRelations:stats.scalarRelations,linearFactors:stats.linearFactors,linearWeights:stats.linearWeights,linearTerminals:stats.linearTerminals,affineBounds:stats.affineBounds,coordinateSources:stats.coordinateSources,coordinateProducts:stats.coordinateProducts,coordinateMonomials:stats.coordinateMonomials,coordinateShifted:stats.coordinateShifted,coordinateTerminals:stats.coordinateTerminals}))need(expected[k]===v,"incorrect total "+k);
 stats.milliseconds=Date.now()-start;return stats;
}

function mdAreaLinear(x){
 if(x==="0")return{};const out={};for(const item of x.split(" + ")){const v=item.split(" * ");need(v.length===2&&!out[v[1]],"bad printed affine coefficient");Q(v[0]);canonical(v[1]);out[v[1]]=v[0];}return out;
}
function mdMonomial(x){if(x==="1")return[];return x.split(" * ").map(v=>{const i=VARS.indexOf(v);need(i>=0,"unknown terminal monomial variable");return i;});}
function mdCoordinate(text,stage){
 const c={sources:[],products:[],sum:[],shifted:[]};
 for(const[index,kind,witness,polynomial]of markdownRows(mdSection(text,"Coordinate certificate sources"),["Source","Kind","Source witness","Polynomial"]))c.sources.push({index:mdNumber(index),kind,witness:JSON.parse(witness),terms:mdPoly(polynomial)});
 for(const[index,weight,factors]of markdownRows(mdSection(text,"Positive coordinate products"),["Product","Weight","Source factors"]))c.products.push({index:mdNumber(index),weight,factors:mdList(factors).map(mdNumber)});
 for(const[m,coefficient]of markdownRows(mdSection(text,"Expanded coordinate sum"),["Monomial","Coefficient"]))c.sum.push([mdMonomial(m),coefficient]);
 for(const[m,coefficient,width,contribution]of markdownRows(mdSection(text,"Shifted coordinate ceiling"),["Monomial","Coefficient","Width product","Upper contribution"]))c.shifted.push({monomial:mdMonomial(m),coefficient,width,contribution});
 const rows=markdownRows(mdSection(text,"Exact coordinate contradiction"),["Box stage","Maximum"]);need(rows.length===1,"coordinate terminal count");c.boxStage=mdNumber(rows[0][0]);c.upper=rows[0][1];return{stage,kind:"coordinate",certificate:c};
}
function mdAffines(text,stage){
 const certs=new Map(),outputs=[];let terminal=null;
 for(const[id,output,target,direction,raw,value,upper]of markdownRows(mdSection(text,"Affine certificates"),["Certificate","Output bound","Target","Direction","Exact bound","Rounded bound","Terminal upper"])){
  const i=mdNumber(id);need(!certs.has(i),"duplicate affine certificate");const c={weights:[],factors:[],sum:null,box:{}};certs.set(i,c);
  if(output==="none"){need([target,direction,raw,value].every(x=>x==="none")&&upper!=="none"&&!terminal,"bad affine terminal metadata");c.upper=upper;terminal={stage,kind:"linear",certificate:c};}
  else{need(upper==="none"&&["lo","hi"].includes(direction),"bad affine bound metadata");Object.assign(c,{target,direction,raw,value});outputs.push({id:output,triangle:target,direction,raw,value,certificate:c});}
 }
 const get=i=>{const c=certs.get(mdNumber(i));need(c,"unknown affine certificate");return c;};
 for(const[i,index,origin,constant,co]of markdownRows(mdSection(text,"Exact affine factors"),["Certificate","Factor","Origin witness","Constant","Area coefficients"]))get(i).factors.push({index:mdNumber(index),origin:JSON.parse(origin),constant,coefficients:mdAreaLinear(co)});
 for(const[i,index,w]of markdownRows(mdSection(text,"Positive affine weights"),["Certificate","Factor","Weight"]))get(i).weights.push([mdNumber(index),w]);
 for(const[i,constant,co]of markdownRows(mdSection(text,"Weighted affine sums"),["Certificate","Constant","Area coefficients"])){const c=get(i);need(c.sum===null,"duplicate affine sum");c.sum={constant,coefficients:mdAreaLinear(co)};}
 for(const[i,t,l,lv,u,uv]of markdownRows(mdSection(text,"Affine ceiling sources"),["Certificate","Triangle","Lower reference","Lower bound","Upper reference","Upper bound"])){const c=get(i);need(!c.box[t],"duplicate affine ceiling source");c.box[t]={lo:{triangle:t,side:"lo",ref:l,value:lv},hi:{triangle:t,side:"hi",ref:u,value:uv}};}
 need([...certs.values()].every(c=>c.sum!==null),"missing affine sum");return{outputs,terminal};
}

function markdownRows(text,head){
 const lines=text.split(/\r?\n/).filter(l=>l.trim().startsWith("|"));
 need(lines.length>=2,"missing Markdown table");
 const cells=l=>l.trim().split("|").slice(1,-1).map(x=>{x=x.trim();return x.startsWith("\x60")&&x.endsWith("\x60")?x.slice(1,-1):x;});
 need(JSON.stringify(cells(lines[0]))===JSON.stringify(head),"unexpected Markdown columns: "+head.join(","));
 need(cells(lines[1]).every(x=>/^:?-+:?$/.test(x)),"missing table separator");
 return lines.slice(2).map(l=>{const row=cells(l);need(row.length===head.length,"ragged Markdown table");return row;});
}
function mdSection(text,title,level=3){
 const mark="\n"+"#".repeat(level)+" "+title+"\n",i=("\n"+text).indexOf(mark);need(i>=0,"missing printed section "+title);
 const rest=("\n"+text).slice(i+mark.length);const next=rest.search(/\n#{1,3} /);return next<0?rest:rest.slice(0,next);
}
function mdOptional(text,title){return text.includes("\n### "+title+"\n");}
function mdEntries(text){const out={};for(const[k,v]of markdownRows(text,["Property","Value"])){need(!(k in out),"duplicate Markdown property");out[k]=v;}return out;}
function mdList(x){return x==="none"?[]:x.split(", ");}
function mdNumber(x){need(/^(0|[1-9][0-9]*)$/.test(x),"invalid printed integer");return Number(x);}
function mdBlocks(text,kind){
 const rx=new RegExp("^## "+kind+" ([0-9]+)$","gm"),matches=[...text.matchAll(rx)];return matches.map((m,i)=>({id:mdNumber(m[1]),text:text.slice(m.index+m[0].length,i+1<matches.length?matches[i+1].index:text.length)}));
}
function mdEarlier(x){const a=x.split("; ");need(a.length===4,"malformed earlier-bound witness");return{ref:a[0],triangle:a[1],direction:a[2],value:a[3]};}
function mdPremise(x){
 if(x.startsWith("bitt ")){const a=JSON.parse(x.slice(5));need(Array.isArray(a)&&typeof a[0]==="string","malformed BITT factor witness");return a;}
 let m;if((m=/^actual ([A-Z]{3}); occupants (.*)$/.exec(x)))return["actual-area",m[1],mdList(m[2])];
 if((m=/^contact order (\w+)$/.exec(x)))return["contact-order",m[1]];
 if((m=/^endpoint floor (.+)$/.exec(x)))return["endpoint-lower",m[1]];
 if((m=/^weighted ([QRS]) ([QRS]); costs (.*); M ([^;]+); axis ([0-3])$/.exec(x)))return["weighted-barycentric",m[1],m[2],mdList(m[3]),m[4],mdNumber(m[5])];
 if(x.startsWith("upper point x; fixed ceiling "))return["upper-point-x",x.slice(29)];
 if(x.startsWith("upper point y; fixed ceiling "))return["upper-point-y",x.slice(29)];
 if(x==="central lower x")return["central-lower-x"];
 if(x==="central lower y")return["central-lower-y"];
 if((m=/^anchor cap ([A-Z]{3}) in ([A-Z]{3}); index ([0-9]+); occupants (.*)$/.exec(x)))return["anchor-cap",m[1],m[2],mdNumber(m[3]),mdList(m[4])];
 if(x.startsWith("central budget "))return["central-budget",x.slice(15)];
 if(x.startsWith("central sum "))return["central-sum",x.slice(12)];
 if((m=/^central floor axis ([01]); value (.+)$/.exec(x)))return["central-floor",mdNumber(m[1]),m[2]];
 if(x.startsWith("top hull "))return["top-hull",x.slice(9)];
 if(x.startsWith("earlier "))return["earlier-area",mdEarlier(x.slice(8))];throw Error("unknown printed physical premise");
}
function mdPoly(x){
 if(x==="0/1")return[];return x.split(" + ").map(term=>{const a=term.split(" * "),c=a.shift();Q(c);const m=a.map(v=>{const i=VARS.indexOf(v);need(i>=0,"unknown printed variable");return i;});return[m,c];});
}
function mdLines(x){return x.split("; ").map(line=>{const m=/^\(([^,]+), ([^)]+)\)$/.exec(line);need(m,"malformed printed endpoint line");Q(m[1]);Q(m[2]);return[m[1],m[2]];});}
function mdSource(x){
 if(x.startsWith('octagon ')){const a=JSON.parse(x.slice(8));need(a[0]==='octagon-ear-cap','unknown octagon source');return a;}
 let m;if((m=/^anchor cap ([A-Z]{3}); expression (.+)$/.exec(x)))return["anchor",m[1],JSON.parse(m[2])];
 if(x.startsWith("top container ceiling "))return["top-container",x.slice(22)];
 if(x.startsWith("top affine "))return["top-affine",x.slice(11)];
 if(x.startsWith("top apex "))return["top-apex",x.slice(9)];
 if(x.startsWith("occupants "))return["occupants",mdList(x.slice(10))];
 if(x.startsWith("vertex maximum "))return["vertices",x.slice(15)];
 if(x==="unit square")return["square"];
 if(x.startsWith("earlier "))return["earlier-area",mdEarlier(x.slice(8))];throw Error("unknown printed area source");
}
function mdFractionPair(x){Q(x);const a=x.split("/");return[a[0],a[1]||"1"];}
function mdRelation(kind,eqn,w){
 if(kind==="four"){need(eqn.endsWith(" = 0")&&w.startsWith("vertices "),"printed four-point identity");const a=eqn.slice(0,-4).split(" + ").map(x=>{const q=x.split(" * ");need(q.length===2&&(q[0]==="1"||q[0]==="-1"),"printed signed four term");return{triangle:q[1],co:Number(q[0])};});return{kind,vertices:w.slice(9),terms:a};}
 if(kind==="fan"){const p=eqn.split(" = ");need(p.length===2&&w.startsWith("point "),"printed fan shape");return{kind,outer:p[0],parts:p[1].split(" + "),point:w.slice(6)};}
 if(kind==="plu"){const p=eqn.split(" = ");need(p.length===2&&w.startsWith("circuit "),"printed Plucker shape");return{kind,witness:w.slice(8),iso:p[0].split(" * "),rhs:p[1].split(" + ").map(x=>x.split(" * "))};}
 if(kind==="quad"){const p=eqn.split(" >= "),m=/^quadrilateral ([A-Z]{4}); occupants (.*)$/.exec(w);need(p.length===2&&m,"printed quadrilateral shape");return{kind,parts:p[0].split(" + "),floor:mdFractionPair(p[1]),hull:m[1],occupants:mdList(m[2])};}
 if(kind==="support"){
  const m=/^([A-Z]{3}) \* ([A-Z]{3}) >= ([^ ]+) \* \(([A-Z]{3}) - ([A-Z]{3})\)$/.exec(eqn);need(m&&m[1]===m[4],"printed support shape");let source;
  if(w.startsWith("pentagon ears ")){const a=JSON.parse(w.slice(14));need(Array.isArray(a)&&a.length===3,"bad pentagon ear witness");source=["pentagon-ears",...a];}
  else if(w.startsWith("pentagon "))source=["pentagon",w.slice(9)];
  else{const t=/^quadrilateral ([A-Z]{4}); occupants (.*); rate ([^ ]+)$/.exec(w);need(t,"printed support witness");source=["quad",t[1],mdList(t[2]),t[3]];}
  return{kind,X:m[1],Y:m[2],Z:m[5],constant:mdFractionPair(m[3]),source};
 }
 if(kind==="bary"){
  const m=/^outer ([A-Z]{3}); fans (.*); target (none|[A-Z]{3}); sign (-?1|0); vertices (.*)$/.exec(eqn),q=/^container ([A-Z]{3}); inner ([A-Z]); line ([A-Z]{2})$/.exec(w);need(m&&q,"printed barycentric shape");
  return{kind,outer:m[1],fans:mdList(m[2]),target:m[3]==="none"?null:m[3],targetSign:Number(m[4]),vertices:m[5].split("; ").map(v=>{const z=/^(none|[A-Z]{3}) (-?1|0)$/.exec(v);need(z,"bad printed barycentric vertex");return{name:z[1]==="none"?null:z[1],sign:Number(z[2])};}),witness:{container:q[1],inner:q[2],line:q[3]}};
 }
 throw Error("unknown printed relation");
}
function printedFiles(indexText){
 return markdownRows(mdSection(indexText,"Table files",2),["Kind","File"]).map(([kind,file])=>{need(["contexts","stages"].includes(kind)&&/^[a-z0-9_]+\.md$/.test(file),"invalid printed companion path");return{kind,file};});
}
function parsePrinted(indexText,files){
 const meta=mdEntries(mdSection(indexText,"Hypotheses and format",2)),info=printedFiles(indexText);need(info.filter(x=>x.kind==="contexts").length===1,"context file count");
 const p={format:meta.Format,status:meta.Status,hypotheses:{s:meta.Threshold,locations:meta.Locations,word:meta["Top word"],conclusion:meta["Proof conclusion"],normalized:meta["Normalized e <= f"]==="yes",lowerCentral:meta["Lower-central residual"]==="yes",additionalSigns:mdList(meta["Additional actual signs"]||"none"),variables:mdList(meta.Variables),labels:meta["Actual labels"]},contexts:[],signTree:[],metrics:{},stages:[],terminals:[],totals:{}};
 const contextText=files[info.find(x=>x.kind==="contexts").file];need(typeof contextText==="string","missing printed contexts");
 for(const b of mdBlocks(contextText,"Context")){
  need(b.id===p.contexts.length,"context order");const m=mdEntries(b.text.split("\n### ")[0]),c={locations:m.Locations,word:m["Top word"],given:mdList(m["Given actual signs"]),trace:[],known:{}};
  for(const row of markdownRows(mdSection(b.text,"Geometric deductions"),["Step","Triple","Sign","Rule","Witness"])){
   const[i,t,s,rule,w]=row;need(mdNumber(i)===c.trace.length&&["+", "-"].includes(s),"printed geometry step");let why;
   if(rule==="fixed-top-cross"||rule==="branch"){need(w==="none","unexpected fixed witness");why=[rule];}
   else if(rule==="plu")why=[rule,w];
   else if(rule==="empty"){const z=/^hull ([A-Z]+); point ([A-Z])$/.exec(w);need(z,"printed empty witness");why=[rule,z[1],z[2]];}
   else if(rule==="via"){const z=/^hull ([A-Z]+); point ([A-Z]); line ([A-Z]{2})$/.exec(w);need(z,"printed via witness");why=[rule,z[1],z[2],z[3]];}
   else if(rule==="octagon-ear"){need(w.startsWith("octagon "),"missing octagon witness");const a=JSON.parse(w.slice(8));need(Array.isArray(a)&&a.length===5,"octagon witness shape");why=[rule,...a];}
   else if(rule==="mesh"){const z=/^hull ([A-Z]+); points (.*)$/.exec(w);need(z,"printed mesh witness");why=[rule,z[1],mdList(z[2])];}
   else throw Error("unknown printed geometric rule");
   c.trace.push({word:t,sign:s==="+"?1:-1,why});
  }
  for(const[t,s]of markdownRows(mdSection(b.text,"Final actual signs"),["Triple","Sign"])){need(!c.known[t]&&["+", "-"].includes(s),"printed final sign");c.known[t]=s==="+"?1:-1;}
  p.contexts.push(c);
 }
 for(const row of markdownRows(mdSection(indexText,"Actual-sign case tree",2),["Node","Depth","Given premises","Stages","Split","Children","Terminal","Metric"])){
  const[id,depth,given,stages,split,children,terminal,metric]=row,n={id,depth:mdNumber(depth),given:mdList(given),stages:mdList(stages).map(mdNumber),forces:[]};
  if(split!=="none"){n.split=split;n.children=mdList(children);}else need(children==="none","children without split");if(terminal!=="none")n.terminal=mdNumber(terminal);if(metric!=="none")n.metric=metric;p.signTree.push(n);
 }
 const nodeMap=new Map(p.signTree.map(n=>[n.id,n]));
 for(const row of markdownRows(mdSection(indexText,"Capacity-forced signs",2),["Node","Stage","Forced sign","Outer triangle","Occupants","Excluded point","Upper reference","Upper bound","Cost with extra point"])){
  const[n,stage,token,outer,occupants,point,upperRef,upper,nextCost]=row;need(nodeMap.has(n),"unknown printed forced node");nodeMap.get(n).forces.push({token,outer,occupants:mdList(occupants),point,upper,nextCost,stage:mdNumber(stage),upperRef});
 }
 const metricMap=new Map(),metricVisited=new Set();
 for(const row of markdownRows(mdSection(indexText,"Coordinate continuations",2),["Metric scope","Address","Packet","Stages","Split coordinate","Cut","Has continuation","Forced-source forest","Forced-source node","Forced-source stage","Forced-source sign"])){
  const[scope,address,packet,stages,variable,value,continuation,forest,node,stage,token]=row,key=scope+"|"+address;need(!metricMap.has(key),"duplicate printed metric row");metricMap.set(key,{scope,address,packet,stages:mdList(stages).map(mdNumber),variable,value,continuation,forest,node,stage,token});
 }
 function metric(scope,address){
  const key=scope+"|"+address,r=metricMap.get(key);need(r&&!metricVisited.has(key),"missing/repeated printed coordinate row");metricVisited.add(key);const out={packet:r.packet,stages:r.stages};
  if(r.forest!=="none")out.forcedSource={forest:r.forest,id:r.node,stage:mdNumber(r.stage),token:r.token};
  if(r.variable!=="none"){need(r.continuation==="no","coordinate split and continuation");out.split={variable:r.variable,value:r.value,low:metric(scope,address+"L"),high:metric(scope,address+"H")};}
  else if(r.continuation==="yes")out.continuation=metric(scope,address+"C");else need(r.continuation==="no","unknown continuation marker");
  return out;
 }
 for(const r of metricMap.values())if(r.address==="root")p.metrics[r.scope]=metric(r.scope,"root");
 need(metricVisited.size===metricMap.size,"unused printed metric row");
 const terminals=new Map();
 for(const file of info.filter(x=>x.kind==="stages")){
  need(typeof files[file.file]==="string","missing printed stage file "+file.file);
  for(const b of mdBlocks(files[file.file],"Stage")){
   need(b.id===p.stages.length,"printed stage order");const m=mdEntries(b.text.split("\n### ")[0]),s={id:b.id,context:mdNumber(m.Context),scope:m.Scope,packet:m.Packet,index:mdNumber(m.Index)};
   if(m["Box present"]==="yes"){
    const boxRows=markdownRows(mdSection(b.text,"Coordinate box"),["Coordinate","Initial lower","Initial upper","Final lower","Final upper"]);need(boxRows.length===VARS.length&&boxRows.every((r,i)=>r[0]===VARS[i]),"printed coordinate order");
    s.box={coarseVersion:mdNumber(m["Coarse version"]),initial:{low:boxRows.map(r=>r[1]),high:boxRows.map(r=>r[2])},final:{low:boxRows.map(r=>r[3]),high:boxRows.map(r=>r[4])},parent:m["Parent box"]==="none"?null:mdNumber(m["Parent box"]),cut:null,steps:[],factors:{}};
    if(m["Coordinate cut"]!=="none"){const c=m["Coordinate cut"].split(" ");need(c.length===3,"printed cut shape");s.box.cut={variable:c[0],value:c[2],side:c[1]};}
    for(const[i,name,premise,poly]of markdownRows(mdSection(b.text,"Physical factors"),["Factor","Name","Nonnegativity premise","Polynomial"])){mdNumber(i);need(!s.box.factors[i],"duplicate printed factor");s.box.factors[i]={name,why:mdPremise(premise),terms:mdPoly(poly)};}
    for(const row of markdownRows(mdSection(b.text,"Exact coordinate updates"),["Step","Factor","Target","Old lower","Old upper","Exact lower","Exact upper","Rounded lower","Rounded upper","All distinct endpoint lines (slope, intercept)"])){
     const[i,factor,target,l,h,a,b,L,H,lines]=row;need(mdNumber(i)===s.box.steps.length,"printed interval order");s.box.steps.push({factor:mdNumber(factor),target,old:[l,h],lines:mdLines(lines),raw:[a,b],new:[L,H]});
    }
   }else need(m["Box present"]==="no","unknown box marker");
   s.areaInitial=markdownRows(mdSection(b.text,"Initial area bounds"),["Bound","Triangle","Direction","Value","Justification"]).map(([id,triangle,direction,value,source])=>({id,triangle,direction,value,source:mdSource(source)}));
   s.relations={};for(const[i,kind,eqn,w]of markdownRows(mdSection(b.text,"Scalar relations"),["Relation","Kind","Exact relation","Geometric witness"])){mdNumber(i);need(!s.relations[i],"duplicate printed relation");s.relations[i]=mdRelation(kind,eqn,w);}
   s.areaUpdates=markdownRows(mdSection(b.text,"Exact area updates"),["Bound","Triangle","Direction","Rounded value","Exact value","Relation","Earlier bound references"]).map(([id,triangle,direction,value,raw,relation,refs])=>{need(s.relations[relation],"printed update lacks relation");return{id,triangle,direction,value,raw,why:[s.relations[relation].kind,mdNumber(relation)],refs:mdList(refs)};});
   if(mdOptional(b.text,"Interval contradiction")){
    const rows=markdownRows(mdSection(b.text,"Interval contradiction"),["Factor","Target","Old lower","Old upper","All distinct endpoint lines (slope, intercept)"]);need(rows.length===1,"interval terminal count");const[factor,target,l,h,lines]=rows[0];terminals.set(s.id,{stage:s.id,kind:"interval",reason:{factor:mdNumber(factor),target,old:[l,h],lines:mdLines(lines)}});
   }
   if(mdOptional(b.text,"Zero barycentric contradiction")){
    need(!terminals.has(s.id),"duplicate zero terminal");const rows=markdownRows(mdSection(b.text,"Zero barycentric contradiction"),["Relation","Lower references","Upper references","Exact lower","Exact upper"]);need(rows.length===1,"zero terminal count");const[relation,lowerRefs,upperRefs,lower,upper]=rows[0];terminals.set(s.id,{stage:s.id,kind:"baryZero",relation:mdNumber(relation),refs:[mdList(lowerRefs),mdList(upperRefs)],lower,upper});
   }
   if(mdOptional(b.text,"Lower-central conclusion")){
    need(!terminals.has(s.id),"duplicate conclusion terminal");const rows=markdownRows(mdSection(b.text,"Lower-central conclusion"),["Proved actual signs"]);need(rows.length===1,"conclusion row count");terminals.set(s.id,{stage:s.id,kind:"lower-central",premises:mdList(rows[0][0])});
   }
   if(mdOptional(b.text,"Area contradiction")){
    need(!terminals.has(s.id),"duplicate terminal types");const rows=markdownRows(mdSection(b.text,"Area contradiction"),["Triangle","Lower reference","Upper reference","Lower value","Upper value"]);need(rows.length===1,"area terminal count");const[triangle,l,u,lower,upper]=rows[0];terminals.set(s.id,{stage:s.id,kind:"area",triangle,lower,upper,ids:[l,u]});
   }
   if(mdOptional(b.text,"Clustered-triple contradiction")){need(!terminals.has(s.id),"duplicate cluster terminal");const rows=markdownRows(mdSection(b.text,"Clustered-triple contradiction"),["Outer triangle","Pivot","Fan triangle","Other interior points"]);need(rows.length===1,"cluster terminal count");const[h,p0,fan,others]=rows[0];terminals.set(s.id,{stage:s.id,kind:"geometry",reason:["cluster",h,p0,fan,mdList(others)]});}
   if(mdOptional(b.text,"Distributed-mesh contradiction")){need(!terminals.has(s.id),"duplicate nomesh terminal");const rows=markdownRows(mdSection(b.text,"Distributed-mesh contradiction"),["Outer triangle","Three interior points"]);need(rows.length===1,"nomesh terminal count");terminals.set(s.id,{stage:s.id,kind:"geometry",reason:["nomesh",rows[0][0],mdList(rows[0][1])]});}
   if(mdOptional(b.text,"Pluecker sign contradiction")){need(!terminals.has(s.id),"duplicate Pluecker terminal");const rows=markdownRows(mdSection(b.text,"Pluecker sign contradiction"),["Pivot and four endpoints"]);need(rows.length===1,"Pluecker terminal count");terminals.set(s.id,{stage:s.id,kind:"geometry",reason:["plubad",rows[0][0]]});}
   if(mdOptional(b.text,"Octagon-ear contradiction")){need(!terminals.has(s.id),"duplicate octagon terminal");const rows=markdownRows(mdSection(b.text,"Octagon-ear contradiction"),["Octagon","Two occupied ear-point pairs"]);need(rows.length===1,"octagon terminal row count");terminals.set(s.id,{stage:s.id,kind:"geometry",reason:["octagon-ears",rows[0][0],JSON.parse(rows[0][1])]});}
   if(mdOptional(b.text,"Conflicting actual-sign contradiction")){need(!terminals.has(s.id),"duplicate sign terminal");const rows=markdownRows(mdSection(b.text,"Conflicting actual-sign contradiction"),["Triple","Known sign","Inherited opposite premise"]);need(rows.length===1,"sign terminal count");const[w,known,premise]=rows[0];need(premise.slice(0,3)===w&&["+","-"].includes(known)&&known!==premise[3],"malformed sign contradiction");terminals.set(s.id,{stage:s.id,kind:"geometry",reason:["sign",w,tokenSign(premise)]});}
   s.affineBounds=[];if(mdOptional(b.text,"Affine certificates")){const a=mdAffines(b.text,s.id);s.affineBounds=a.outputs;if(a.terminal){need(!terminals.has(s.id),"duplicate affine terminal");terminals.set(s.id,a.terminal);}}
   if(mdOptional(b.text,"Coordinate certificate sources")){need(!terminals.has(s.id),"duplicate coordinate terminal");terminals.set(s.id,mdCoordinate(b.text,s.id));}
   p.stages.push(s);
  }
 }
 p.terminals=mdList(meta["Terminal stage order"]).map(x=>{const id=mdNumber(x),t=terminals.get(id);need(t,"listed terminal absent");terminals.delete(id);return t;});need(terminals.size===0,"unlisted terminal");
 for(const[k,v]of markdownRows(mdSection(indexText,"Exact totals",2),["Object","Count"])){need(!(k in p.totals),"duplicate total");p.totals[k]=mdNumber(v);}
 return p;
}

return {verify,parsePrinted,printedFiles};
}
if(typeof module!=="undefined"&&module.exports){
 module.exports={createN6RemainingBITTReader};
 if(typeof require!=="undefined"&&require.main===module){
  const fs=require("fs"),path=require("path"),word=process.argv[2]||"+",conclusion=process.argv[3]||"contradiction";
  const signs=process.argv[4]?process.argv[4].split(","):[],api=createN6RemainingBITTReader(word,conclusion,signs);
  const suffix=conclusion==="lower-central"?"_CENTRAL_REDUCTION":signs.length?"_CHAMBER":"";
  const root=process.argv[5]||path.join(__dirname,"N6_BTTT_REMAINING_BITT_"+(word==="+"?"CONVEX":"TRIANGULAR")+suffix+"_TABLES"),index=fs.readFileSync(path.join(root,"INDEX.md"),"utf8"),files={};for(const{file}of api.printedFiles(index))files[file]=fs.readFileSync(path.join(root,file),"utf8");process.stdout.write(JSON.stringify(api.verify(api.parsePrinted(index,files)),null,2)+"\n");
 }
}
