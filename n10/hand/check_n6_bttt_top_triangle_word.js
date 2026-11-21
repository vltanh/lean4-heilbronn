"use strict";

// Exact reader for the literal Markdown proof in N6_BTTT_TOP_TRIANGLE_WORD.md.
// Uses only standard JavaScript/Node.js; it imports no discovery implementation.
// Every coordinate, polynomial coefficient, area bound, and rounding step uses BigInt rationals.

function createN6TopReader(){

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
const tokenSign=t=>{need(typeof t==="string"&&t.length===4&&"+-".includes(t[3]),"bad sign token");canonical(t.slice(0,3));return t[3]==="+"?1:-1;};
function tokenKnown(kn,t){return sign(kn,t.slice(0,3))===tokenSign(t);}
function initialSigns(){const kn={};for(const w of combos(ANCHORS,3))impose(kn,w.join(""),1);
 for(const p of "PQRS"){const top=p!=="P";for(const e of edgeWords(ANCHORS))impose(kn,e+p,top&&e==="EF"?-1:1);impose(kn,"HC"+p,top?1:-1);if(top){impose(kn,"HE"+p,1);impose(kn,"CF"+p,-1);impose(kn,"HP"+p,1);impose(kn,"CP"+p,-1);}}
 for(const w of ["EQR","EQS","ERS"])impose(kn,w,1);
 for(const[w,s]of [["FQR",-1],["FQS",-1],["FRS",1],["QRS",-1]])impose(kn,w,s);
 return kn;
}
function circuit(w){const[a,b,c,d,e]=w;need(w.length===5&&new Set(w).size===5,"bad circuit");return [[a+b+c,a+d+e,1],[a+b+d,a+c+e,-1],[a+b+e,a+c+d,1]];}
const MESH="ABZ BCX CAY AZY BXZ CYX ZXY AZX BXY CYZ AXY BYZ CZX".split(" ");
function verifyContext(ctx,allowed){
 need(ctx.locations==="BTTT"&&ctx.word==="--+-","context hypothesis");
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
   const h=why[1],p=why[2];need(["ABC","ABE","ACE","BCE","ABF","ABH","AFH","BFH"].includes(h)&&!h.includes(p),"bad empty hull");
   need(sign(kn,h)===1,"empty hull orientation");const tests=edgeWords(h).map(a=>[a+p,sign(kn,a+p)]);
   need(tests.filter(x=>x[1]===1).length===2,"empty hull requires two sides");
   const missing=tests.find(x=>x[1]===0);need(missing,"no missing empty side");const[k,r]=canonical(missing[0]),[kk,t]=canonical(w);
   need(k===kk&&r*(-1)===t*e,"wrong empty conclusion");
  }else if(type==="via"){
   const[h,p,line]=why.slice(1);need(w.length===3&&new Set(line).size===2&&line.length===2,"bad via line");
   need((h===ANCHORS&&p==="P")||(h==="HABC"&&p==="P")||(h.length===3&&inside(kn,h,p)),"unproved containment");
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


function coarseBox(kn){
 const top=mul(K,S),ear=sign(kn,"ACP")<0||sign(kn,"HBP")<0,rho=mul(ear?K:G,S);
 const delta=div(S,sub(ONE,ALPHA)),cap=sub(ONE,div(top,sub(ONE,ALPHA)));
 const lo=[ALPHA,ALPHA,rho,ALPHA,ALPHA,rho,delta,delta,...Array(6).fill(add(ALPHA,S))];
 const hi=[min(cap,Q("21/125")),cap,ONE,min(cap,Q("21/125")),cap,ONE,sub(ONE,S),sub(ONE,S),...Array(6).fill(ONE)];
 lo[2]=max(lo[2],add(ALPHA,div(S,hi[0])));lo[5]=max(lo[5],add(ALPHA,div(S,hi[1])));
 if(sign(kn,"ACP")===1&&sign(kn,"HBP")===1)lo[6]=lo[7]=div(mul(S,add(ONE,ALPHA)),sub(ONE,ALPHA));
 hi[6]=sub(sub(ONE,S),lo[7]);hi[7]=sub(sub(ONE,S),lo[6]);
 for(const pt of "QRS"){const others=[..."QRS"].filter(p=>p!==pt&&inside(kn,"E"+pt+"F",p));const c=mul(cost(others.length),S),i=6+2*"PQRS".indexOf(pt);
  lo[i]=lo[i+1]=add(ALPHA,div(c,sub(ONE,ALPHA)));
  for(const p of others){const j=6+2*"PQRS".indexOf(p);hi[j]=min(hi[j],sub(ONE,delta));hi[j+1]=min(hi[j+1],sub(ONE,delta));}
 }
 return {lo,hi,rho};
}
function signedAreaPoly(kn,t){const e=sign(kn,t);need(e!==0,"unsigned area "+t);return timesConstant(determinant(t),Q(e));}
function physicalFactor(f,kn,stage,state){
 const why=f.why,type=why[0];let expected;
 if(type==="actual-area"){
  const t=why[1],occ=why[2];need(equalSet(occ,occupied(kn,t)),"actual occupants differ");
  expected=minus(signedAreaPoly(kn,t),qpoly(mul(cost(occ.length),S)));
 }else if(type==="contact-order"){
  const indices={ha:[5,0],ea:[3,0],he:[5,3],fb:[4,1],cf:[2,4],sym:[4,3]}[why[1]];need(indices,"bad contact order");expected=minus(V[indices[0]],V[indices[1]]);
 }else if(type==="endpoint-lower"){
  const rho=coarseBox(kn).rho;need(eq(Q(why[1]),rho),"wrong endpoint lower floor");expected=minus(times(V[5],V[2]),qpoly(rho));
 }else if(type==="weighted-barycentric"){
  const[outer,inner,weights,M0,axis]=why.slice(1);need("QRS".includes(outer)&&"QRS".includes(inner)&&outer!==inner&&inside(kn,"EF"+outer,inner),"unproved top barycentric fan");
  const words=["F"+outer+inner,"E"+outer+inner,"EF"+inner],cs=words.map(t=>cost(occupied(kn,t).length));need(weights.length===3&&weights.every((w,i)=>eq(Q(w),cs[i])),"wrong barycentric floor");
  const M=div(mul(sub(ONE,ALPHA),sub(ONE,ALPHA)),S);need(eq(Q(M0),M)&&le(sum(cs),M),"bad barycentric upper bound");
  const[ce,cf,cu]=cs,oi=6+2*"PQRS".indexOf(outer),ii=6+2*"PQRS".indexOf(inner);
  const rows=[
   plus(timesConstant(V[ii],M),qpoly(neg(ce)),timesConstant(V[4],neg(sub(sub(M,ce),cu))),timesConstant(V[oi],neg(cu))),
   plus(qpoly(sub(sub(M,cf),cu)),timesConstant(V[4],cf),timesConstant(V[oi],cu),timesConstant(V[ii],neg(M))),
   plus(timesConstant(V[ii+1],M),qpoly(neg(cf)),timesConstant(V[3],neg(sub(sub(M,cf),cu))),timesConstant(V[oi+1],neg(cu))),
   plus(qpoly(sub(sub(M,ce),cu)),timesConstant(V[3],ce),timesConstant(V[oi+1],cu),timesConstant(V[ii+1],neg(M)))
  ];need(Number.isInteger(axis)&&axis>=0&&axis<4,"bad weighted axis");expected=rows[axis];
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
 const b=stage.box;need(b,"required numeric box missing");let {lo,hi}=coarseBox(kn);
 if(b.parent!==null){need(Number.isInteger(b.parent)&&b.parent<stage.id,"future parent box");const previous=state.boxes.get(b.parent);need(previous,"unproved parent box");state.checkScope(b.parent,stage.id);
  lo=lo.map((v,i)=>max(v,previous.lo[i]));hi=hi.map((v,i)=>min(v,previous.hi[i]));
 }
 if(b.cut){const i=VARS.indexOf(b.cut.variable),v=Q(b.cut.value);need(i>=0&&["low","high"].includes(b.cut.side),"bad coordinate cut");need(state.plans[stage.id].cuts.some(c=>JSON.stringify(c)===JSON.stringify(b.cut)),"unplanned coordinate cut");if(b.cut.side==="low")hi[i]=min(hi[i],v);else lo[i]=max(lo[i],v);}
 need(b.initial.low.length===VARS.length&&b.initial.high.length===VARS.length,"wrong box dimension");
 need(lo.every((v,i)=>eq(v,Q(b.initial.low[i])))&&hi.every((v,i)=>eq(v,Q(b.initial.high[i]))),"unjustified initial box at "+stage.id);
 const polys=new Map();for(const[fi,f]of Object.entries(b.factors))polys.set(fi,physicalFactor(f,kn,stage,state));
 for(const step of b.steps)verifyInterval(step,polys,lo,hi,false);
 need(lo.every((v,i)=>eq(v,Q(b.final.low[i])))&&hi.every((v,i)=>eq(v,Q(b.final.high[i]))),"final box differs");
 state.boxes.set(stage.id,{lo,hi});
 if(terminal?.kind==="interval")verifyInterval(terminal.reason,polys,lo,hi,true);
 return {steps:b.steps.length,factors:polys.size};
}


function quadFloor(n){need(n>=1&&n<=6,"quadrilateral occupancy range");return n===1?mul(Q("24/5"),S):n===2?mul(Q(8),S):n===3?Q("93/91"):n===4?mul(add(J,Q(3)),S):n===5?mul(add(J,K),S):mul(Q(2),mul(J,S));}
function relationGeometry(r,kn){
 const key=w=>canonical(w)[0];
 if(r.kind==="fan"){
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
  }else if(src[0]==="quad"){
   need(h.length===4,"wrong quad support length");const[a,b,c,d]=h,occ=src[2];need(occ.length>=1&&occ.length<=2&&new Set(occ).size===occ.length&&occ.every(p=>inside(kn,h,p)),"unproved support occupants");
   const n1=occ.filter(p=>inside(kn,a+c+d,p)).length,n2=occ.filter(p=>inside(kn,b+c+d,p)).length,shape=[n1,n2].sort().join("");
   const table=occ.length===1?{"00":"29/5","01":"149/20","11":"12"}:{"00":"1142/125","01":"1142/125","02":"139/10","11":"12","12":"199/10","22":"149/5"};
   need(table[shape],"unknown support allocation");rate=Q(table[shape]);
   if(occ.length===2&&occ.every(p=>inside(kn,a+b+c,p)&&inside(kn,a+b+d,p)))rate=max(rate,Q("299/31"));
   need(eq(Q(src[3]),rate),"support rate/witness mismatch");expected=[key(a+b+d),key(a+b+c),key(a+c+d)];
  }else throw Error("unknown support witness");
  need(r.X===expected[0]&&r.Y===expected[1]&&r.Z===expected[2]&&eq(Q(r.constant),mul(rate,S)),"wrong support inequality");
 }else throw Error("unlisted area relation "+r.kind);
}
function scalarInitial(row,stage,kn,state){
 need(["lo","hi"].includes(row.direction),"bad bound direction");const v=Q(row.value),source=row.source,kind=source[0];need(sign(kn,row.triangle),"unsigned initial area");
 if(kind==="occupants"){
  need(row.direction==="lo"&&equalSet(source[1],occupied(kn,row.triangle)),"wrong initial occupants");
  need(eq(v,mul(cost(source[1].length),S)),"wrong initial floor");
 }else if(kind==="vertices"){
  need(row.direction==="hi","vertex source direction");const box=state.boxes.get(stage.id);need(box,"unproved endpoint cap box");
  const cap=min(ONE,vertexMaximum(signedAreaPoly(kn,row.triangle),box.lo,box.hi));
  need(eq(v,cap)&&eq(v,Q(source[1])),"incorrect vertex area cap");
 }else if(kind==="square"){
  need(row.direction==="hi"&&eq(v,ONE),"wrong unit-square area ceiling");
 }else if(kind==="earlier-area"){
  const b=state.crossBound(source[1].ref,stage);need(row.triangle===b.triangle&&row.direction===b.direction&&eq(v,b.value)&&source[1].triangle===b.triangle&&source[1].direction===b.direction&&eq(Q(source[1].value),v),"incorrect inherited scalar bound");
 }else throw Error("unlisted scalar source "+kind);
 return {triangle:row.triangle,direction:row.direction,value:v,stage:stage.id};
}
function scalarUpdate(row,stage,relation,state){
 const refs=row.refs.map(id=>{const b=state.bounds.get(id);need(b,"unproved scalar reference "+id);need(Number(id.split(":")[0])===stage.id&&Number(id.split(":")[1])<Number(row.id.split(":")[1]),"future/nonlocal scalar reference");return b;});
 const r=relation,dir=row.direction,t=row.triangle;need(["lo","hi"].includes(dir),"bad update direction");
 let expected=[],raw;
 const refsMatch=()=>{need(refs.length===expected.length,"wrong update arity");expected.forEach(([tri,d],i)=>need(refs[i].triangle===tri&&refs[i].direction===d,"wrong referenced bound in "+row.id));};
 const val=i=>refs[i].value,positive=i=>{need(lt(Z,val(i)),"nonpositive denominator");return val(i);};
 if(r.kind==="fan"){
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
 return {initial:stage.areaInitial.length,updates:stage.areaUpdates.length,relations:relations.size};
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
 let m;if((m=/^actual ([A-Z]{3}); occupants (.*)$/.exec(x)))return["actual-area",m[1],mdList(m[2])];
 if((m=/^contact order (\w+)$/.exec(x)))return["contact-order",m[1]];
 if((m=/^endpoint floor (.+)$/.exec(x)))return["endpoint-lower",m[1]];
 if((m=/^weighted ([QRS]) ([QRS]); costs (.*); M ([^;]+); axis ([0-3])$/.exec(x)))return["weighted-barycentric",m[1],m[2],mdList(m[3]),m[4],mdNumber(m[5])];
 if(x.startsWith("earlier "))return["earlier-area",mdEarlier(x.slice(8))];throw Error("unknown printed physical premise");
}
function mdPoly(x){
 if(x==="0/1")return[];return x.split(" + ").map(term=>{const a=term.split(" * "),c=a.shift();Q(c);const m=a.map(v=>{const i=VARS.indexOf(v);need(i>=0,"unknown printed variable");return i;});return[m,c];});
}
function mdLines(x){return x.split("; ").map(line=>{const m=/^\(([^,]+), ([^)]+)\)$/.exec(line);need(m,"malformed printed endpoint line");Q(m[1]);Q(m[2]);return[m[1],m[2]];});}
function mdSource(x){
 if(x.startsWith("occupants "))return["occupants",mdList(x.slice(10))];
 if(x.startsWith("vertex maximum "))return["vertices",x.slice(15)];
 if(x==="unit square")return["square"];
 if(x.startsWith("earlier "))return["earlier-area",mdEarlier(x.slice(8))];throw Error("unknown printed area source");
}
function mdFractionPair(x){Q(x);const a=x.split("/");return[a[0],a[1]||"1"];}
function mdRelation(kind,eqn,w){
 if(kind==="fan"){const p=eqn.split(" = ");need(p.length===2&&w.startsWith("point "),"printed fan shape");return{kind,outer:p[0],parts:p[1].split(" + "),point:w.slice(6)};}
 if(kind==="plu"){const p=eqn.split(" = ");need(p.length===2&&w.startsWith("circuit "),"printed Plucker shape");return{kind,witness:w.slice(8),iso:p[0].split(" * "),rhs:p[1].split(" + ").map(x=>x.split(" * "))};}
 if(kind==="quad"){const p=eqn.split(" >= "),m=/^quadrilateral ([A-Z]{4}); occupants (.*)$/.exec(w);need(p.length===2&&m,"printed quadrilateral shape");return{kind,parts:p[0].split(" + "),floor:mdFractionPair(p[1]),hull:m[1],occupants:mdList(m[2])};}
 if(kind==="support"){
  const m=/^([A-Z]{3}) \* ([A-Z]{3}) >= ([^ ]+) \* \(([A-Z]{3}) - ([A-Z]{3})\)$/.exec(eqn);need(m&&m[1]===m[4],"printed support shape");let source;
  if(w.startsWith("pentagon "))source=["pentagon",w.slice(9)];
  else{const t=/^quadrilateral ([A-Z]{4}); occupants (.*); rate ([^ ]+)$/.exec(w);need(t,"printed support witness");source=["quad",t[1],mdList(t[2]),t[3]];}
  return{kind,X:m[1],Y:m[2],Z:m[5],constant:mdFractionPair(m[3]),source};
 }
 throw Error("unknown printed relation");
}
function printedFiles(indexText){
 return markdownRows(mdSection(indexText,"Table files",2),["Kind","File"]).map(([kind,file])=>{need(["contexts","stages"].includes(kind)&&/^[a-z0-9_]+\.md$/.test(file),"invalid printed companion path");return{kind,file};});
}
function parsePrinted(indexText,files){
 const meta=mdEntries(mdSection(indexText,"Hypotheses and format",2)),info=printedFiles(indexText);need(info.filter(x=>x.kind==="contexts").length===1,"context file count");
 const p={format:meta.Format,status:meta.Status,hypotheses:{s:meta.Threshold,locations:meta.Locations,word:meta["Top word"],normalized:meta["Normalized e <= f"]==="yes",variables:mdList(meta.Variables),labels:meta["Actual labels"]},contexts:[],signTree:[],metrics:{},stages:[],terminals:[],totals:{}};
 const contextText=files[info.find(x=>x.kind==="contexts").file];need(typeof contextText==="string","missing printed contexts");
 for(const b of mdBlocks(contextText,"Context")){
  need(b.id===p.contexts.length,"context order");const m=mdEntries(b.text.split("\n### ")[0]),c={locations:m.Locations,word:m["Top word"],given:mdList(m["Given actual signs"]),trace:[],known:{}};
  for(const row of markdownRows(mdSection(b.text,"Geometric deductions"),["Step","Triple","Sign","Rule","Witness"])){
   const[i,t,s,rule,w]=row;need(mdNumber(i)===c.trace.length&&["+", "-"].includes(s),"printed geometry step");let why;
   if(rule==="fixed-top-cross"||rule==="branch"){need(w==="none","unexpected fixed witness");why=[rule];}
   else if(rule==="plu")why=[rule,w];
   else if(rule==="empty"){const z=/^hull ([A-Z]+); point ([A-Z])$/.exec(w);need(z,"printed empty witness");why=[rule,z[1],z[2]];}
   else if(rule==="via"){const z=/^hull ([A-Z]+); point ([A-Z]); line ([A-Z]{2})$/.exec(w);need(z,"printed via witness");why=[rule,z[1],z[2],z[3]];}
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
    s.box={initial:{low:boxRows.map(r=>r[1]),high:boxRows.map(r=>r[2])},final:{low:boxRows.map(r=>r[3]),high:boxRows.map(r=>r[4])},parent:m["Parent box"]==="none"?null:mdNumber(m["Parent box"]),cut:null,steps:[],factors:{}};
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
   if(mdOptional(b.text,"Area contradiction")){
    need(!terminals.has(s.id),"duplicate terminal types");const rows=markdownRows(mdSection(b.text,"Area contradiction"),["Triangle","Lower reference","Upper reference","Lower value","Upper value"]);need(rows.length===1,"area terminal count");const[triangle,l,u,lower,upper]=rows[0];terminals.set(s.id,{stage:s.id,kind:"area",triangle,lower,upper,ids:[l,u]});
   }
   p.stages.push(s);
  }
 }
 p.terminals=mdList(meta["Terminal stage order"]).map(x=>{const id=mdNumber(x),t=terminals.get(id);need(t,"listed terminal absent");terminals.delete(id);return t;});need(terminals.size===0,"unlisted terminal");
 for(const[k,v]of markdownRows(mdSection(indexText,"Exact totals",2),["Object","Count"])){need(!(k in p.totals),"duplicate total");p.totals[k]=mdNumber(v);}
 return p;
}


function buildPlan(packet){
 need(packet.format==="n6-bttt-triangle-split-proof-v1","wrong packet format");
 const h=packet.hypotheses;need(sameQ(h.s,S)&&h.locations==="BTTT"&&h.word==="--+-"&&h.normalized===true&&h.labels===LABELS&&JSON.stringify(h.variables)===JSON.stringify(VARS),"wrong hypotheses");
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
 function visit(id,allowed,depth){
  need(!visited.has(id)&&nodes.has(id),"invalid sign branch");visited.add(id);const n=nodes.get(id);need(n.depth===depth&&equalSet(n.given,[...allowed]),"sign scope mismatch "+id);
  need(n.stages?.length,"empty sign stage list");let current=new Set(allowed);
  for(let i=0;i<n.stages.length;i++){
   const sid=n.stages[i];claim(sid,{scope:id,allowed:new Set(current),cuts:[],parent:null,cut:null,packet:"forest:"+id,index:i});
   const fs=n.forces.filter(f=>f.stage===sid);forceByStage.set(sid,fs);
   for(const f of fs){tokenSign(f.token);need(!current.has(f.token),"repeated forced sign");current.add(f.token);}
  }
  need(n.forces.every(f=>n.stages.includes(f.stage)),"force at absent stage");
  if(n.split){
   canonical(n.split);need(n.split.length===3&&n.children?.length===2,"bad sign split");signSplits++;
   for(let i=0;i<2;i++){const sign=i===0?"-":"+",child=id+"/"+n.split+sign;need(n.children[i]===child,"wrong signed child");const next=new Set(current);next.add(n.split+sign);visit(child,next,depth+1);}
  }else if(n.metric){
   need(n.metric===id&&packet.metrics[id],"missing metric closure");metricsSeen.add(id);metric(packet.metrics[id],id,current,[],null,null);
  }else{
   need(n.terminal===n.stages.at(-1),"nonfinal sign terminal");addTerminal(n.terminal);
  }
 }
 visit("root",new Set(),0);
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
 const start=Date.now(),plan=buildPlan(packet),contextCache=new Map(),stats={contexts:0,geometryDeductions:0,stages:0,intervalSteps:0,physicalFactors:0,initialBounds:0,areaUpdates:0,scalarRelations:0,capacityForces:0,terminals:0,signSplits:plan.signSplits,coordinateSplits:plan.coordinateSplits};
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
  const a=verifyAreas(stage,kn,state);stats.initialBounds+=a.initial;stats.areaUpdates+=a.updates;stats.scalarRelations+=a.relations;
  for(const f of plan.forceByStage.get(stage.id)||[]){verifyCapacity(f,stage,kn,state);stats.capacityForces++;}
  if(terminal){
   need(["interval","area"].includes(terminal.kind),"unlisted geometric terminal");
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
 const expected=packet.totals;
 for(const[k,v]of Object.entries({contexts:stats.contexts,signNodes:packet.signTree.length,signSplits:stats.signSplits,signLeaves:packet.signTree.filter(n=>!n.split).length,coordinateSplits:stats.coordinateSplits,terminals:stats.terminals,stages:stats.stages,boxStages:state.boxes.size,intervalSteps:stats.intervalSteps,physicalFactors:stats.physicalFactors,areaBounds:state.bounds.size,areaUpdates:stats.areaUpdates,scalarRelations:stats.scalarRelations}))need(expected[k]===v,"incorrect total "+k);
 stats.milliseconds=Date.now()-start;return stats;
}
return {verify,parsePrinted,printedFiles};

}


if (typeof module !== "undefined" && module.exports) {
  module.exports = createN6TopReader;
  if (typeof require !== "undefined" && require.main === module) {
    const fs = require("fs"), path = require("path");
    const indexPath = process.argv[2] || path.join(__dirname, "n6_bttt_top_triangle_word_tables", "INDEX.md");
    const index = fs.readFileSync(indexPath, "utf8"), api = createN6TopReader(), files = {};
    for (const entry of api.printedFiles(index)) {
      files[entry.file] = fs.readFileSync(path.join(path.dirname(indexPath), entry.file), "utf8");
    }
    const proof = api.parsePrinted(index, files);
    const result = api.verify(proof);
    process.stdout.write("PASS: " + JSON.stringify(result) + "\n");
  }
}
