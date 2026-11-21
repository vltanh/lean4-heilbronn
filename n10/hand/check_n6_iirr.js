/* Optional exact checker for the fixed printed N6 IIRR proof.
 * Standard JavaScript with BigInt; CLI uses only Node built-ins.
 * Contains the fixed domain and only the record rules used in the tables.
 * No discovery, optimization, closure, or propagation routine.
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
const BASE={};
for(const tri of choose([...anchors],3))put(BASE,tri.join(""),1);
for(const T of"PQRS")for(const[edge,sg]of Object.entries({AB:1,AC:1,AH:-1,BC:1,BH:-1,CH:-1,EF:1,EH:1,FH:1}))put(BASE,edge+T,sg);
for(const T of"PQ"){put(BASE,"CE"+T,1);put(BASE,"BE"+T,1)}
for(const T of"RS")for(const[edge,sg]of Object.entries({AE:-1,AF:-1,BE:-1,BF:-1,CE:-1,CF:-1}))put(BASE,edge+T,sg);
put(BASE,"HPQ",-1);put(BASE,"ERS",-1);put(BASE,"CRS",1);put(BASE,"BRS",1);
return{Q,R,s,box,vars,labels,BASE,triangles,polys,canon,get,put};
})();

/* Independent record replay for exact-JS IIRR discovery.
 * Requires IIRR only for rational arithmetic, point determinants and the
 * explicitly stated domain. Does not call closure, makeArea or propagate.
 */
