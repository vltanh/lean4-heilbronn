"use strict";
// Independent audit of the printed IIRR proof. No discovery code is imported.
function exactPacketJSON(source) {
  let at=0;
  const fail=message=>{throw Error(message+" at JSON position "+at);};
  const space=()=>{while(at<source.length&&/\s/.test(source[at]))at++;};
  function string() {
    const start=at;
    if(source[at++]!=='"')fail("Expected string");
    while(at<source.length) {
      const c=source[at++];
      if(c==='\\') { if(at>=source.length)fail("Unterminated escape"); at++; }
      else if(c==='"')return JSON.parse(source.slice(start,at));
    }
    fail("Unterminated string");
  }
  function value() {
    space();
    const c=source[at];
    if(c==='"')return string();
    if(c==='{') {
      at++;space();const out=Object.create(null);
      if(source[at]==='}') {at++;return out;}
      for(;;) {
        space();const key=string();space();
        if(Object.prototype.hasOwnProperty.call(out,key))fail("Duplicate key "+key);
        if(source[at++]!==':')fail("Expected colon");
        out[key]=value();space();
        const sep=source[at++];if(sep==='}')return out;if(sep!==',')fail("Expected comma");
      }
    }
    if(c==='[') {
      at++;space();const out=[];
      if(source[at]===']') {at++;return out;}
      for(;;) {
        out.push(value());space();
        const sep=source[at++];if(sep===']')return out;if(sep!==',')fail("Expected comma");
      }
    }
    for(const [literal,result] of [["null",null],["true",true],["false",false]]) {
      if(source.slice(at,at+literal.length)===literal) {at+=literal.length;return result;}
    }
    const match=source.slice(at).match(/^-?(?:0|[1-9][0-9]*)/);
    if(!match)fail("Invalid value");
    at+=match[0].length;
    if(/[.eE0-9]/.test(source[at]||""))fail("Use an exact rational string");
    const result=Number(match[0]);
    if(!Number.isSafeInteger(result))fail("Use a rational string for a large integer");
    return result;
  }
  const result=value();space();if(at!==source.length)fail("Trailing data");
  return result;
}
function auditN6IRRT(input) {
const state=typeof input==="string"?exactPacketJSON(input):input;
const {Q,q,constant:C,variable:V,add,sub,mul,scale,neg,eq,assert}=(() => {
 const gcd=(a,b)=>{a=a<0n?-a:a;b=b<0n?-b:b;while(b){const t=a%b;a=b;b=t;}return a;};
 class Q {
  constructor(n,d=1n){n=BigInt(n);d=BigInt(d);if(d===0n)throw Error("zero denominator");if(d<0n){n=-n;d=-d;}const g=gcd(n,d);this.n=n/g;this.d=d/g;}
  static of(v){if(v instanceof Q)return v;if(typeof v==="string"&&v.includes("/")){const [n,d]=v.split("/");return new Q(n,d);}return new Q(v);}
  add(y){y=Q.of(y);return new Q(this.n*y.d+y.n*this.d,this.d*y.d);}
  neg(){return new Q(-this.n,this.d);}
  sub(y){return this.add(Q.of(y).neg());}
  mul(y){y=Q.of(y);return new Q(this.n*y.n,this.d*y.d);}
  div(y){y=Q.of(y);return new Q(this.n*y.d,this.d*y.n);}
  pow(k){if(k<0)return new Q(this.d**BigInt(-k),this.n**BigInt(-k));return new Q(this.n**BigInt(k),this.d**BigInt(k));}
  cmp(y){y=Q.of(y);const z=this.n*y.d-y.n*this.d;return z<0n?-1:z>0n?1:0;}
  toString(){return this.d===1n?String(this.n):this.n+"/"+this.d;}
 }
 const q=x=>Q.of(x);
 const constant=x=>new Map(q(x).n===0n?[]:[["",q(x)]]);
 const variable=name=>new Map([[name,q(1)]]);
 const add=(...ps)=>{const out=new Map();for(const p of ps){for(const [m,c]of p){const z=(out.get(m)||q(0)).add(c);if(z.n===0n)out.delete(m);else out.set(m,z);}}return out;};
 const scale=(p,c)=>{c=q(c);return new Map([...p].map(([m,v])=>[m,v.mul(c)]).filter(([,v])=>v.n!==0n));};
 const neg=p=>scale(p,-1);
 const sub=(p,r)=>add(p,neg(r));
 const mul=(...ps)=>{let out=constant(1);for(const p of ps){const terms=[];for(const [m,c]of out)for(const [n,d]of p){const mon=[...m.split("*").filter(Boolean),...n.split("*").filter(Boolean)].sort().join("*");terms.push(new Map([[mon,c.mul(d)]]));}out=add(...terms);}return out;};
 const eq=(p,r)=>sub(p,r).size===0;
 const assert=(x,msg)=>{if(!x)throw Error(msg||"assertion failed");};
 return {Q,q,constant,variable,add,scale,neg,sub,mul,eq,assert};
})();

 const names="ABCEFHPQRS",vars="a b c e f h p q u v r w j k".split(" ");
 const stats={splits:0,geometry:0,area:0,deductions:0,updates:0,physical_identities:0,box_witnesses:0,endpoint_values:0,physical_factors:0,interval_steps:0,interval_lines:0,linear_leaves:0,linear_factors:0,physical_leaves:0};
 const s=q("93/1000"),rho=q("347/500"),eps=q("1037/10000"),ceiling=q("907/1000"),zero=q(0),one=q(1);
 const same=(a,b,m)=>assert(q(a).cmp(b)===0,m);
 const equal=(a,b)=>JSON.stringify(a)===JSON.stringify(b);
 const entries=o=>Object.entries(o).sort(([a],[b])=>a.localeCompare(b));
 const compareObjects=(a,b,m)=>assert(equal(entries(a),entries(b)),m);
 const validWord=(w,k)=>assert(typeof w==="string"&&w.length===k&&new Set(w).size===k&&[...w].every(x=>names.includes(x)),"distinct actual labels "+w);
 function norm(w){validWord(w,3);let parity=1;for(let i=0;i<3;i++)for(let j=i+1;j<3;j++)if(w[i]>w[j])parity=-parity;return[[...w].sort().join(""),parity];}
 const key=w=>norm(w)[0];
 const sign=(kn,w)=>{const[k,sg]=norm(w);return sg*(kn[k]||0);};
 function record(kn,w,sg){assert(sg===1||sg===-1,"orientation value");const[k,t]=norm(w),v=sg*t;assert(!kn[k]||kn[k]===v,"orientation conflict "+w);kn[k]=v;}
 const base={};
 function choose(xs,k){if(!k)return[[]];const out=[];for(let i=0;i<=xs.length-k;i++)for(const tail of choose(xs.slice(i+1),k-1))out.push([xs[i],...tail]);return out;}

 for(const t of choose([..."ABCEFH"],3))record(base,t.join(""),1);
 for(const x of "PQRS")for(const[edge,sg]of [["AB",1],["AC",1],["AH",-1],["BC",1],["BH",-1],["CH",-1]])record(base,edge+x,sg);
 for(const x of "PRS")for(const[edge,sg]of [["EF",1],["EH",1],["FH",1]])record(base,edge+x,sg);
 for(const[edge,sg]of [["EF",-1],["EH",-1],["FH",1],["AE",1],["AF",-1],["BE",1],["BF",-1],["CE",1],["CF",-1]])record(base,edge+"Q",sg);
 for(const edge of ["CE","BE"])record(base,edge+"P",1);
 for(const x of "RS")for(const edge of ["AE","AF","BE","BF","CE","CF"])record(base,edge+x,-1);
 for(const[t,sg]of [["ERS",-1],["CRS",1],["BRS",1],["EQR",1],["EQS",1]])record(base,t,sg);
 assert(Object.keys(base).length===81,"81 initial signs");compareObjects(state.initialSigns,base,"IRRT initial sign table");
 const eCap=q("897/1000"),b1=one.sub(rho.div(eCap)),c1=q("609/1000"),c0=s.mul(4),a0=s.div(c1.sub(eps)),a1=one.sub(s.div(b1)),e0=rho.div(one.sub(eps)),r0=q("23/25"),w1=eCap.sub(s.mul(3).div(one.sub(c0))),x0=s.div(one.sub(a0));
 const min=(a,b)=>a.cmp(b)<0?a:b,f1=min(c1,one.sub(s.div(one.sub(e0)))),u0=eps.add(s.div(one.sub(e0))),v0=e0.add(s.div(one.sub(eps)));
 const initialBox=[[a0,a1],[eps,b1],[c0,c1],[e0,eCap],[eps,f1],[e0,one],[x0,ceiling],[a0,ceiling],[u0,one],[v0,one],[r0,one],[a0,w1],[c0.mul(5).add(3).add(r0.mul(3)).div(11),c1.mul(3).add(8).div(11)],[e0.add(a0).mul(3).div(11),eCap.mul(5).add(w1.mul(3)).div(11)]];
 let box=initialBox;
 assert(box.every(([l,u])=>l.cmp(0)>0&&l.cmp(u)<0&&u.cmp(1)<=0),"initial box ranges");
 assert(equal(state.box,box.map(r=>r.map(String))),"initial domain box");
 const P={A:[C(0),V("a")],B:[V("b"),C(0)],C:[V("c"),C(0)],E:[C(1),V("e")],F:[V("f"),C(1)],H:[C(0),V("h")],P:[V("p"),V("q")],Q:[V("u"),V("v")],R:[V("r"),V("w")],S:[V("j"),V("k")]};
 const dcache={};
 function D(w){validWord(w,3);if(dcache[w])return dcache[w];const [p,r,t]=[...w].map(x=>P[x]);return dcache[w]=sub(mul(sub(r[0],p[0]),sub(t[1],p[1])),mul(sub(r[1],p[1]),sub(t[0],p[0])));}
 function unsigned(kn,t){const sg=sign(kn,t);assert(sg,"known actual area sign "+t);return scale(D(t),sg);}
 const checkPoly=(p,label)=>{assert(eq(p,C(0)),label);stats.physical_identities++;};
 for(const t of choose([...names],3).map(t=>t.join("")))for(const m of D(t).keys()){const vs=m?m.split("*"):[];assert(new Set(vs).size===vs.length,"multiaffine actual determinant");}
 function inside(kn,hull,p){if(hull.includes(p))return false;const orientation=sign(kn,hull.slice(0,3));return!!orientation&&[...hull].every((x,i)=>sign(kn,x+hull[(i+1)%hull.length]+p)===orientation);}
 function occupied(kn,hull,pts){assert(new Set(pts).size===pts.length&&[...pts].every(p=>names.includes(p)&&inside(kn,hull,p)),"distinct actual occupants "+hull+" / "+pts);}
 function triCost(n){assert(Number.isInteger(n)&&n>=0&&n<=3,"triangle occupant count");return[s,s.mul(3),rho,q("823/1000")][n];}
 function quadCost(n){assert(Number.isInteger(n)&&n>=1,"quadrilateral occupant count");return n===1?q("449/1000"):n===2?s.mul(8):q("93/91");}
 const evaluatedCaps=new Map();
 function cap(t,sg,source){
  validWord(t,3);assert(sg===1||sg===-1,"area cap sign");
  const memo=t+":"+sg+":"+JSON.stringify(source)+":"+box.map(r=>r.map(String)).join(";");if(evaluatedCaps.has(memo))return evaluatedCaps.get(memo);
  const type=source[0];let out;
  if(type==="unit"){assert(equal(source,["unit"]),"unit cap");out=one;}
  else if(type==="side_base"){assert(["BCR","BCS"].includes(key(t))&&source[1]===key(t).at(-1),"actual side-base cap");out=q("21/50");}
  else if(type==="side_outer"){assert(equal(source,["side_outer","CER","S"])&&key(t)==="CER","outer fan cap");out=s.mul(11).div(3);}
  else if(type==="side_fan"){assert(["CES","CRS","ERS"].includes(key(t))&&equal(source,["side_fan","CER","S",key(t)]),"inner fan cap");out=s.mul(5).div(3);}
  else if(type==="outer_bottom"){assert(key(t)==="BCR"&&equal(source,["outer_bottom","CER","S"]),"outer BCR cap");out=s.mul(3).div(2);}
  else if(type==="box"){
   const polynomial=scale(D(t),sg),ids=[...new Set([...polynomial.keys()].flatMap(m=>m?m.split("*"):[]))].map(v=>vars.indexOf(v)).sort((a,b)=>a-b);
   assert(ids.every(i=>i>=0)&&equal(ids,source[1]),"all physical box coordinates");
   const values=[];
   for(let mask=0;mask<2**ids.length;mask++){
    const point={};for(let j=0;j<ids.length;j++)point[vars[ids[j]]]=box[ids[j]][(mask>>j)&1];
    let value=zero;for(const[m,c]of polynomial){let term=c;for(const name of m?m.split("*"):[])term=term.mul(point[name]);value=value.add(term);}
    values.push(value);
   }
   out=values.reduce((a,b)=>a.cmp(b)>0?a:b);
   assert(Array.isArray(source[2])&&source[2].length===values.length,"complete box endpoints");
   values.forEach((v,i)=>same(out.sub(v),source[2][i],"endpoint difference"));
   stats.box_witnesses++;stats.endpoint_values+=values.length;
  } else throw Error("unused or unsupported cap witness "+type);
  evaluatedCaps.set(memo,out);return out;
 }

 const gpTerms=w=>{validWord(w,5);const[a,b,c,d,e]=w;return[[a+b+c,a+d+e,1],[a+b+d,a+c+e,-1],[a+b+e,a+c+d,1]];};
 const gpSeen=new Set();
 function verifyGP(w){if(gpSeen.has(w))return;checkPoly(add(...gpTerms(w).map(([a,b,k])=>scale(mul(D(a),D(b)),k))),"physical five-label identity "+w);gpSeen.add(w);}
 function geometry(node){
  const kn={...base};for(const[t,sg]of Object.entries(node.assign))record(kn,t,sg);
  assert(!node.meshes||node.meshes.length===0,"no mesh premise in fixed packet");
  for(const row of node.steps||[]){
   const [kind,...r]=row;
   if(kind==="plu"){
    const [w,target,conclusion]=r;verifyGP(w);assert(!sign(kn,target),"new Pluecker target");
    const allowed=[];
    for(const candidate of[-1,1]){
     const test={...kn};record(test,target,candidate);
     const ss=gpTerms(w).map(([a,b,k])=>k*sign(test,a)*sign(test,b));
     if(ss.every(Boolean)&&!(ss.every(sg=>sg===ss[0])))allowed.push(candidate);
    }
    assert(allowed.length===1&&allowed[0]===conclusion,"forced product-sign conclusion");record(kn,target,conclusion);
   }else if(kind==="capacity"){
    const[t,pts,p,target,conclusion,value,source]=r;occupied(kn,t,pts);
    const lim=cap(t,sign(kn,t),source);same(lim,value,"printed capacity");
    assert(pts.length===3||lim.cmp(triCost(pts.length+1))<0,"capacity threshold");
    assert(names.includes(p)&&!t.includes(p)&&!pts.includes(p),"new actual capacity point");
    const edges=[...t].map((x,i)=>x+t[(i+1)%3]+p);
    assert(edges.includes(target)&&edges.filter(x=>x!==target).every(x=>sign(kn,x)===sign(kn,t)),"two inward edges");
    assert(conclusion===-sign(kn,t),"remaining edge points outward");record(kn,target,conclusion);
   }else throw Error("unexpected geometry rule "+kind);
   stats.deductions++;
  }
  return kn;
 }
 function terminal(kn,node){
  const[kind,...r]=node.terminal;
  if(kind==="gp"){verifyGP(r[0]);const ss=gpTerms(r[0]).map(([a,b,k])=>k*sign(kn,a)*sign(kn,b));assert(ss.every(Boolean)&&ss.every(x=>x===ss[0]),"all product terms have one sign");}
  else if(kind==="area_cap"){const[t,pts,value,source]=r;occupied(kn,t,pts);same(cap(t,sign(kn,t),source),value,"terminal cap");assert(q(value).cmp(triCost(pts.length))<0,"strict occupancy contradiction");}
  else if(kind==="cluster"){const[t,p,fan,pts]=r;validWord(fan,3);assert(pts.length===2&&new Set(pts).size===2&&fan.includes(p)&&[...fan].every(x=>x===p||t.includes(x)),"cluster labels");occupied(kn,t,p+pts);occupied(kn,fan,pts);}
  else throw Error("unexpected fixed geometric terminal "+kind);
 }
 function relation(kn,item){
  const [kind,...r]=item.rel,w=item.witness;
  if(kind==="fan"){const [outer,...fans]=r;assert(w[0]==="fan"&&w[1]===outer&&inside(kn,outer,w[2]),"actual fan containment");const expected=[...outer].map((x,i)=>key(x+outer[(i+1)%3]+w[2])).sort();assert(equal(fans,expected),"actual three fans");checkPoly(sub(unsigned(kn,outer),add(...fans.map(t=>unsigned(kn,t)))),"physical fan sum");}
  else if(kind==="plu"){
   assert(w[0]==="plu","actual five-label witness");verifyGP(w[1]);
   const terms=gpTerms(w[1]),ss=terms.map(([a,b,k])=>k*sign(kn,a)*sign(kn,b));assert(ss.every(Boolean)&&new Set(ss).size===2,"fully signed product identity");
   const odd=ss.findIndex(x=>ss.filter(y=>y===x).length===1),lhs=terms[odd].slice(0,2).map(key).sort(),rhs=terms.filter((_,i)=>i!==odd).map(row=>row.slice(0,2).map(key).sort()).sort((a,b)=>a.join("|").localeCompare(b.join("|")));
   assert(equal(r,[...lhs,...rhs.flat()]),"isolated actual product");
   checkPoly(sub(mul(unsigned(kn,r[0]),unsigned(kn,r[1])),add(mul(unsigned(kn,r[2]),unsigned(kn,r[3])),mul(unsigned(kn,r[4]),unsigned(kn,r[5])))),"physical unsigned product equality");
  }else if(kind==="quad"){
   const[a,b,cost]=r,[type,hull,pts]=w;validWord(hull,4);assert(type==="quad"&&choose([...hull],3).every(x=>sign(kn,x.join(""))===1),"convex actual quadrilateral");occupied(kn,hull,pts);same(cost,quadCost(pts.length),"quadrilateral cost");const[A,B,C,D]=hull;assert([[A+B+C,A+C+D],[A+B+D,B+C+D]].some(ts=>equal(ts.map(key).sort(),[a,b])),"actual diagonal decomposition");
  }else if(kind==="bary"){
   const[target,vertices,N,weights]=r;assert(w[0]==="side_pair_weights"&&w[2]==="S"&&w[3]==="CER"&&w[4]==="3/11"&&N===11&&equal(weights,[3,3,3]),"proved side-pair weights");
   validWord(w[1],2);const line=w[1],expected=[..."CER"].map(v=>line.includes(v)?null:[key(line+v),sign(kn,line+v)]);
   assert(expected.filter(Boolean).every(x=>x[1])&&equal(vertices,expected),"signed actual vertex tests");
   const want=line.includes("S")?["ZERO",1]:[key(line+"S"),sign(kn,line+"S")];assert(want[1]&&equal(target,want),"actual target line");
  }else if(kind==="linear"){
   const[co,rhs]=r;let expected={};const addCoefficient=(t,k)=>{expected[t]=(expected[t]||0)+k;if(!expected[t])delete expected[t];};
   if(w[0]==="affine_quad"){
    const[,word,orientation]=w;validWord(word,4);assert(orientation===1||orientation===-1,"affine orientation");const[A,B,C,D]=word;
    for(const[t,k]of[[A+B+C,1],[A+C+D,1],[A+B+D,-1],[B+C+D,-1]]){assert(sign(kn,t),"known affine sign");addCoefficient(key(t),orientation*k*sign(kn,t));}
    checkPoly(add(...Object.entries(expected).map(([t,k])=>scale(unsigned(kn,t),k))),"physical four-point affine identity");
   }else{
    assert(w[0]==="barycentric"&&w[2]==="S"&&w[3]==="CER"&&["lower","upper"].includes(w[4]),"actual-line barycentric inequality");const line=w[1],lower=w[4]==="lower";validWord(line,2);
    if(!line.includes("S")){const sg=sign(kn,line+"S");assert(sg,"barycentric target sign");addCoefficient(key(line+"S"),(lower?11:-11)*sg);}
    for(const v of "CER")if(!line.includes(v)){const sg=sign(kn,line+v);assert(sg,"barycentric vertex sign");addCoefficient(key(line+v),lower?(sg>0?-3:5):(sg>0?5:-3));}
   }
   same(rhs,0,"zero linear threshold");compareObjects(co,expected,"proved linear coefficients");
  }else throw Error("unexpected fixed relation "+kind);
 }

 function rounded(value,side){
  const scaled=value.n*1000000n,den=value.d;let t=scaled/den;
  if(scaled%den!==0n&&((side==="lo"&&scaled<0n)||(side==="hi"&&scaled>0n)))t+=side==="lo"?-1n:1n;
  return new Q(t,1000000n);
 }
 function arithmetic(kn,proof){
  const records=Object.create(null);
  for(const item of proof.relations)relation(kn,item);
  for(const[id,entry]of Object.entries(proof.initial)){
   assert(!Object.prototype.hasOwnProperty.call(records,id),"fresh initial reference");
   const{triangle:t,side,value,witness:w}=entry;assert(side==="lo"||side==="hi","initial bound direction");let justified;
   if(t==="ZERO"){assert(equal(w,["zero"]),"literal zero witness");justified=zero;}
   else{
    validWord(t,3);assert(t===key(t)&&sign(kn,t),"known canonical area");
    if(side==="lo"){assert(w[0]==="cost","actual initial floor");occupied(kn,t,w[1]);justified=triCost(w[1].length);}
    else justified=cap(t,sign(kn,t),w);
   }
   same(value,justified,"initial bound value");
   records[id]={triangle:t,side,value:q(value)};
  }
  function sources(row,roles){
   assert(row.sources.length===roles.length,"source count "+row.id);
   const result=new Map();
   for(const id of row.sources){
    assert(Object.prototype.hasOwnProperty.call(records,id),"earlier immutable source "+id);const bound=records[id],role=bound.side+":"+bound.triangle;
    assert(!result.has(role),"distinct source role "+row.id);result.set(role,bound.value);
   }
   for(const[side,t]of roles)assert(result.has(side+":"+t),"source direction and area "+row.id+" "+side+":"+t);
   assert(result.size===roles.length,"complete dependency roles");
   return(side,t)=>result.get(side+":"+t);
  }
  function linearBound(row,co,rhs,allowFlip){
   assert(Object.prototype.hasOwnProperty.call(co,row.triangle)&&co[row.triangle]!==0,"linear target");
   let orientation=1;
   if(allowFlip)orientation=(row.side==="lo"?1:-1)*Math.sign(co[row.triangle]);
   else assert(row.side===(co[row.triangle]>0?"lo":"hi"),"linear bound direction");
   const coefficients=Object.fromEntries(Object.entries(co).map(([t,c])=>[t,c*orientation]));
   const others=Object.keys(coefficients).filter(t=>t!==row.triangle),roles=others.map(t=>[coefficients[t]>0?"hi":"lo",t]),get=sources(row,roles);
   let numerator=q(rhs).mul(orientation);
   for(const[side,t]of roles)numerator=numerator.sub(get(side,t).mul(coefficients[t]));
   return numerator.div(coefficients[row.triangle]);
  }
  for(const row of proof.updates){
   assert(typeof row.id==="string"&&!Object.prototype.hasOwnProperty.call(records,row.id),"fresh update reference");
   assert(row.side==="lo"||row.side==="hi","update direction");
   assert(Number.isInteger(row.relation)&&row.relation>=0&&row.relation<proof.relations.length,"earlier proved relation");
   const[kind,...r]=proof.relations[row.relation].rel;let raw;
   if(kind==="fan"){
    const[outer,...fans]=r,co={[outer]:1};for(const t of fans)co[t]=-1;
    const expected=row.triangle===outer?(row.side==="lo"?"sum":"upper_sum"):(row.side==="lo"?"lower_sub":"sub");
    assert(row.rule===expected&&Object.prototype.hasOwnProperty.call(co,row.triangle),"fan rule");
    raw=linearBound(row,co,zero,true);
   }else if(kind==="plu"){
    const products=[r.slice(0,2),r.slice(2,4),r.slice(4,6)],coefficients=[1,-1,-1],at=products.findIndex(pair=>pair.includes(row.triangle));
    assert(at>=0,"actual target product");const partner=products[at].find(t=>t!==row.triangle);assert(partner,"distinct product partner");
    const expected=at===0?(row.side==="lo"?"sumlo":"sumhi"):(row.side==="lo"?"diff":"diffhi");assert(row.rule===expected,"signed product bound rule");
    const others=products.map((pair,i)=>({pair,coefficient:-coefficients[i]/coefficients[at],i})).filter(x=>x.i!==at),roles=[];
    for(const term of others){const side=term.coefficient>0?row.side:(row.side==="lo"?"hi":"lo");for(const t of term.pair)roles.push([side,t]);}
    roles.push([row.side==="lo"?"hi":"lo",partner]);const get=sources(row,roles);let numerator=zero;
    for(const term of others){const side=term.coefficient>0?row.side:(row.side==="lo"?"hi":"lo");const[u,v]=term.pair;assert(get(side,u).cmp(0)>0&&get(side,v).cmp(0)>0,"positive source areas");numerator=numerator.add(get(side,u).mul(get(side,v)).mul(term.coefficient));}
    const denominator=get(row.side==="lo"?"hi":"lo",partner);assert(denominator.cmp(0)>0,"positive product divisor");
    raw=row.side==="hi"&&numerator.cmp(0)<=0?zero:numerator.div(denominator);
   }else if(kind==="quad"){
    assert(row.rule==="quad"&&row.side==="lo","quadrilateral arithmetic");raw=linearBound(row,{[r[0]]:1,[r[1]]:1},q(r[2]),false);
   }else if(kind==="linear"){
    assert(row.rule==="linear","linear arithmetic");raw=linearBound(row,r[0],q(r[1]),false);
   }else if(kind==="bary"){
    const[target,vertices,N,weights]=r;
    assert(row.rule==="bary_lo"||row.rule==="bary_hi","signed barycentric interval rule");
    const side=row.rule==="bary_lo"?"lo":"hi",unsignedSide=target[1]===1?side:(side==="lo"?"hi":"lo");
    assert(row.triangle===target[0]&&row.side===unsignedSide,"signed target conversion");
    const roles=vertices.filter(Boolean).map(([t,sg])=>[sg===1?side:(side==="lo"?"hi":"lo"),t]),get=sources(row,roles);
    const values=vertices.map(pair=>{if(!pair)return zero;const[t,sg]=pair;return get(sg===1?side:(side==="lo"?"hi":"lo"),t).mul(sg);});
    const extreme=values.reduce((a,b)=>side==="lo"?(a.cmp(b)<0?a:b):(a.cmp(b)>0?a:b)),remainder=N-weights.reduce((a,b)=>a+b,0);
    assert(N>0&&remainder>=0,"barycentric remainder");
    raw=values.reduce((sum,v,i)=>sum.add(v.mul(weights[i])),extreme.mul(remainder)).div(N).mul(target[1]);
   }else throw Error("unsupported fixed arithmetic "+kind);
   same(raw,row.exact,"printed exact scalar expression "+row.id);
   same(rounded(raw,row.side),row.value,"exact outward rounding "+row.id);
   const value=q(row.value);assert(row.side!=="lo"||row.triangle==="ZERO"||value.cmp(0)>0,"positive retained area floor");
   records[row.id]={triangle:row.triangle,side:row.side,value};stats.updates++;
  }
  const low=records[proof.end.lower],high=records[proof.end.upper];
  assert(low&&high&&low.side==="lo"&&high.side==="hi"&&low.triangle===proof.end.triangle&&high.triangle===proof.end.triangle&&low.value.cmp(high.value)>0,"strict final area contradiction");
 }

 function verifiedGeometry(g,assign){
  const kn=geometry({assign,steps:g.steps,meshes:g.meshes});compareObjects(kn,g.kn,"printed geometry conclusion");return kn;
 }
 function polyTerms(terms){let p=C(0);const seen=new Set();for(const[ids,c]of terms){assert(Array.isArray(ids)&&ids.every(i=>Number.isInteger(i)&&i>=0&&i<vars.length)&&new Set(ids).size===ids.length,"physical multiaffine term");const names=ids.map(i=>vars[i]),m=names.slice().sort().join("*");assert(!seen.has(m),"duplicate physical monomial");seen.add(m);p=add(p,mul(C(c),...names.map(V)));}return p;}
 const vector=p=>[...new Set([...p.keys()].flatMap(m=>m?m.split("*"):[]))];
 function valueAt(p,point){let z=zero;for(const[m,c]of p){let v=c;for(const n of m?m.split("*"):[])v=v.mul(point[n]);z=z.add(v);}return z;}
 const maximum=xs=>xs.reduce((a,b)=>a.cmp(b)>0?a:b),minimum=xs=>xs.reduce((a,b)=>a.cmp(b)<0?a:b);
 function initialValue(entry,kn){
  const{triangle:t,side,witness:w}=entry;assert(["lo","hi"].includes(side),"initial scalar direction");
  if(t==="ZERO"){assert(equal(w,["zero"]),"zero source");return zero;}
  assert(key(t)===t&&sign(kn,t),"initial canonical area");
  if(side==="lo"){assert(w[0]==="cost","occupancy source");occupied(kn,t,w[1]);return triCost(w[1].length);}
  return cap(t,sign(kn,t),w);
 }
 function physicalFactor(f,record,kn){
  const[type,...a]=f.source;let expected;
  if(type==="area_initial"){const[t,side,bound,witness]=a,v=initialValue({triangle:t,side,witness},kn);same(bound,v,"physical area source");expected=side==="lo"?sub(unsigned(kn,t),C(v)):sub(C(v),unsigned(kn,t));}
  else if(type==="relation"){const item=record.relations[a[0]];assert(item,"retained physical relation");relation(kn,item);const[r,...tail]=item.rel;
   if(r==="quad")expected=sub(add(unsigned(kn,tail[0]),unsigned(kn,tail[1])),C(tail[2]));
   else{assert(r==="linear","affine physical relation");expected=sub(add(...Object.entries(tail[0]).map(([t,c])=>scale(unsigned(kn,t),c))),C(tail[1]));}
  }else if(type==="fixed"){
   const v=Object.fromEntries(vars.map(x=>[x,V(x)])),I=C(1);
   const fixed={
    h_e:sub(v.h,v.e),c_f:sub(v.c,v.f),e_a:sub(v.e,v.a),f_b:sub(v.f,v.b),
    side_support:sub(mul(v.e,sub(I,v.b)),C(rho)),
    lower_contacts:sub(mul(v.h,v.c),C(s.mul(4))),
    top_budget:sub(mul(sub(I,v.e),sub(I,v.f)),C(s)),
    inner_x_lower:sub(scale(v.j,11),add(scale(v.c,5),scale(v.r,3),C(3))),
    inner_x_upper:sub(add(scale(v.c,3),scale(v.r,3),C(5)),scale(v.j,11)),
    inner_y_lower:sub(scale(v.k,11),add(scale(v.e,3),scale(v.w,3))),
    inner_y_upper:sub(add(scale(v.e,5),scale(v.w,3)),scale(v.k,11))
   };assert(fixed[a[0]],"known fixed physical inequality");expected=fixed[a[0]];
  }else throw Error("unsupported physical source");
  const literal=polyTerms(f.terms);checkPoly(sub(literal,expected),"literal physical factor");stats.physical_factors++;return literal;
 }
 function lines(p,target,low,high){
  const rest=vector(p).filter(v=>v!==target),point={...low},pairs=new Map();
  for(let mask=0;mask<2**rest.length;mask++){rest.forEach((v,i)=>point[v]=(mask&(1<<i))?high[v]:low[v]);point[target]=zero;const intercept=valueAt(p,point);point[target]=one;const slope=valueAt(p,point).sub(intercept);pairs.set(slope+","+intercept,[slope,intercept]);}
  return [...pairs.values()];
 }
 function interval(row,polys,low,high,terminal=false){
  const p=polys.get(String(row.factor)),target=row.target;assert(p&&vars.includes(target)&&vector(p).includes(target),"actual interval factor");assert(row.old.length===2,"old interval dimension");same(row.old[0],low[target],"old lower");same(row.old[1],high[target],"old upper");
  const got=lines(p,target,low,high),repr=rs=>rs.map(r=>r.map(v=>q(v).toString()).join(",")).sort();assert(equal(repr(got),repr(row.lines)),"complete endpoint lines");stats.interval_lines+=got.length;
  const intervals=[];for(const[A,B]of got){let l=low[target],h=high[target];if(A.cmp(0)>0)l=maximum([l,B.neg().div(A)]);else if(A.cmp(0)<0)h=minimum([h,B.neg().div(A)]);else if(B.cmp(0)<0)continue;if(l.cmp(h)<=0)intervals.push([l,h]);}
  if(terminal){assert(intervals.length===0,"empty interval terminal");return;}
  assert(intervals.length>0&&row.raw.length===2&&row.new.length===2,"nonterminal feasible interval");
  const raw=[minimum(intervals.map(x=>x[0])),maximum(intervals.map(x=>x[1]))],next=[maximum([low[target],rounded(raw[0],"lo")]),minimum([high[target],rounded(raw[1],"hi")])];
  raw.forEach((v,i)=>same(v,row.raw[i],"exact interval hull"));next.forEach((v,i)=>same(v,row.new[i],"rounded interval hull"));assert(next[0].cmp(next[1])<=0,"ordered refined endpoints");[low[target],high[target]]=next;stats.interval_steps++;
 }
 function physical(row,assign){
  assert(equal(row.box,initialBox.map(r=>r.map(String))),"physical initial domain");box=initialBox;
  const kn=verifiedGeometry(row.geometry,assign);assert(!row.geometry.terminal,"physical context not already terminal");
  const polys=new Map(Object.entries(row.factors).map(([i,f])=>[i,physicalFactor(f,row,kn)]));
  const low=Object.fromEntries(vars.map((v,i)=>[v,box[i][0]])),high=Object.fromEntries(vars.map((v,i)=>[v,box[i][1]]));
  for(const step of row.trace.steps)interval(step,polys,low,high);
  vars.forEach((v,i)=>{same(row.trace.low[i],low[v],"physical final lower");same(row.trace.high[i],high[v],"physical final upper");});
  if(row.trace.contradiction)interval(row.trace.contradiction,polys,low,high,true);
  return vars.map(v=>[low[v],high[v]]);
 }
 function linearCertificate(data,kn){
  const records={};for(const[id,b]of Object.entries(data.initial)){assert(!records[id],"initial linear ID");const value=initialValue(b,kn);same(value,b.value,"linear initial value");records[id]={...b,value};}
  for(const item of Object.values(data.relations))relation(kn,item);
  const cert=data.certificate,proved=new Map();
  function bound(w){const b=records[w.ref];assert(b&&b.triangle===w.triangle&&b.side===w.side,"immutable affine endpoint");same(w.value,b.value,"affine endpoint value");return b.value;}
  function normal(co){return Object.fromEntries(Object.entries(co).filter(([,v])=>q(v).cmp(0)).map(([t,v])=>[t,q(v).toString()]).sort(([a],[b])=>a.localeCompare(b)));}
  function acc(co,t,v){co[t]=(co[t]||zero).add(v);}
  for(const f of cert.factors){
   assert(!proved.has(f.index),"distinct selected factor");const o=f.origin,item=data.relations[o.relation];assert(item,"linear relation witness");const[k,...r]=item.rel,co={};let constant=zero;
   if(o.kind==="fan"){assert(k==="fan"&&[1,-1].includes(o.direction),"fan affine direction");acc(co,r[0],q(o.direction));for(const t of r.slice(1))acc(co,t,q(-o.direction));}
   else if(o.kind==="linear"){assert(k==="linear","affine relation kind");for(const[t,c]of Object.entries(r[0]))acc(co,t,q(c));constant=q(r[1]).neg();}
   else if(o.kind==="product_linear_envelope"){
    assert(k==="plu"&&[1,-1].includes(o.orientation)&&o.products.length===3,"product identity orientation");const terms=[[1,r[0],r[1]],[-1,r[2],r[3]],[-1,r[4],r[5]]];
    for(let j=0;j<3;j++){const[coefficient,X,Y]=terms[j],p=o.products[j],sg=coefficient*o.orientation,type=sg>0?"upper":"lower";assert(p.sign===sg&&p.X===X&&p.Y===Y&&p.type===type&&[0,1].includes(p.choice),"exact product-envelope choice");
     let xside,yside;if(type==="lower")xside=yside=p.choice?"hi":"lo";else{xside=p.choice?"lo":"hi";yside=p.choice?"hi":"lo";}
     assert(p.bounds.length===2,"product endpoint count");const bx=p.bounds.find(b=>b.triangle===X&&b.side===xside),by=p.bounds.find(b=>b.triangle===Y&&b.side===yside);assert(bx&&by,"envelope endpoint roles");const x=bound(bx),y=bound(by);acc(co,Y,x.mul(sg));acc(co,X,y.mul(sg));constant=constant.sub(x.mul(y).mul(sg));
    }
   }else throw Error("unretained affine factor "+o.kind);
   assert(equal(normal(co),normal(f.coefficients)),"affine factor coefficient expansion");same(constant,f.constant,"affine factor constant");proved.set(f.index,{co,constant});stats.linear_factors++;
  }
  const seen=new Set(),sum={};let constant=zero;
  for(const[index,weight]of cert.weights){assert(!seen.has(index)&&proved.has(index),"selected weight index");seen.add(index);assert(/^[1-9][0-9]*$/.test(weight),"positive integer multiplier");const w=q(weight),f=proved.get(index);constant=constant.add(f.constant.mul(w));for(const[t,c]of Object.entries(f.co))acc(sum,t,c.mul(w));}
  assert(seen.size===proved.size,"unweighted selected factor");assert(equal(normal(sum),normal(cert.sum.coefficients)),"weighted affine expansion");same(constant,cert.sum.constant,"weighted constant");
  let upper=constant;for(const[t,c0]of Object.entries(normal(sum))){const c=q(c0),interval=cert.box[t];assert(interval&&interval.lo.triangle===t&&interval.hi.triangle===t&&interval.lo.side==="lo"&&interval.hi.side==="hi","weighted box endpoints");const lo=bound(interval.lo),hi=bound(interval.hi);assert(lo.cmp(hi)<=0,"ordered source bounds");upper=upper.add(c.mul(c.cmp(0)>0?hi:lo));}
  assert(sameSet(Object.keys(cert.box),Object.keys(normal(sum))),"complete weighted endpoint list");same(upper,cert.upper,"exact weighted upper bound");assert(upper.cmp(0)<0,"strict linear contradiction");stats.linear_leaves++;
 }
 function sameSet(a,b){return a.length===b.length&&new Set(a).size===a.length&&a.every(x=>b.includes(x));}

 assert(state.format==="n6-irrt-fixed-v1"&&state.hypotheses.locations==="IRRT"&&state.hypotheses.labels===names&&equal(state.hypotheses.variables,vars),"IRRT theorem");
 same(state.hypotheses.s,s,"IRRT threshold");
 const nodes=new Map(state.nodes.map(n=>[n.id,n])),seen=new Set(),pending=[["r",{}]];
 assert(nodes.size===state.nodes.length,"unique IRRT node IDs");
 while(pending.length){
  const[id,assign]=pending.pop(),n=nodes.get(id);assert(n&&!seen.has(id),"complete binary tree");seen.add(id);compareObjects(n.assign,assign,"actual-sign branch ancestry");
  if(n.kind==="split"){validWord(n.triangle,3);assert(!Object.keys(assign).some(t=>key(t)===key(n.triangle)),"new case determinant");stats.splits++;pending.push([id+"m",{...assign,[n.triangle]:-1}],[id+"p",{...assign,[n.triangle]:1}]);continue;}
  box=initialBox;
  if(n.kind==="geometry"){const kn=verifiedGeometry(n.geometry,assign);terminal(kn,{terminal:n.geometry.terminal});stats.geometry++;continue;}
  const refined=physical(n.physical,assign);
  if(n.kind==="physical"){assert(n.physical.trace.contradiction,"physical terminal required");stats.physical_leaves++;continue;}
  assert(!n.physical.trace.contradiction,"earlier terminal source");
  assert(n.refinedBox.length===vars.length&&refined.every((r,i)=>n.refinedBox[i].length===2&&r.every((v,j)=>v.cmp(n.refinedBox[i][j])===0)),"refined scope box");box=refined;
  const kn=verifiedGeometry(n.geometry,assign);assert(!n.geometry.terminal,"numeric leaf has geometric terminal");
  if(n.kind==="area"){arithmetic(kn,n.proof);stats.area++;}
  else{assert(n.kind==="linear","known terminal kind");linearCertificate(n.linear,kn);}
 }
 assert(seen.size===nodes.size,"all fixed nodes reached");
 const leaves=stats.geometry+stats.area+stats.physical_leaves+stats.linear_leaves;
 assert(leaves===stats.splits+1&&stats.splits===12&&leaves===13&&stats.interval_steps===3278,"complete IRRT coverage");
 return{status:"PASS",...stats,leaves,initial_signs:Object.keys(base).length,complete:true};
}

