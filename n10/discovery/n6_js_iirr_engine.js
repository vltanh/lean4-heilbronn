/* Exact-JS discovery for N6 IIRR; no solver or floating arithmetic.
 * Every terminal retains its actual geometric witnesses and exact area chain.
 * This source alone is not a whole-count proof: coverage is checked separately.
 */
globalThis.IIRR=(()=>{
"use strict";
function gcd(a,b){a=a<0n?-a:a;b=b<0n?-b:b;while(b)[a,b]=[b,a%b];return a}
class Q{
 constructor(n,d=1n){if(n instanceof Q){this.n=n.n;this.d=n.d;return}
  if(typeof n==="string"&&n.includes("/")){[n,d]=n.split("/")}
  n=BigInt(n);d=BigInt(d);if(d<0n){n=-n;d=-d}if(!d)throw Error("zero denominator");
  const g=gcd(n,d);this.n=n/g;this.d=d/g}
 add(y){y=R(y);return new Q(this.n*y.d+y.n*this.d,this.d*y.d)}
 neg(){return new Q(-this.n,this.d)}sub(y){return this.add(R(y).neg())}
 mul(y){y=R(y);return new Q(this.n*y.n,this.d*y.d)}
 div(y){y=R(y);return new Q(this.n*y.d,this.d*y.n)}
 cmp(y){y=R(y);const z=this.n*y.d-y.n*this.d;return z<0n?-1:z>0n?1:0}
 toString(){return this.d===1n?String(this.n):this.n+"/"+this.d}
}
const R=x=>x instanceof Q?x:new Q(x),z=R(0),one=R(1);
const min=(...xs)=>xs.map(R).reduce((a,b)=>a.cmp(b)<0?a:b);
const max=(...xs)=>xs.map(R).reduce((a,b)=>a.cmp(b)>0?a:b);
const s=R("93/1000"),rho=R("347/500"),eps=R("1037/10000"),ceiling=one.sub(s);
const triCost=[s,s.mul(3),rho,R("823/1000")];
const quadCost=n=>n===1?R("449/1000"):n===2?s.mul(8):R("93/91");
const labels="ABCEFHPQRS",anchors="ABCEFH";
const vars="a b c e f h p q u v r w j k".split(" ");
function choose(xs,n){if(!n)return[[]];let out=[];for(let i=0;i<=xs.length-n;i++)for(const rest of choose(xs.slice(i+1),n-1))out.push([xs[i],...rest]);return out}
function perm(xs){if(!xs.length)return[[]];return xs.flatMap((x,i)=>perm(xs.filter((_,j)=>j!==i)).map(a=>[x,...a]))}
function canon(word){const ids=[...word].map(t=>labels.indexOf(t));let sign=1;for(let i=0;i<ids.length;i++)for(let j=i+1;j<ids.length;j++)if(ids[i]>ids[j])sign=-sign;return[[...word].sort((a,b)=>labels.indexOf(a)-labels.indexOf(b)).join(""),sign]}
function get(kn,word){const[k,t]=canon(word);return(kn[k]||0)*t}
function put(kn,word,sign){const[k,t]=canon(word),v=t*sign;if(kn[k]&&kn[k]!==v)throw Error("sign conflict "+word);kn[k]=v}
function inside(kn,hull,p){if(hull.includes(p))return false;const sg=get(kn,hull.slice(0,3));return!!sg&&[...hull].every((a,i)=>get(kn,a+hull[(i+1)%hull.length]+p)===sg)}
function convex(kn,hull){return choose([...hull],3).every(t=>get(kn,t.join(""))===1)}
const C=n=>n?{"":n}:{},V=i=>({[String(i)]:1});
function padd(...ps){const out={};for(const p of ps)for(const[m,c]of Object.entries(p))out[m]=(out[m]||0)+c;for(const m in out)if(!out[m])delete out[m];return out}
const pscale=(p,c)=>Object.fromEntries(Object.entries(p).map(([m,v])=>[m,v*c]).filter(x=>x[1]));
function pmul(p,q){const o={};for(const[m,c]of Object.entries(p))for(const[n,d]of Object.entries(q)){const mon=[...(m?m.split(","):[]),...(n?n.split(","):[])].map(Number).sort((a,b)=>a-b).join(",");o[mon]=(o[mon]||0)+c*d}return Object.fromEntries(Object.entries(o).filter(x=>x[1]))}
const vv=vars.map((_,i)=>V(i));
const points={A:[{},vv[0]],B:[vv[1],{}],C:[vv[2],{}],E:[C(1),vv[3]],F:[vv[4],C(1)],H:[{},vv[5]],P:[vv[6],vv[7]],Q:[vv[8],vv[9]],R:[vv[10],vv[11]],S:[vv[12],vv[13]]};
function determinant(word){const[a,b,c]=[...word].map(t=>points[t]);return padd(pmul(padd(b[0],pscale(a[0],-1)),padd(c[1],pscale(a[1],-1))),pscale(pmul(padd(b[1],pscale(a[1],-1)),padd(c[0],pscale(a[0],-1))),-1))}
const triangles=choose([...labels],3).map(t=>t.join("")),polys=Object.fromEntries(triangles.map(t=>[t,determinant(t)]));
const bHi=one.sub(rho.div(ceiling)),cHi=R("77/125"),aLo=s.div(cHi.sub(eps)),aHi=one.sub(s.div(bHi));
const eLo=rho.div(one.sub(eps)),cLo=s.mul(4),rLo=R("183/200"),wHi=ceiling.sub(s.mul(3).div(one.sub(cLo))),xLo=s.div(one.sub(aLo));
const box=[
 [aLo,aHi],[eps,bHi],[cLo,cHi],[eLo,ceiling],[eps,cHi],[eLo,one],
 [xLo,ceiling],[aLo,ceiling],[xLo,ceiling],[aLo,ceiling],
 [rLo,one],[aLo,wHi],
 [cLo.mul(5).add(3).add(rLo.mul(3)).div(11),cHi.mul(3).add(8).div(11)],
 [eLo.add(aLo).mul(3).div(11),ceiling.mul(5).add(wHi.mul(3)).div(11)]
];
if(box.some(([a,b])=>a.cmp(0)<=0||a.cmp(b)>=0||b.cmp(1)>0))throw Error("box");
function evaluate(poly,values){let out=z;for(const[m,c]of Object.entries(poly)){let term=R(c);if(m)for(const i of m.split(","))term=term.mul(values[+i]);out=out.add(term)}return out}
function vertexCap(poly){const ids=[...new Set(Object.keys(poly).flatMap(m=>m?m.split(",").map(Number):[]))].sort((a,b)=>a-b);let best=null,values=[];
 for(let mask=0;mask<2**ids.length;mask++){const point={};ids.forEach((v,i)=>point[v]=box[v][(mask>>i)&1]);const val=evaluate(poly,point);values.push(val);best=best===null?val:max(best,val)}
 return{value:best,ids,residuals:values.map(v=>best.sub(v).toString())}}
const capMemo={};
function capFor(tri,sg){const id=tri+":"+sg;if(capMemo[id])return capMemo[id];
 const candidate=vertexCap(pscale(polys[tri],sg));let value=min(one,candidate.value),source=value.cmp(one)===0?["unit"]:["box",candidate.ids,candidate.residuals];
 const outer=canon("CER")[0],fans=["CES","CRS","ERS"].map(t=>canon(t)[0]);
 if(tri===outer&&s.mul(11).div(3).cmp(value)<0){value=s.mul(11).div(3);source=["side_outer","CER","S"]}
 if(fans.includes(tri)&&s.mul(5).div(3).cmp(value)<0){value=s.mul(5).div(3);source=["side_fan","CER","S",tri]}
 if(["BCR","BCS"].map(t=>canon(t)[0]).includes(tri)&&R("21/50").cmp(value)<0){value=R("21/50");source=["side_base",tri.slice(-1)]}
 if(tri===canon("BCR")[0]&&s.mul(3).div(2).cmp(value)<0){value=s.mul(3).div(2);source=["outer_bottom","CER","S"]}
 return capMemo[id]={value,source}}
const BASE={};
for(const tri of choose([...anchors],3))put(BASE,tri.join(""),1);
for(const T of"PQRS")for(const[edge,sg]of Object.entries({AB:1,AC:1,AH:-1,BC:1,BH:-1,CH:-1,EF:1,EH:1,FH:1}))put(BASE,edge+T,sg);
for(const T of"PQ"){put(BASE,"CE"+T,1);put(BASE,"BE"+T,1)}
for(const T of"RS")for(const[edge,sg]of Object.entries({AE:-1,AF:-1,BE:-1,BF:-1,CE:-1,CF:-1}))put(BASE,edge+T,sg);
put(BASE,"HPQ",-1);put(BASE,"ERS",-1);put(BASE,"CRS",1);put(BASE,"BRS",1);
const GP=[];
for(const a of labels)for(const[b,c,d,e]of choose([...labels].filter(x=>x!==a),4))GP.push({word:a+b+c+d+e,terms:[[a+b+c,a+d+e,1],[a+b+d,a+c+e,-1],[a+b+e,a+c+d,1]]});
const meshTemplate="-OHC -OHY -OHZ -OHX +OCY +OCZ +OCX +OYZ -OYX -OZX -HCY -HCZ -HCX -HYZ -HYX +HZX +CYZ +CYX +CZX +YZX".split(" ");
function occupants(kn){const out={};for(const tri of triangles)if(kn[tri])out[tri]=[...labels].filter(p=>inside(kn,tri,p));return out}
function closure(assign){const kn={...BASE},steps=[],meshes=[];for(const[t,sg]of Object.entries(assign))put(kn,t,sg);
 for(let iteration=0;iteration<40;iteration++){let changed=false;const cont=occupants(kn);
  for(const[tri,pts]of Object.entries(cont)){
   if(pts.length>=4)return{kn,steps,meshes,terminal:["four",tri,pts.slice(0,4).join("")]};
   const cap=capFor(tri,kn[tri]);
   if(cap.value.cmp(triCost[pts.length])<0)return{kn,steps,meshes,terminal:["area_cap",tri,pts.join(""),cap.value.toString(),cap.source]};
   if(pts.length>=3)for(const pivot of pts)for(const edge of choose([...tri],2)){const fan=edge.join("")+pivot,others=pts.filter(t=>t!==pivot&&inside(kn,fan,t));if(others.length>=2)return{kn,steps,meshes,terminal:["cluster",tri,pivot,fan,others.slice(0,2).join("")]}}
   if(pts.length<3&&cap.value.cmp(triCost[pts.length+1])>=0)continue;
   for(const p of labels){if(tri.includes(p)||pts.includes(p))continue;const tests=[...tri].map((a,i)=>a+tri[(i+1)%3]+p),ss=tests.map(t=>kn[tri]*get(kn,t));
    if(ss.filter(x=>x===0).length===1&&ss.filter(x=>x===1).length===2){const target=tests[ss.indexOf(0)],sg=-kn[tri];put(kn,target,sg);steps.push(["capacity",tri,pts.join(""),p,target,sg,cap.value.toString(),cap.source]);changed=true}}
  }
  for(const gp of GP){const signs=gp.terms.map(([x,y,c])=>c*get(kn,x)*get(kn,y));if(signs.every(Boolean)&&new Set(signs).size===1)return{kn,steps,meshes,terminal:["gp",gp.word]};
   if(signs.filter(x=>x===0).length!==1)continue;const known=signs.filter(Boolean);if(known[0]!==known[1])continue;
   const[x,y,c]=gp.terms[signs.indexOf(0)];let target,sg;if(!get(kn,x)&&get(kn,y)){target=x;sg=-known[0]*c*get(kn,y)}else if(!get(kn,y)&&get(kn,x)){target=y;sg=-known[0]*c*get(kn,x)}else continue;
   put(kn,target,sg);steps.push(["plu",gp.word,target,sg]);changed=true}
  for(const[tri,pts]of Object.entries(cont))if(pts.length===3)for(const[pivot,left,right]of perm(pts)){
   if(!inside(kn,tri[0]+tri[1]+pivot,left)||!inside(kn,tri[0]+tri[2]+pivot,right))continue;
   const word=tri+pivot+left+right,orient=-kn[tri];if(meshes.some(m=>m[0]===word))continue;const mp=Object.fromEntries([...("OHCYZX")].map((t,i)=>[t,word[i]]));
   let newly=false;for(const token of meshTemplate){const tr=[...token.slice(1)].map(t=>mp[t]).join(""),sg=(token[0]==="+"?1:-1)*orient;
    if(get(kn,tr)===-sg)return{kn,steps,meshes,terminal:["mesh",word,orient,tr,sg]};
    if(!get(kn,tr)){put(kn,tr,sg);newly=true}}
   meshes.push([word,orient]);steps.push(["mesh",word,orient]);changed=changed||newly}
  if(!changed)return{kn,steps,meshes,terminal:null};
 }
 throw Error("closure iteration cap")}
function makeArea(kn,meshes){const cont=occupants(kn),lo={},hi={},witness={},relations=[],seen=new Set();
 function key(t){return canon(t)[0]}
 function add(rel,w){const sig=JSON.stringify(rel);if(!seen.has(sig)){seen.add(sig);relations.push({rel,witness:w})}}
 for(const[t,pts]of Object.entries(cont)){lo[t]=triCost[pts.length];const cap=capFor(t,kn[t]);hi[t]=cap.value;witness["lo_"+t]=["cost",pts.join("")];witness["hi_"+t]=cap.source}
 for(const[t,pts]of Object.entries(cont))for(const p of pts){const fans=[...t].map((a,i)=>key(a+t[(i+1)%3]+p)).sort();add(["fan",t,...fans],["fan",t,p])}
 for(const gp of GP){const ss=gp.terms.map(([a,b,c])=>c*get(kn,a)*get(kn,b));if(!ss.every(Boolean))continue;if(new Set(ss).size!==2)throw Error("GP closure missing");
  const odd=ss.findIndex(x=>ss.filter(y=>y===x).length===1),lhs=gp.terms[odd].slice(0,2).map(key).sort(),rhs=gp.terms.filter((_,i)=>i!==odd).map(t=>t.slice(0,2).map(key).sort()).sort((a,b)=>a.join("|").localeCompare(b.join("|")));
  add(["plu",...lhs,...rhs.flat()],["plu",gp.word])}
 for(const ids of choose([...labels],4)){const[A,B,C,D]=ids,words=[A+B+C,A+C+D,A+B+D,B+C+D];if(words.some(t=>!get(kn,t)))continue;
  for(const orientation of[1,-1]){const co=Object.fromEntries(words.map((t,i)=>[key(t),(i<2?1:-1)*get(kn,t)*orientation]));add(["linear",co,"0"],["affine_quad",ids.join(""),orientation])}}
 for(const ids of choose([...labels],4))for(const rest of perm(ids.slice(1))){const hull=ids[0]+rest.join("");if(!convex(kn,hull))continue;const pts=[...labels].filter(t=>inside(kn,hull,t));if(pts.length){const[A,B,C,D]=hull,cost=quadCost(pts.length);for(const pair of[[A+B+C,A+C+D],[A+B+D,B+C+D]])add(["quad",...pair.map(key).sort(),cost.toString()],["quad",hull,pts.join("")])}break}
 for(const T of"RS")for(const edge of["EF","EH","AE"]){const upper=key(edge+T),lower=key("CE"+T);add(["linear",{[upper]:1,[lower]:-1},"0"],["right_compare",T,edge])}
 // Exact endpoint support for B,C,R,E with the inner point S.
 add(["support",key("BCE"),key("BER"),key("BCR"),rho.toString()],["right_pair_support","BCRE","S"]);
 lo.ZERO=z;hi.ZERO=z;witness.lo_ZERO=["zero"];witness.hi_ZERO=["zero"];
 // Barycentric weights of S in CER are between 3/11 and 5/11.
 for(const pair of choose([...labels],2)){const base=pair.join(""),vertices=[..."CER"].filter(t=>!base.includes(t));if(vertices.some(t=>!get(kn,base+t)))continue;
  if(!base.includes("S")&&!get(kn,base+"S"))continue;
  const sourceVertices=[..."CER"].map(t=>base.includes(t)?null:[key(base+t),get(kn,base+t)]);
  const target=base.includes("S")?["ZERO",1]:[key(base+"S"),get(kn,base+"S")];
  add(["bary",target,sourceVertices,11,[3,3,3]],["side_pair_weights",base,"S","CER","3/11"]);
  const low={},upper={};const plus=(o,t,c)=>{o[t]=(o[t]||0)+c;if(!o[t])delete o[t]};
  if(!base.includes("S")){const t=key(base+"S"),sg=get(kn,base+"S");plus(low,t,11*sg);plus(upper,t,-11*sg)}
  for(const v of vertices){const t=key(base+v),sg=get(kn,base+v);plus(low,t,sg>0?-3:5);plus(upper,t,sg>0?5:-3)}
  if(Object.keys(low).length)add(["linear",low,"0"],["barycentric",base,"S","CER","lower"]);
  if(Object.keys(upper).length)add(["linear",upper,"0"],["barycentric",base,"S","CER","upper"]);
 }
 for(const[word,sg]of meshes){const[A,B,C,Y,Z,X]=word,outer=key(A+B+C),ears=[key(A+B+Z),key(A+C+X),key(B+C+Y)];
  for(const ear of ears)add(["linear",{[outer]:1,[ear]:-1},s.mul(R("3927/500")).toString()],["mesh_ear",word,sg,ear]);
  const inner=key(Y+Z+X);add(["linear",{[inner]:-1},s.mul(R("-8/5")).toString()],["mesh_inner",word,sg]);
  const face=[key(B+Y+Z),key(A+Z+X),key(C+Y+X)];add(["linear",Object.fromEntries(face.map(t=>[t,1])),s.mul(R("2427/500")).toString()],["mesh_connect",word,sg]);
 }
 return{lo,hi,witness,relations}}
function outward(value,side){const N=value.n*1000000n,D=value.d;let v=N/D;if(side==="lo"&&N<0n&&N%D)v--;if(side==="hi"&&N>0n&&N%D)v++;return new Q(v,1000000n)}
function propagate(input,rounds=12,maxSteps=3000){const lo={...input.lo},hi={...input.hi},initial={},current={},updates=[];let end=null;const HALT={};
 for(const[side,table]of[["lo",lo],["hi",hi]])for(const[t,v]of Object.entries(table)){const ref=side+"_"+t;initial[ref]={triangle:t,side,value:v.toString(),witness:input.witness[ref]};current[side+":"+t]=ref}
 function update(side,t,value,rel,rule,deps){if(end)return false;const v=outward(value,side),table=side==="lo"?lo:hi;if(side==="lo"?v.cmp(table[t])<=0:v.cmp(table[t])>=0)return false;
  const id="s"+(updates.length+1),sources=deps.map(([a,b])=>current[a+":"+b]);updates.push({id,relation:rel,rule,side,triangle:t,value:v.toString(),sources});table[t]=v;current[side+":"+t]=id;
  if(lo[t].cmp(hi[t])>0){end={triangle:t,lower:current["lo:"+t],upper:current["hi:"+t]};throw HALT}return true}
 for(const t in lo)if(lo[t].cmp(hi[t])>0){end={triangle:t,lower:current["lo:"+t],upper:current["hi:"+t]};break}
 try{for(let iteration=0;iteration<rounds&&!end&&updates.length<maxSteps;iteration++){let changed=false;
  for(let ri=0;ri<input.relations.length&&!end&&updates.length<maxSteps;ri++){const rel=input.relations[ri].rel,kind=rel[0];
   if(kind==="fan"){const[T,...fans]=rel.slice(1);changed=update("lo",T,fans.reduce((a,t)=>a.add(lo[t]),z),ri,"sum",fans.map(t=>["lo",t]))||changed;
    changed=update("hi",T,fans.reduce((a,t)=>a.add(hi[t]),z),ri,"upper_sum",fans.map(t=>["hi",t]))||changed;
    for(const target of fans){const other=fans.filter(t=>t!==target);
     changed=update("hi",target,hi[T].sub(other.reduce((a,t)=>a.add(lo[t]),z)),ri,"sub",[["hi",T],...other.map(t=>["lo",t])])||changed;
     changed=update("lo",target,lo[T].sub(other.reduce((a,t)=>a.add(hi[t]),z)),ri,"lower_sub",[["lo",T],...other.map(t=>["hi",t])])||changed}}
   else if(kind==="plu"){const[x,y,u,v,w,z0]=rel.slice(1);
    for(const[target,other]of[[x,y],[y,x]]){changed=update("lo",target,lo[u].mul(lo[v]).add(lo[w].mul(lo[z0])).div(hi[other]),ri,"sumlo",[...([u,v,w,z0].map(t=>["lo",t])),["hi",other]])||changed;
     changed=update("hi",target,hi[u].mul(hi[v]).add(hi[w].mul(hi[z0])).div(lo[other]),ri,"sumhi",[...([u,v,w,z0].map(t=>["hi",t])),["lo",other]])||changed}
    for(const[target,other,a,b]of[[u,v,w,z0],[v,u,w,z0],[w,z0,u,v],[z0,w,u,v]]){
     const n=lo[x].mul(lo[y]).sub(hi[a].mul(hi[b]));if(n.cmp(0)>0)changed=update("lo",target,n.div(hi[other]),ri,"diff",[["lo",x],["lo",y],["hi",a],["hi",b],["hi",other]])||changed;
     changed=update("hi",target,max(z,hi[x].mul(hi[y]).sub(lo[a].mul(lo[b])).div(lo[other])),ri,"diffhi",[["hi",x],["hi",y],["lo",a],["lo",b],["lo",other]])||changed}}
   else if(kind==="quad"){const[a,b,cost]=rel.slice(1);changed=update("lo",a,R(cost).sub(hi[b]),ri,"quad",[["hi",b]])||changed;changed=update("lo",b,R(cost).sub(hi[a]),ri,"quad",[["hi",a]])||changed}
   else if(kind==="support"){const[x,y,z0,c]=rel.slice(1),cost=R(c);
    changed=update("lo",y,cost.mul(one.sub(hi[z0].div(lo[x]))),ri,"support_y",[["lo",x],["hi",z0]])||changed;
    changed=update("lo",z0,lo[x].mul(one.sub(hi[y].div(cost))),ri,"support_z",[["lo",x],["hi",y]])||changed;
    if(hi[y].cmp(cost)<0)changed=update("hi",x,cost.mul(hi[z0]).div(cost.sub(hi[y])),ri,"support_x",[["hi",z0],["hi",y]])||changed}
   else if(kind==="bary"){const[target,vertices,N,weights]=rel.slice(1),remain=N-weights.reduce((a,b)=>a+b,0);
    for(const signedSide of["lo","hi"]){const vals=vertices.map(pair=>!pair?z:pair[1]===1?(signedSide==="lo"?lo[pair[0]]:hi[pair[0]]):(signedSide==="lo"?hi[pair[0]].neg():lo[pair[0]].neg()));
     const extreme=(signedSide==="lo"?min:max)(...vals),bound=vals.reduce((sum,v,i)=>sum.add(v.mul(weights[i])),extreme.mul(remain)).div(N);
     const deps=vertices.filter(Boolean).map(([t,sg])=>[sg===1?signedSide:(signedSide==="lo"?"hi":"lo"),t]);
     const side=target[1]===1?signedSide:(signedSide==="lo"?"hi":"lo"),value=target[1]===1?bound:bound.neg();
     changed=update(side,target[0],value,ri,"bary_"+signedSide,deps)||changed;
    }}
   else{const[coefs,rhs]=rel.slice(1);for(const[target,co]of Object.entries(coefs)){const others=Object.keys(coefs).filter(t=>t!==target).sort(),deps=others.map(t=>[coefs[t]>0?"hi":"lo",t]);const upper=others.reduce((sum,t)=>sum.add((coefs[t]>0?hi[t]:lo[t]).mul(coefs[t])),z);
     changed=update(co>0?"lo":"hi",target,R(rhs).sub(upper).div(co),ri,"linear",deps)||changed}}
  }if(!changed)break}}catch(err){if(err!==HALT)throw err}
 return{initial,relations:input.relations,updates,end,final:Object.fromEntries(Object.keys(lo).map(t=>[t,{lo:lo[t].toString(),hi:hi[t].toString()}]))}}
function prune(proof){if(!proof.end)throw Error("no contradiction");const records=Object.fromEntries(proof.updates.map(r=>[r.id,r])),needed=new Set(),todo=[proof.end.lower,proof.end.upper];while(todo.length){const id=todo.pop();if(needed.has(id))continue;needed.add(id);if(records[id])todo.push(...records[id].sources);else if(!proof.initial[id])throw Error("lost ref")}
 const rows=proof.updates.filter(r=>needed.has(r.id)),indices=[...new Set(rows.map(r=>r.relation))].sort((a,b)=>a-b),map=Object.fromEntries(indices.map((x,i)=>[x,i]));
 return{initial:Object.fromEntries(Object.entries(proof.initial).filter(([ref])=>needed.has(ref))),relations:indices.map(i=>proof.relations[i]),updates:rows.map(r=>({...r,relation:map[r.relation]})),end:proof.end}}
function splitChoice(kn){const preferred=["QRS","PRS","CPQ","EPQ","FPQ","APQ","BPQ","ARS","FRS","HRS","CFP","CFQ","AFP","AFQ","AEP","AEQ","BFP","BFQ"];
 return preferred.find(t=>!get(kn,t))||triangles.find(t=>!kn[t])||null}
function fresh(){return{version:1,box:box.map(b=>b.map(String)),base:BASE,nodes:{},queue:[{id:"r",assign:{}}],done:false}}
function runBatch(state,count=1,options={}){const report=[];
 for(let i=0;i<count&&state.queue.length;i++){const node=state.queue.pop(),cl=closure(node.assign);
  if(cl.terminal){state.nodes[node.id]={kind:"geometry",assign:node.assign,steps:cl.steps,meshes:cl.meshes,terminal:cl.terminal};report.push([node.id,"geometry",cl.terminal[0],Object.keys(cl.kn).length]);continue}
  const ar=propagate(makeArea(cl.kn,cl.meshes),options.rounds||12,options.maxSteps||3000);
  if(ar.end){const proof=prune(ar);state.nodes[node.id]={kind:"area",assign:node.assign,steps:cl.steps,meshes:cl.meshes,proof};report.push([node.id,"area",proof.updates.length,Object.keys(cl.kn).length]);continue}
  const tri=splitChoice(cl.kn);
  if(!tri||Object.keys(node.assign).length>=(options.maxDepth||24)){state.nodes[node.id]={kind:"open",assign:node.assign,steps:cl.steps,signs:cl.kn,final:ar.final};report.push([node.id,"open",ar.updates.length,Object.keys(cl.kn).length]);continue}
  state.nodes[node.id]={kind:"split",assign:node.assign,triangle:tri};
  state.queue.push({id:node.id+"p",assign:{...node.assign,[tri]:1}},{id:node.id+"m",assign:{...node.assign,[tri]:-1}});
  report.push([node.id,"split",tri,Object.keys(cl.kn).length,ar.updates.length]);
 }
 state.done=state.queue.length===0;return report}
return{Q,R,s,box,vars,labels,BASE,triangles,polys,canon,get,put,inside,convex,capFor,closure,makeArea,propagate,prune,fresh,runBatch,evaluate,vertexCap};
})();
