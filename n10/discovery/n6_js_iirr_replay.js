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
 if(kind==="unit")return one;
 if(kind==="side_outer"){assert(t===key("CER")&&src[1]==="CER"&&src[2]==="S","side outer");return s.mul(11).div(3)}
 if(kind==="side_fan"){assert(["CES","CRS","ERS"].map(key).includes(t)&&src[1]==="CER"&&src[2]==="S"&&src[3]===t,"side fan");return s.mul(5).div(3)}
 if(kind==="outer_bottom"){assert(t===key("BCR")&&src[1]==="CER"&&src[2]==="S","outer bottom cap");return s.mul(3).div(2)}
 if(kind==="side_base"){assert(["BCR","BCS"].map(key).includes(t)&&src[1]===t.slice(-1),"side base");return R("21/50")}
 assert(kind==="box","cap kind");
 const poly=IIRR.polys[t],ids=[...new Set(Object.keys(poly).flatMap(m=>m?m.split(",").map(Number):[]))].sort((a,b)=>a-b);
 assert(JSON.stringify(ids)===JSON.stringify(src[1]),"box variables");let best=null;const values=[];
 for(let mask=0;mask<2**ids.length;mask++){const pt={};ids.forEach((v,i)=>pt[v]=IIRR.box[v][(mask>>i)&1]);let val=zero;for(const[m,c]of Object.entries(poly)){let term=R(c*sg);if(m)for(const v of m.split(","))term=term.mul(pt[+v]);val=val.add(term)}values.push(val);best=best===null?val:max(best,val)}
 assert(values.length===src[2].length&&values.every((v,i)=>eq(best.sub(v),src[2][i])),"box corner certificate");return best}
function gp(word){const[a,b,c,d,e]=word;return[[a+b+c,a+d+e,1],[a+b+d,a+c+e,-1],[a+b+e,a+c+d,1]]}
function mesh(known,word,ori){assert(new Set(word).size===6,"mesh distinct");const[A,B,C,Y,Z,X]=word;
 assert(inside(known,A+B+C,Y)&&inside(known,A+B+C,Z)&&inside(known,A+B+C,X),"mesh outer occupants");
 assert(inside(known,A+B+Y,Z)&&inside(known,A+C+Y,X),"mesh split");
 assert(ori===-sign(known,A+B+C),"mesh orientation");
 const mapping={O:A,H:B,C,Y,Z,X},tokens="-OHC -OHY -OHZ -OHX +OCY +OCZ +OCX +OYZ -OYX -OZX -HCY -HCZ -HCX -HYZ -HYX +HZX +CYZ +CYX +CZX +YZX".split(" ");
 return tokens.map(tok=>[[...tok.slice(1)].map(t=>mapping[t]).join(""),(tok[0]==="+"?1:-1)*ori])}
function geometry(node){const kn={...IIRR.BASE};for(const[t,sg]of Object.entries(node.assign))add(kn,t,sg);const meshes=[];
 for(const row of node.steps||[]){const[kind,...r]=row;
  if(kind==="capacity"){const[t,pts,p,target,sg,value,source]=r;assert(new Set(pts).size===pts.length&&[...pts].every(v=>inside(kn,t,v)),"capacity occupants");const lim=cap(t,sign(kn,t),source);assert(eq(lim,value),"capacity cap transcription");assert(pts.length===3||lim.cmp(cost(pts.length+1))<0,"capacity threshold");assert(!t.includes(p)&&!pts.includes(p),"capacity new point");const tests=[...t].map((a,i)=>a+t[(i+1)%3]+p);assert(tests.includes(target)&&tests.filter(v=>v!==target).every(v=>sign(kn,v)===sign(kn,t)),"capacity inward tests");assert(sg===-sign(kn,t),"capacity conclusion");add(kn,target,sg)}
  else if(kind==="plu"){const[word,target,sg]=r,terms=gp(word),products=terms.map(([x,y,c])=>c*sign(kn,x)*sign(kn,y)),idx=terms.findIndex(([x,y])=>key(x)===key(target)||key(y)===key(target));
   assert(idx>=0&&products.filter(v=>v===0).length===1&&products[idx]===0,"GP unknown");const fixed=products.filter(Boolean);assert(fixed[0]===fixed[1],"GP common sign");
   const[x,y,c]=terms[idx],factor=key(x)===key(target)?x:y,other=factor===x?y:x;assert(sign(kn,other)!==0,"GP other");
   const ori=IIRR.canon(factor)[1]*IIRR.canon(target)[1],expected=-fixed[0]*c*sign(kn,other)*ori;assert(sg===expected,"GP target sign");add(kn,target,sg)}
  else if(kind==="mesh"){const[word,ori]=r;for(const[t,sg]of mesh(kn,word,ori))add(kn,t,sg);meshes.push([word,ori])}
  else fail("geometry rule "+kind)}
 assert(JSON.stringify(meshes)===JSON.stringify(node.meshes||meshes),"mesh ledger");
 return kn}