function readN6IRRTTables(index,files){
 const need=(b,m)=>{if(!b)throw Error(m);},J=exactPacketJSON,N=s=>{need(/^(0|[1-9][0-9]*)$/.test(s),"integer field");const n=Number(s);need(Number.isSafeInteger(n),"safe integer");return n;},list=s=>s==="none"?[]:s.split(", ");
 function section(doc,title,level){const lines=doc.split(/\r?\n/),mark="#".repeat(level)+" "+title,start=lines.indexOf(mark);need(start>=0,"missing section "+title);let end=start+1;for(;end<lines.length;end++){const m=/^(#+) /.exec(lines[end]);if(m&&m[1].length<=level)break;}return lines.slice(start+1,end).join("\n");}
 function rows(doc,head){const lines=doc.split(/\r?\n/).filter(l=>l.trim().startsWith("|")),cells=l=>l.trim().split("|").slice(1,-1).map(x=>{x=x.trim();return x.startsWith("`")&&x.endsWith("`")?x.slice(1,-1):x;});need(lines.length>=2,"table missing");need(JSON.stringify(cells(lines[0]))===JSON.stringify(head),"table columns");need(cells(lines[1]).every(x=>/^:?-+:?$/.test(x)),"table separator");return lines.slice(2).map(l=>{const r=cells(l);need(r.length===head.length,"table width");return r;});}
 function props(doc){const out={};for(const[k,v]of rows(doc,["Property","Value"])){need(!(k in out),"duplicate property");out[k]=v;}return out;}
 function signs(doc){const out={};for(const[t,s]of rows(doc,["Triple","Sign"])){need(!out[t]&&["+","-"].includes(s),"sign table");out[t]=s==="+"?1:-1;}return out;}
 const m=props(section(index,"Metadata",2)),p={format:m.Format,status:m.Status,hypotheses:{s:m.Threshold,locations:m.Locations,labels:m["Actual labels"],variables:list(m.Variables)},nodes:[]},vars=p.hypotheses.variables;
 const b=rows(section(index,"Original coordinate box",2),["Coordinate","Lower","Upper"]);need(b.length===vars.length&&b.every((r,i)=>r[0]===vars[i]),"initial coordinates");p.box=b.map(r=>r.slice(1));p.initialSigns=signs(section(index,"Initial actual signs",2));
 function assumptions(s){const out={};for(const t of list(s)){need(/^[A-Z]{3}[+-]$/.test(t)&&!(t.slice(0,3)in out),"case assumption");out[t.slice(0,3)]=t[3]==="+"?1:-1;}return out;}
 function relations(doc){const out={};for(const[id,kind,data,w]of rows(doc,["Relation","Rule","Exact data","Geometric witness"])){N(id);need(!(id in out),"relation IDs");out[id]={rel:[kind,...J(data)],witness:J(w)};}return out;}
 function initial(doc){const out={};for(const[id,triangle,side,value,w]of rows(doc,["Bound","Triangle","Direction","Value","Exact witness"])){need(!(id in out),"initial bound IDs");out[id]={triangle,side,value,witness:J(w)};}return out;}
 function geometry(doc,title){const text=section(doc,title,2),steps=[];for(const[id,kind,args]of rows(section(text,"Deductions",3),["Step","Rule","Exact witness"])){need(N(id)===steps.length,"deduction order");steps.push([kind,...J(args)]);}
 const terminal=rows(section(text,"Geometric terminal",3),["Rule","Exact witness"]);need(terminal.length<=1,"geometry terminal count");return{kn:signs(section(text,"Known signs",3)),steps,meshes:[],terminal:terminal.length?[terminal[0][0],...J(terminal[0][1])]:null};}
 function lines(s){return s.split("; ").map(t=>{const m=/^\(([^,]+), ([^)]+)\)$/.exec(t);need(m,"endpoint line");return[m[1],m[2]];});}
 function polynomial(s){if(s==="0")return[];return s.split(" + ").map(t=>{const a=t.split(" * "),c=a.shift();return[a.map(v=>{const i=vars.indexOf(v);need(i>=0,"polynomial coordinate");return i;}),c];});}
 function affine(s){const a=s.split(" + "),constant=a.shift(),coefficients={};for(const t of a){const parts=t.split(" * ");need(parts.length===2&&!(parts[1]in coefficients),"affine term");coefficients[parts[1]]=parts[0];}return{constant,coefficients};}
 const names=new Set();
 for(const[id,kind,given,split,file]of rows(section(index,"Exhaustive case tree",2),["Node","Kind","Actual-sign assumptions","Split","Table file"])){
  need(!names.has(id),"duplicate tree ID");names.add(id);const n={id,kind,assign:assumptions(given)};p.nodes.push(n);
  if(kind==="split"){need(split!=="none"&&file==="none","split metadata");n.triangle=split;continue;}
  need(split==="none"&&file==="case_"+id+".md"&&typeof files[file]==="string","case table");const doc=files[file],head=props(doc.split("\n## ")[0]);need(head.Node===id&&head.Kind===kind&&head["Actual-sign assumptions"]===given,"case metadata");
  const first=geometry(doc,"Geometry in original box");
  if(kind==="geometry"){n.geometry=first;continue;}
  const physical=section(doc,"Physical refinement",2),br=rows(section(physical,"Coordinate box",3),["Coordinate","Original lower","Original upper","Final lower","Final upper"]);need(br.length===vars.length&&br.every((r,i)=>r[0]===vars[i]),"physical coordinate order");
  const ph={box:br.map(r=>r.slice(1,3)),geometry:first,relations:relations(section(physical,"Physical relations",3)),factors:{},trace:{low:br.map(r=>r[3]),high:br.map(r=>r[4]),steps:[]}};
  for(const[id,name,source,polynomialText]of rows(section(physical,"Physical factors",3),["Factor","Name","Nonnegativity premise","Polynomial"])){N(id);need(!(id in ph.factors),"factor ID");ph.factors[id]={name,source:J(source),terms:polynomial(polynomialText)};}
  for(const row of rows(section(physical,"Coordinate updates",3),["Step","Factor","Target","Old lower","Old upper","Exact lower","Exact upper","Rounded lower","Rounded upper","Endpoint lines"])){
   const[i,factor,target,l,h,a,b,L,H,ls]=row;need(N(i)===ph.trace.steps.length,"coordinate update order");ph.trace.steps.push({factor:N(factor),target,old:[l,h],lines:lines(ls),raw:[a,b],new:[L,H]});}
  const terminal=rows(section(physical,"Interval contradiction",3),["Factor","Target","Old lower","Old upper","Endpoint lines"]);need(terminal.length<=1,"interval terminal count");if(terminal.length){const[factor,target,l,h,ls]=terminal[0];ph.trace.contradiction={factor:N(factor),target,old:[l,h],lines:lines(ls)};}n.physical=ph;
  if(kind==="physical")continue;
  n.refinedBox=br.map(r=>r.slice(3,5));n.geometry=geometry(doc,"Geometry in refined box");
  if(kind==="area"){
   const scalar=section(doc,"Scalar contradiction",2),rr=relations(section(scalar,"Scalar relations",3));need(Object.keys(rr).every((x,i)=>Number(x)===i),"scalar relation order");
   const proof={initial:initial(section(scalar,"Initial scalar bounds",3)),relations:Object.values(rr),updates:[],end:null};
   for(const[id,rel,rule,triangle,side,exact,value,refs]of rows(section(scalar,"Scalar updates",3),["Bound","Relation","Rule","Triangle","Direction","Exact value","Rounded value","Earlier references"]))proof.updates.push({id,relation:N(rel),rule,side,triangle,value,sources:list(refs),exact});
   const end=rows(section(scalar,"Scalar terminal",3),["Triangle","Lower reference","Upper reference"]);need(end.length===1,"scalar terminal");proof.end={triangle:end[0][0],lower:end[0][1],upper:end[0][2]};n.proof=proof;
  }else{
   need(kind==="linear","leaf kind");const text=section(doc,"Positive linear combination",2),data={initial:initial(section(text,"Initial linear bounds",3)),relations:relations(section(text,"Linear source relations",3)),certificate:{weights:[],factors:[],sum:null,upper:null,box:{}}},cert=data.certificate;
   for(const[id,weight,source,expression]of rows(section(text,"Affine factors and positive weights",3),["Factor","Weight","Exact source witness","Affine expression"])){const idx=N(id),a=affine(expression);cert.weights.push([idx,weight]);cert.factors.push({index:idx,coefficients:a.coefficients,constant:a.constant,origin:J(source)});}
   const sum=rows(section(text,"Expanded sum",3),["Constant","Coefficients","Exact upper bound"]);need(sum.length===1,"expanded weighted sum");cert.sum={constant:sum[0][0],coefficients:J(sum[0][1])};cert.upper=sum[0][2];
   for(const[t,lr,lv,ur,uv]of rows(section(text,"Endpoint calculation",3),["Triangle","Lower reference","Lower value","Upper reference","Upper value"])){need(!(t in cert.box),"endpoint target");cert.box[t]={lo:{triangle:t,side:"lo",ref:lr,value:lv},hi:{triangle:t,side:"hi",ref:ur,value:uv}};}n.linear=data;
  }
 }
 return p;
}
function irrtTableFiles(index){
 return [...index.matchAll(/\| (case_r[mp]*\.md) \|/g)].map(m=>m[1]);
}
if(typeof module!=="undefined"&&module.exports){
 module.exports={auditN6IRRT,readN6IRRTTables,irrtTableFiles};
 if(typeof require==="function"&&require.main===module){
  const fs=require("fs"),path=require("path");
  const indexPath=process.argv[2]||path.join(__dirname,"n6_irrt_tables","INDEX.md");
  const index=fs.readFileSync(indexPath,"utf8"),files={};
  for(const file of irrtTableFiles(index))files[file]=fs.readFileSync(path.join(path.dirname(indexPath),file),"utf8");
  console.log(JSON.stringify(auditN6IRRT(readN6IRRTTables(index,files))));
 }
}