globalThis.IIRR_CHECK=(()=>{
const R=IIRR.R,zero=R(0),one=R(1),s=IIRR.s;
const fail=m=>{throw Error("IIRR replay: "+m)},assert=(x,m)=>{if(!x)fail(m)};
const eq=(a,b)=>R(a).cmp(b)===0,min=(...xs)=>xs.map(R).reduce((a,b)=>a.cmp(b)<0?a:b),max=(...xs)=>xs.map(R).reduce((a,b)=>a.cmp(b)>0?a:b);
const key=t=>IIRR.canon(t)[0],sign=(known,t)=>IIRR.get(known,t);
function inside(known,hull,p){if(hull.includes(p))return false;const sg=sign(known,hull.slice(0,3));return sg!==0&&[...hull].every((x,i)=>sign(known,x+hull[(i+1)%hull.length]+p)===sg)}
function add(known,t,sg){const old=sign(known,t);assert(!old||old===sg,"conflicting sign "+t);IIRR.put(known,t,sg)}
function cost(n){assert(n>=0&&n<=3,"triangle occupants");return R(["93/1000","279/1000","347/500","823/1000"][n])}
function squareCost(n){assert(n>0,"quad count");return R(n===1?"449/1000":n===2?"744/1000":"93/91")}
function combinations(a,n){if(!n)return[[]];const out=[];for(let i=0;i<=a.length-n;i++)for(const q of combinations(a.slice(i+1),n-1))out.push([a[i],...q]);return out}
function convex(known,hull){return combinations([...hull],3).every(t=>sign(known,t.join(""))===1)}
function cap(t,sg,src){assert(sg===1||sg===-1,"cap sign");const kind=src[0];
 if(kind==="side_outer"){assert(t===key("CER")&&src[1]==="CER"&&src[2]==="S","side outer");return s.mul(11).div(3)}
 if(kind==="side_fan"){assert(["CES","CRS","ERS"].map(key).includes(t)&&src[1]==="CER"&&src[2]==="S"&&src[3]===t,"side fan");return s.mul(5).div(3)}
 if(kind==="outer_bottom"){assert(t===key("BCR")&&src[1]==="CER"&&src[2]==="S","outer bottom cap");return s.mul(3).div(2)}
 assert(kind==="box","cap kind");
 const poly=IIRR.polys[t],ids=[...new Set(Object.keys(poly).flatMap(m=>m?m.split(",").map(Number):[]))].sort((a,b)=>a-b);
 assert(JSON.stringify(ids)===JSON.stringify(src[1]),"box variables");let best=null;const values=[];
 for(let mask=0;mask<2**ids.length;mask++){const pt={};ids.forEach((v,i)=>pt[v]=IIRR.box[v][(mask>>i)&1]);let val=zero;for(const[m,c]of Object.entries(poly)){let term=R(c*sg);if(m)for(const v of m.split(","))term=term.mul(pt[+v]);val=val.add(term)}values.push(val);best=best===null?val:max(best,val)}
 assert(values.length===src[2].length&&values.every((v,i)=>eq(best.sub(v),src[2][i])),"box corner certificate");return best}
function gp(word){const[a,b,c,d,e]=word;return[[a+b+c,a+d+e,1],[a+b+d,a+c+e,-1],[a+b+e,a+c+d,1]]}
function geometry(node){const kn={...IIRR.BASE};for(const[t,sg]of Object.entries(node.assign))add(kn,t,sg);const meshes=[];
 for(const row of node.steps||[]){const[kind,...r]=row;
  if(kind==="capacity"){const[t,pts,p,target,sg,value,source]=r;assert(new Set(pts).size===pts.length&&[...pts].every(v=>inside(kn,t,v)),"capacity occupants");const lim=cap(t,sign(kn,t),source);assert(eq(lim,value),"capacity cap transcription");assert(pts.length===3||lim.cmp(cost(pts.length+1))<0,"capacity threshold");assert(!t.includes(p)&&!pts.includes(p),"capacity new point");const tests=[...t].map((a,i)=>a+t[(i+1)%3]+p);assert(tests.includes(target)&&tests.filter(v=>v!==target).every(v=>sign(kn,v)===sign(kn,t)),"capacity inward tests");assert(sg===-sign(kn,t),"capacity conclusion");add(kn,target,sg)}
  else if(kind==="plu"){const[word,target,sg]=r,terms=gp(word),products=terms.map(([x,y,c])=>c*sign(kn,x)*sign(kn,y)),idx=terms.findIndex(([x,y])=>key(x)===key(target)||key(y)===key(target));
   assert(idx>=0&&products.filter(v=>v===0).length===1&&products[idx]===0,"GP unknown");const fixed=products.filter(Boolean);assert(fixed[0]===fixed[1],"GP common sign");
   const[x,y,c]=terms[idx],factor=key(x)===key(target)?x:y,other=factor===x?y:x;assert(sign(kn,other)!==0,"GP other");
   const ori=IIRR.canon(factor)[1]*IIRR.canon(target)[1],expected=-fixed[0]*c*sign(kn,other)*ori;assert(sg===expected,"GP target sign");add(kn,target,sg)}
  else fail("geometry rule "+kind)}
 assert(JSON.stringify(meshes)===JSON.stringify(node.meshes||meshes),"mesh ledger");
 return kn}
function terminal(node,kn){const[kind,...r]=node.terminal;
 if(kind==="area_cap"){const[t,pts,value,source]=r;assert([...pts].every(p=>inside(kn,t,p)),"cap terminal occupants");assert(eq(cap(t,sign(kn,t),source),value)&&R(value).cmp(cost(pts.length))<0,"cap terminal")}
 else if(kind==="cluster"){const[t,p,fan,others]=r;assert(inside(kn,t,p)&&others.length===2&&[...others].every(v=>inside(kn,t,v)&&inside(kn,fan,v))&&fan.includes(p)&&[...fan].filter(v=>v!==p).every(v=>t.includes(v)),"cluster terminal")}
 else if(kind==="gp"){const ss=gp(r[0]).map(([x,y,c])=>c*sign(kn,x)*sign(kn,y));assert(ss.every(Boolean)&&ss.every(v=>v===ss[0]),"GP terminal")}
 else fail("terminal kind")}
function relation(item,kn,meshes){const rel=item.rel,w=item.witness,[kind,...r]=rel;
 if(kind==="fan"){const[t,...fans]=r;assert(w[0]==="fan"&&w[1]===t&&inside(kn,t,w[2]),"fan witness");assert(JSON.stringify(fans)===JSON.stringify([...t].map((a,i)=>key(a+t[(i+1)%3]+w[2])).sort()),"fan parts")}
 else if(kind==="plu"){assert(w[0]==="plu","Plucker witness");const terms=gp(w[1]),ss=terms.map(([a,b,c])=>c*sign(kn,a)*sign(kn,b));assert(ss.every(Boolean)&&new Set(ss).size===2,"Plucker signs");const odd=ss.findIndex(v=>ss.filter(x=>x===v).length===1),left=terms[odd].slice(0,2).map(key).sort(),right=terms.filter((_,i)=>i!==odd).map(t=>t.slice(0,2).map(key).sort()).sort((a,b)=>a.join("|").localeCompare(b.join("|")));assert(JSON.stringify(r)===JSON.stringify([...left,...right.flat()]),"Plucker relation")}
 else if(kind==="quad"){const[a,b,c]=r,[_,hull,pts]=w;assert(w[0]==="quad"&&convex(kn,hull)&&[...pts].every(p=>inside(kn,hull,p))&&eq(c,squareCost(pts.length)),"quad witnesses");const[A,B,C,D]=hull;assert([[A+B+C,A+C+D],[A+B+D,B+C+D]].some(v=>JSON.stringify(v.map(key).sort())===JSON.stringify([a,b])),"quad diagonal")}
 else if(kind==="bary"){const[target,vs,N,ws]=r,[_,base,V,hull,weight]=w;assert(w[0]==="side_pair_weights"&&V==="S"&&hull==="CER"&&weight==="3/11"&&N===11&&JSON.stringify(ws)==="[3,3,3]","bary weights");assert(JSON.stringify(vs)===JSON.stringify([...hull].map(t=>base.includes(t)?null:[key(base+t),sign(kn,base+t)]))&&vs.filter(Boolean).every(v=>v[1]),"bary vertex signs");assert(JSON.stringify(target)===JSON.stringify(base.includes(V)?["ZERO",1]:[key(base+V),sign(kn,base+V)])&&target[1],"bary target")}
 else if(kind==="linear"){let co={},rhs="0";const plus=(t,c)=>{co[t]=(co[t]||0)+c;if(!co[t])delete co[t]};
  if(w[0]==="barycentric"){const[_,base,V,hull,side]=w;assert(V==="S"&&hull==="CER"&&["lower","upper"].includes(side),"linear bary witness");const lower=side==="lower";
   if(!base.includes(V)){assert(sign(kn,base+V)!==0,"linear bary target");plus(key(base+V),(lower?11:-11)*sign(kn,base+V))}
   for(const v of hull)if(!base.includes(v)){const sg=sign(kn,base+v);assert(sg,"linear bary vertex");plus(key(base+v),lower?(sg>0?-3:5):(sg>0?5:-3))}}
  else if(w[0]==="affine_quad"){const[_,word,orientation]=w;assert(word.length===4&&new Set(word).size===4&&[1,-1].includes(orientation),"affine quad witness");const[A,B,C,D]=word;for(const[t,c]of[[A+B+C,1],[A+C+D,1],[A+B+D,-1],[B+C+D,-1]]){assert(sign(kn,t),"affine quad sign");plus(key(t),orientation*c*sign(kn,t))}}
  else fail("unlisted linear witness");
  assert(eq(rhs,r[1])&&JSON.stringify(Object.entries(co).sort())===JSON.stringify(Object.entries(r[0]).sort()),"linear coefficients")}
 else fail("relation kind")}
function ceilfloor(v,side){const N=v.n*1000000n,D=v.d;let t=N/D;if(side==="lo"&&N<0n&&N%D)t--;if(side==="hi"&&N>0n&&N%D)t++;return new IIRR.Q(t,1000000n)}
function arithmetic(proof,kn,meshes){const records={},relations=proof.relations;for(const item of relations)relation(item,kn,meshes);
 for(const[id,row]of Object.entries(proof.initial)){const{triangle:t,side,value,witness:w}=row;assert(!records[id]&&(side==="lo"||side==="hi"),"initial identity");let expected;
  if(t==="ZERO"){assert(JSON.stringify(w)==='["zero"]',"zero witness");expected=zero}
  else if(side==="lo"){assert(w[0]==="cost"&&[...w[1]].every(p=>inside(kn,t,p))&&new Set(w[1]).size===w[1].length,"initial occupants");expected=cost(w[1].length)}
  else expected=cap(t,sign(kn,t),w);
  assert(eq(expected,value),"initial value");records[id]={...row,v:R(value)}}
 for(const row of proof.updates){assert(!records[row.id]&&relations[row.relation],"step index");const rel=relations[row.relation].rel,[kind,...r]=rel,refs=row.sources.map(id=>{assert(records[id],"source "+id);return records[id]}),vals=refs.map(v=>v.v);let raw,expected=[];
  const dep=(side,t)=>[side,t],expect=(pairs)=>{expected=pairs;assert(pairs.length===refs.length&&pairs.every((p,i)=>refs[i].side===p[0]&&refs[i].triangle===p[1]),"dependency list "+row.id)};
  if(kind==="fan"){const[T,...F]=r;if(row.triangle===T){const side=row.rule==="sum"?"lo":"hi";assert(row.rule===(side==="lo"?"sum":"upper_sum")&&row.side===side,"fan sum rule");expect(F.map(t=>dep(side,t)));raw=vals.reduce((a,b)=>a.add(b),zero)}
   else{assert(F.includes(row.triangle),"fan target");const other=F.filter(t=>t!==row.triangle);if(row.rule==="sub"){assert(row.side==="hi","fan upper");expect([dep("hi",T),...other.map(t=>dep("lo",t))])}else{assert(row.rule==="lower_sub"&&row.side==="lo","fan lower");expect([dep("lo",T),...other.map(t=>dep("hi",t))])}raw=vals[0].sub(vals.slice(1).reduce((a,b)=>a.add(b),zero))}}
  else if(kind==="plu"){const[x,y,u,v,w,z]=r;if(["sumlo","sumhi"].includes(row.rule)){assert([x,y].includes(row.triangle),"Plucker sum target");const side=row.rule==="sumlo"?"lo":"hi",other=row.triangle===x?y:x;assert(row.side===side,"Plucker sum side");expect([...([u,v,w,z].map(t=>dep(side,t))),dep(side==="lo"?"hi":"lo",other)]);raw=vals[0].mul(vals[1]).add(vals[2].mul(vals[3])).div(vals[4])}
   else{const rr=[[u,v,w,z],[v,u,w,z],[w,z,u,v],[z,w,u,v]].find(q=>q[0]===row.triangle);assert(rr,"Plucker difference target");const[_,other,a,b]=rr;if(row.rule==="diff"){assert(row.side==="lo","difference lower");expect([dep("lo",x),dep("lo",y),dep("hi",a),dep("hi",b),dep("hi",other)]);raw=vals[0].mul(vals[1]).sub(vals[2].mul(vals[3])).div(vals[4]);assert(raw.cmp(0)>0,"positive difference")}else{assert(row.rule==="diffhi"&&row.side==="hi","difference upper");expect([dep("hi",x),dep("hi",y),dep("lo",a),dep("lo",b),dep("lo",other)]);raw=max(zero,vals[0].mul(vals[1]).sub(vals[2].mul(vals[3])).div(vals[4]))}}}
  else if(kind==="quad"){const[a,b,c]=r;assert(row.rule==="quad"&&row.side==="lo"&&[a,b].includes(row.triangle),"quad rule");expect([dep("hi",row.triangle===a?b:a)]);raw=R(c).sub(vals[0])}
  else if(kind==="linear"){const[co,rhs]=r,c=co[row.triangle];assert(c&&row.rule==="linear"&&row.side===(c>0?"lo":"hi"),"linear target");const others=Object.keys(co).filter(t=>t!==row.triangle).sort();expect(others.map(t=>dep(co[t]>0?"hi":"lo",t)));raw=R(rhs).sub(vals.reduce((sum,v,i)=>sum.add(v.mul(co[others[i]])),zero)).div(c)}
  else if(kind==="bary"){const[target,vs,N,ws]=r,side=row.rule==="bary_lo"?"lo":"hi";assert(row.rule==="bary_"+side&&row.triangle===target[0]&&row.side===(target[1]===1?side:(side==="lo"?"hi":"lo")),"bary rule");expect(vs.filter(Boolean).map(([t,sg])=>dep(sg===1?side:(side==="lo"?"hi":"lo"),t)));let at=0;const signed=vs.map(pair=>!pair?zero:vals[at++].mul(pair[1])),extra=N-ws.reduce((a,b)=>a+b,0);raw=signed.reduce((sum,v,i)=>sum.add(v.mul(ws[i])),(side==="lo"?min:max)(...signed).mul(extra)).div(N).mul(target[1])}
  else fail("arithmetic kind");
  assert(eq(ceilfloor(raw,row.side),row.value),"rounded value "+row.id);records[row.id]={...row,v:R(row.value)}}
 const L=records[proof.end.lower],U=records[proof.end.upper];assert(L&&U&&L.triangle===proof.end.triangle&&U.triangle===proof.end.triangle&&L.side==="lo"&&U.side==="hi"&&L.v.cmp(U.v)>0,"final contradiction");return proof.updates.length}
function check(state){let leaves=0,geometryCount=0,areaCount=0,updates=0,open=0,splits=0;const seen=new Set(),todo=[["r",{}]];
 while(todo.length){const[id,assign]=todo.pop(),node=state.nodes[id];if(!node){assert(state.queue.some(v=>v.id===id&&JSON.stringify(v.assign)===JSON.stringify(assign)),"missing frontier "+id);open++;continue}
  assert(!seen.has(id)&&JSON.stringify(assign)===JSON.stringify(node.assign),"tree ancestry");seen.add(id);
  if(node.kind==="split"){splits++;assert(node.triangle.length===3&&new Set(node.triangle).size===3&&[...node.triangle].every(t=>IIRR.labels.includes(t)),"split actual determinant");for(const[letter,sg]of[["m",-1],["p",1]])todo.push([id+letter,{...assign,[node.triangle]:sg}])}
  else{const kn=geometry(node);if(node.kind==="geometry"){terminal(node,kn);geometryCount++;leaves++}else if(node.kind==="area"){updates+=arithmetic(node.proof,kn,node.meshes);areaCount++;leaves++}else{assert(node.kind==="open","leaf kind");open++}}}
 assert(seen.size===Object.keys(state.nodes).length,"unreachable nodes");
 return{splits,geometry:geometryCount,area:areaCount,updates,open,complete:open===0}}
return{check,geometry,arithmetic,terminal,relation,cap};
})();
globalThis.IIRR_READ_TABLES=(()=>{
function need(x,msg){if(!x)throw Error("IIRR Markdown: "+msg)}
function columns(line){return line.startsWith("| ")?line.slice(1,-1).split("|").map(s=>s.trim()):null}
function parse(geometry,areas){
 const state={nodes:{},queue:[],done:true},caps={},leafNodes={},leafRecords={};let section="",leaf=null;
 for(const line of geometry.split(/\r?\n/)){
  if(line.startsWith("## ")){section=line.slice(3);const m=/^Leaf ([AG]\d+)$/.exec(section);leaf=m?m[1]:null;if(leaf)leafRecords[leaf]={steps:[],meshes:[]};continue}
  const c=columns(line);if(!c)continue;
  if(section==="Fixed domain"&&["version","box","base"].includes(c[0])){state[c[0]]=JSON.parse(c[1]);continue}
  if(section==="Cap catalogue"&&/^C\d+$/.test(c[0])){const[id,t,sg,value,kind,indices]=c;need(!caps[id],"duplicate cap");let source;
   if(kind==="box")source=["box",JSON.parse(indices),[]];
   else if(kind==="unit")source=["unit"];
   else if(kind==="side_outer"||kind==="outer_bottom")source=[kind,"CER","S"];
   else if(kind==="side_fan")source=[kind,"CER","S",t];
   else if(kind==="side_base")source=[kind,t.slice(-1)];
   else throw Error("cap method");
   caps[id]={t,sg:+sg,value,source};continue}
  if(section==="Nonnegative box-corner differences"&&/^C\d+$/.test(c[0])){const cap=caps[c[0]],idx=+c[1];need(cap?.source[0]==="box"&&idx===cap.source[2].length,"corner ordering");cap.source[2].push(c[2]);continue}
  if(section==="Complete binary tree"&&/^r[mp]*$/.test(c[0])){const[id,kind,data]=c;need(!state.nodes[id],"duplicate node");if(kind==="split")state.nodes[id]={kind,triangle:data};else{need(["area","geometry"].includes(kind)&&!leafNodes[data],"leaf kind");state.nodes[id]={kind};leafNodes[data]=id}continue}
  if(leaf&&(/^\d+$/.test(c[0])||c[0]==="T")){const rule=c[1],args=JSON.parse(c[2]),record=leafRecords[leaf];
   if(rule==="capacity"){const[t,pts,p,target,sg,id]=args,cap=caps[id];need(cap&&cap.t===t,"capacity cap");record.steps.push([rule,t,pts,p,target,sg,cap.value,cap.source])}
   else if(rule==="terminal"){let term=args;if(term[0]==="area_cap"){const[k,t,pts,id]=term,cap=caps[id];need(cap&&cap.t===t,"terminal cap");term=[k,t,pts,cap.value,cap.source]}record.terminal=term}
   else{record.steps.push([rule,...args]);if(rule==="mesh")record.meshes.push(args)}
  }
 }
 for(const cap of Object.values(caps)){need([1,-1].includes(cap.sg),"cap orientation");need(IIRR_CHECK.cap(cap.t,cap.sg,cap.source).cmp(cap.value)===0,"cap catalogue value");}
 need(state.version&&state.box&&state.base,"fixed input");
 need(JSON.stringify(state.box)===JSON.stringify(IIRR.box.map(b=>b.map(String))),"fixed box");
 need(JSON.stringify(state.base)===JSON.stringify(IIRR.BASE),"initial signs");
 for(const[code,id]of Object.entries(leafNodes)){need(leafRecords[code],"missing geometry leaf");Object.assign(state.nodes[id],leafRecords[code]);if(state.nodes[id].kind==="area")state.nodes[id].proof={initial:{},relations:[],updates:[]};else need(state.nodes[id].terminal,"missing geometric terminal")}
 need(Object.keys(leafNodes).length===Object.keys(leafRecords).length,"unreferenced leaf");
 let mode="",current=null;
 for(const line of areas.split(/\r?\n/)){
  const m=/^## Leaf (A\d+)$/.exec(line);if(m){need(leafNodes[m[1]],"unknown area leaf");current=state.nodes[leafNodes[m[1]]].proof;need(current,"area leaf kind");continue}
  if(line.startsWith("### ")){mode=line.slice(4);continue}
  const c=columns(line);if(!c||!current)continue;
  if(mode==="Initial bounds"&&/^(lo|hi)_/.test(c[0])){const[id,t,side,value,w]=c;need(!current.initial[id],"duplicate initial");let witness;if(w==="zero")witness=["zero"];else if(w.startsWith("cost:"))witness=["cost",w.slice(5)];else{const cap=caps[w];need(cap&&cap.t===t&&cap.value===value,"initial cap");witness=cap.source}current.initial[id]={triangle:t,side,value,witness}}
  else if(mode==="Relations"&&/^R\d+$/.test(c[0])){const idx=+c[0].slice(1);need(idx===current.relations.length,"relation ordering");current.relations.push({rel:[c[1],...JSON.parse(c[2])],witness:JSON.parse(c[3])})}
  else if(mode==="Updates"&&/^s\d+$/.test(c[0])){const[id,relation,rule,side,t,value,sources]=c;current.updates.push({id,relation:+relation.slice(1),rule,side,triangle:t,value,sources:sources?sources.split(","):[]})}
  else if(mode==="Contradiction"&&c[0]==="E"){need(!current.end,"duplicate end");current.end={triangle:c[1],lower:c[2],upper:c[3]}}
 }
 const todo=[["r",{}]],visited=new Set();while(todo.length){const[id,assign]=todo.pop(),n=state.nodes[id];need(n&&!visited.has(id),"tree child");visited.add(id);n.assign=assign;if(n.kind==="split")for(const[letter,sg]of[["m",-1],["p",1]])todo.push([id+letter,{...assign,[n.triangle]:sg}]);else if(n.kind==="area")need(n.proof.end,"unfinished area leaf")}
 need(visited.size===Object.keys(state.nodes).length,"unreachable tree row");
 return state;
}
return{parse};
})();
if(typeof require==="function"&&typeof module!=="undefined"&&require.main===module){
 const fs=require("node:fs"),path=require("node:path");
 const geometry=fs.readFileSync(path.join(__dirname,"N6_IIRR_GEOMETRY.md"),"utf8");
 const areas=fs.readFileSync(path.join(__dirname,"N6_IIRR_AREA_CHAINS.md"),"utf8");
 const state=IIRR_READ_TABLES.parse(geometry,areas),report=IIRR_CHECK.check(state);
 if(!report.complete||report.splits!==127||report.geometry!==45||report.area!==83||report.updates!==13957)
  throw Error("Unexpected proof counts");
 process.stdout.write(JSON.stringify(report)+"\n");
}