function terminal(node,kn){const[kind,...r]=node.terminal;
 if(kind==="four"){const[t,pts]=r;assert(pts.length===4&&new Set(pts).size===4&&[...pts].every(p=>inside(kn,t,p)),"four terminal")}
 else if(kind==="area_cap"){const[t,pts,value,source]=r;assert([...pts].every(p=>inside(kn,t,p)),"cap terminal occupants");assert(eq(cap(t,sign(kn,t),source),value)&&R(value).cmp(cost(pts.length))<0,"cap terminal")}
 else if(kind==="cluster"){const[t,p,fan,others]=r;assert(inside(kn,t,p)&&others.length===2&&[...others].every(v=>inside(kn,t,v)&&inside(kn,fan,v))&&fan.includes(p)&&[...fan].filter(v=>v!==p).every(v=>t.includes(v)),"cluster terminal")}
 else if(kind==="gp"){const ss=gp(r[0]).map(([x,y,c])=>c*sign(kn,x)*sign(kn,y));assert(ss.every(Boolean)&&ss.every(v=>v===ss[0]),"GP terminal")}
 else if(kind==="mesh"){const[word,ori,tr,sg]=r,desired=mesh(kn,word,ori);assert(desired.some(([t,v])=>key(t)===key(tr)&&v*IIRR.canon(t)[1]===sg*IIRR.canon(tr)[1])&&sign(kn,tr)===-sg,"mesh terminal")}
 else fail("terminal kind")}
function relation(item,kn,meshes){const rel=item.rel,w=item.witness,[kind,...r]=rel;
 if(kind==="fan"){const[t,...fans]=r;assert(w[0]==="fan"&&w[1]===t&&inside(kn,t,w[2]),"fan witness");assert(JSON.stringify(fans)===JSON.stringify([...t].map((a,i)=>key(a+t[(i+1)%3]+w[2])).sort()),"fan parts")}
 else if(kind==="plu"){assert(w[0]==="plu","Plucker witness");const terms=gp(w[1]),ss=terms.map(([a,b,c])=>c*sign(kn,a)*sign(kn,b));assert(ss.every(Boolean)&&new Set(ss).size===2,"Plucker signs");const odd=ss.findIndex(v=>ss.filter(x=>x===v).length===1),left=terms[odd].slice(0,2).map(key).sort(),right=terms.filter((_,i)=>i!==odd).map(t=>t.slice(0,2).map(key).sort()).sort((a,b)=>a.join("|").localeCompare(b.join("|")));assert(JSON.stringify(r)===JSON.stringify([...left,...right.flat()]),"Plucker relation")}
 else if(kind==="quad"){const[a,b,c]=r,[_,hull,pts]=w;assert(w[0]==="quad"&&convex(kn,hull)&&[...pts].every(p=>inside(kn,hull,p))&&eq(c,squareCost(pts.length)),"quad witnesses");const[A,B,C,D]=hull;assert([[A+B+C,A+C+D],[A+B+D,B+C+D]].some(v=>JSON.stringify(v.map(key).sort())===JSON.stringify([a,b])),"quad diagonal")}
 else if(kind==="support"){assert(JSON.stringify(rel)===JSON.stringify(["support",key("BCE"),key("BER"),key("BCR"),"347/500"])&&JSON.stringify(w)===JSON.stringify(["right_pair_support","BCRE","S"]),"support relation")}
 else if(kind==="bary"){const[target,vs,N,ws]=r,[_,base,V,hull,weight]=w;assert(w[0]==="side_pair_weights"&&V==="S"&&hull==="CER"&&weight==="3/11"&&N===11&&JSON.stringify(ws)==="[3,3,3]","bary weights");assert(JSON.stringify(vs)===JSON.stringify([...hull].map(t=>base.includes(t)?null:[key(base+t),sign(kn,base+t)]))&&vs.filter(Boolean).every(v=>v[1]),"bary vertex signs");assert(JSON.stringify(target)===JSON.stringify(base.includes(V)?["ZERO",1]:[key(base+V),sign(kn,base+V)])&&target[1],"bary target")}
 else if(kind==="linear"){let co={},rhs="0";const plus=(t,c)=>{co[t]=(co[t]||0)+c;if(!co[t])delete co[t]};
  if(w[0]==="barycentric"){const[_,base,V,hull,side]=w;assert(V==="S"&&hull==="CER"&&["lower","upper"].includes(side),"linear bary witness");const lower=side==="lower";
   if(!base.includes(V)){assert(sign(kn,base+V)!==0,"linear bary target");plus(key(base+V),(lower?11:-11)*sign(kn,base+V))}
   for(const v of hull)if(!base.includes(v)){const sg=sign(kn,base+v);assert(sg,"linear bary vertex");plus(key(base+v),lower?(sg>0?-3:5):(sg>0?5:-3))}}
  else if(w[0]==="right_compare"){const[_,T,edge]=w;assert("RS".includes(T)&&T.length===1&&["EF","EH","AE"].includes(edge),"right comparison");assert(sign(kn,"CE"+T)===-1&&sign(kn,edge+T)===(edge==="AE"?-1:1),"right comparison signs");plus(key(edge+T),1);plus(key("CE"+T),-1)}
  else if(w[0]==="affine_quad"){const[_,word,orientation]=w;assert(word.length===4&&new Set(word).size===4&&[1,-1].includes(orientation),"affine quad witness");const[A,B,C,D]=word;for(const[t,c]of[[A+B+C,1],[A+C+D,1],[A+B+D,-1],[B+C+D,-1]]){assert(sign(kn,t),"affine quad sign");plus(key(t),orientation*c*sign(kn,t))}}
  else{assert(["mesh_ear","mesh_inner","mesh_connect"].includes(w[0])&&meshes.some(m=>m[0]===w[1]&&m[1]===w[2]),"mesh metric premise");const[A,B,C,Y,Z,X]=w[1];
   if(w[0]==="mesh_ear"){assert([A+B+Z,A+C+X,B+C+Y].map(key).includes(w[3]),"mesh ear");plus(key(A+B+C),1);plus(w[3],-1);rhs=s.mul(R("3927/500")).toString()}
   else if(w[0]==="mesh_inner"){plus(key(Y+Z+X),-1);rhs=s.mul(R("-8/5")).toString()}
   else{for(const t of[B+Y+Z,A+Z+X,C+Y+X])plus(key(t),1);rhs=s.mul(R("2427/500")).toString()}}
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
  else if(kind==="support"){const[x,y,z,c]=r,C=R(c);if(row.rule==="support_y"){assert(row.triangle===y&&row.side==="lo","support y");expect([dep("lo",x),dep("hi",z)]);raw=C.mul(one.sub(vals[1].div(vals[0])))}
   else if(row.rule==="support_z"){assert(row.triangle===z&&row.side==="lo","support z");expect([dep("lo",x),dep("hi",y)]);assert(vals[1].cmp(C)<=0,"support z nonnegative multiplier");raw=vals[0].mul(one.sub(vals[1].div(C)))}
   else{assert(row.rule==="support_x"&&row.triangle===x&&row.side==="hi","support x");expect([dep("hi",z),dep("hi",y)]);assert(vals[1].cmp(C)<0,"support x denominator");raw=C.mul(vals[0]).div(C.sub(vals[1]))}}
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