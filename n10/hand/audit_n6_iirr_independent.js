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
const sidePairManuscripts = {
 IIRR: {version: 2, caps: 65, leaves: 128, area: 83, deductions: 3281, updates: 13957},
 BIRR: {version: 1, caps: 68, leaves: 61, area: 38, deductions: 1771, updates: 7948},
};

function verifyN6IIRRIndependent(input, family = "IIRR") {
const manuscript = sidePairManuscripts[family];
if (!manuscript) throw Error("unknown side-pair domain");
const lowerPoint = family === "BIRR";

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
 const stats={splits:0,geometry:0,area:0,deductions:0,updates:0,physical_identities:0,box_witnesses:0,endpoint_values:0};
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
 for(const x of "PQRS")for(const [edge,sg] of [["AB",1],["AC",1],["AH",-1],["BC",1],["BH",-1],["CH",lowerPoint && x === "P" ? 1 : -1],["EF",1],["EH",1],["FH",1]])record(base,edge+x,sg);
 for(const x of "PQ")for(const edge of ["CE","BE"])record(base,edge+x,1);
 for(const x of "RS")for(const edge of ["AE","AF","BE","BF","CE","CF"])record(base,edge+x,-1);
 for(const [t,sg]of [["HPQ",lowerPoint ? 1 : -1],["ERS",-1],["CRS",1],["BRS",1]])record(base,t,sg);
 if(lowerPoint)record(base,"CPQ",-1);
 assert(Object.keys(base).length===(lowerPoint?77:76),"complete initial signs");
 if(state.base)compareObjects(state.base,base,"fixed initial sign table");
 const b1=one.sub(rho.div(ceiling)),c1=q("77/125"),c0=s.mul(lowerPoint ? "1457/250" : 4),a0=s.div(c1.sub(eps)),a1=one.sub(s.div(b1)),e0=rho.div(one.sub(eps)),r0=q("183/200"),w1=ceiling.sub(s.mul(3).div(one.sub(c0))),x0=s.div(one.sub(a0));
 const box=[[a0,a1],[eps,b1],[c0,c1],[e0,ceiling],[eps,c1],[e0,one],[x0,ceiling],[a0,ceiling],[x0,ceiling],[a0,ceiling],[r0,one],[a0,w1],[c0.mul(5).add(3).add(r0.mul(3)).div(11),c1.mul(3).add(8).div(11)],[e0.add(a0).mul(3).div(11),ceiling.mul(5).add(w1.mul(3)).div(11)]];
 if (lowerPoint) {
  const p0 = s.mul(c1.add(eps)).div(c1.sub(eps));
  const q0 = s.mul(one.add(a0)).div(c1.mul(one.sub(a0)));
  const sum = one.sub(s.div(c1));
  box[5] = [c0.div(c1), one];
  box[6] = [p0, sum.sub(q0)];
  box[7] = [q0, sum.sub(p0)];
 }
 assert(box.every(([l,u])=>l.cmp(0)>0&&l.cmp(u)<0&&u.cmp(1)<=0),"proved closed box order");
 if(state.box)assert(equal(state.box,box.map(b=>b.map(String))),"fixed coordinate box");
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
  const memo=t+":"+sg+":"+JSON.stringify(source);if(evaluatedCaps.has(memo))return evaluatedCaps.get(memo);
  const type=source[0];let out;
  if(type==="side_outer"){assert(equal(source,["side_outer","CER","S"])&&key(t)==="CER","outer fan cap");out=s.mul(11).div(3);}
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
 if(state.capCatalogue){assert(state.capCatalogue.length===manuscript.caps,"complete published cap catalogue");for(const c of state.capCatalogue)same(cap(c.t,c.sg,c.source),c.value,"printed catalogue cap");}
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
   }else if (lowerPoint && w[0] === "right_compare") {
    const edge = w[2];
    assert(equal(w, ["right_compare", "R", edge]) && ["EF", "EH"].includes(edge), "actual outer side comparison");
    const triangle = edge + "R";
    assert(sign(kn, triangle) === 1 && sign(kn, "CER") === -1, "actual side orientations");
    const clearance = sub(unsigned(kn, triangle), unsigned(kn, "CER"));
    const horizontal = sub(C(1), V("r")), vertical = sub(V("e"), V("w"));
    const remainder = edge === "EF" ? add(horizontal, mul(sub(V("c"), V("f")), vertical))
                                    : add(mul(V("h"), horizontal), mul(V("c"), vertical));
    checkPoly(sub(clearance, remainder), "side comparison with nonnegative remainder");
    expected = {[triangle]: 1, CER: -1};
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
   same(rounded(raw,row.side),row.value,"exact outward rounding "+row.id);
   const value=q(row.value);assert(row.side!=="lo"||row.triangle==="ZERO"||value.cmp(0)>0,"positive retained area floor");
   records[row.id]={triangle:row.triangle,side:row.side,value};stats.updates++;
  }
  const low=records[proof.end.lower],high=records[proof.end.upper];
  assert(low&&high&&low.side==="lo"&&high.side==="hi"&&low.triangle===proof.end.triangle&&high.triangle===proof.end.triangle&&low.value.cmp(high.value)>0,"strict final area contradiction");
 }
 const seen=new Set(),pending=[["r",{}]];
 assert(state.queue.length===0,"complete fixed frontier");
 while(pending.length){
  const[id,assign]=pending.pop();assert(!seen.has(id),"unique tree node");seen.add(id);const node=state.nodes[id];assert(node,"complete sign tree "+id);
  compareObjects(assign,node.assign,"literal branch ancestry "+id);
  if(node.kind==="split"){
   validWord(node.triangle,3);assert(!Object.keys(assign).some(t=>key(t)===key(node.triangle)),"split a new actual determinant");stats.splits++;
   pending.push([id+"m",{...assign,[node.triangle]:-1}],[id+"p",{...assign,[node.triangle]:1}]);
  }else{
   const kn=geometry(node);
   if(node.kind==="geometry"){terminal(kn,node);stats.geometry++;}
   else{assert(node.kind==="area","closed area leaf");arithmetic(kn,node.proof);stats.area++;}
  }
 }
 assert(seen.size===Object.keys(state.nodes).length,"no unreachable proof nodes");
 assert(stats.geometry+stats.area===stats.splits+1,"full binary coverage");
 assert(stats.splits===manuscript.leaves-1&&stats.geometry===manuscript.leaves-manuscript.area&&stats.area===manuscript.area&&stats.deductions===manuscript.deductions&&stats.updates===manuscript.updates,"fixed manuscript totals");
 return{status:"PASS",...stats,complete:true,initial_signs:Object.keys(base).length,unique_physical_caps:evaluatedCaps.size,source:"independent coordinate polynomials and immutable arithmetic; no discovery import"};
}
if(typeof module!=="undefined"&&module.exports)module.exports={verifyN6IIRRIndependent,exactPacketJSON};

function readN6IIRRIndependent(geometryMarkdown,areaMarkdown,family="IIRR"){
 const manuscript=sidePairManuscripts[family];
 const requireFact=(x,m)=>{if(!x)throw Error("IIRR manuscript: "+m);};
 const sections=(text,level)=>{const rows=text.split(/\r?\n/),out=new Map(),prefix="#".repeat(level)+" ";let current=null;for(const line of rows){if(line.startsWith(prefix)&&line[level+1]!=="#"){current=line.slice(prefix.length);requireFact(!out.has(current),"duplicate section "+current);out.set(current,[]);}else if(current)out.get(current).push(line);}return out;};
 const table=lines=>{const all=lines.filter(l=>l.startsWith("|"));requireFact(all.length>=2,"missing table");return all.slice(2).filter(l=>l.trim()).map(l=>{requireFact(l.endsWith("|"),"closed table row");return l.slice(1,-1).split("|").map(v=>v.trim());});};
 const integer=s=>{requireFact(/^-?\d+$/.test(s),"integer token");const n=Number(s);requireFact(Number.isSafeInteger(n),"safe integer token");return n;};
 const g=sections(geometryMarkdown,2),a=sections(areaMarkdown,2),caps=new Map(),state={nodes:Object.create(null),queue:[],done:true},leafMap=new Map();
 for(const row of table(g.get("Fixed domain")||[])){requireFact(row.length===2&&["version","box","base"].includes(row[0])&&!Object.prototype.hasOwnProperty.call(state,row[0]),"fixed domain field");state[row[0]]=exactPacketJSON(row[1]);}
 requireFact(state.version===manuscript.version&&state.box&&state.base,"complete fixed domain");
 for(const row of table(g.get("Cap catalogue")||[])){
  requireFact(row.length===6,"cap column count");const[id,t,sg,value,method,idx]=row;requireFact(/^C\d{3}$/.test(id)&&!caps.has(id),"unique cap identifier");let source;
  if(method==="box")source=["box",exactPacketJSON(idx),[]];
  else if(method==="side_outer"||method==="outer_bottom")source=[method,"CER","S"];
  else{requireFact(method==="side_fan","proved cap method");source=[method,"CER","S",t];}
  requireFact(method==="box"||idx==="-","no unused cap indices");
  caps.set(id,{t,sg:integer(sg),value,source});
 }
 requireFact(caps.size===manuscript.caps,"all caps");
 for(const row of table(g.get("Nonnegative box-corner differences")||[])){
  requireFact(row.length===3,"corner column count");const[id,index,value]=row,cap=caps.get(id);
  requireFact(cap&&cap.source[0]==="box"&&integer(index)===cap.source[2].length,"ordered complete cap corners");cap.source[2].push(value);
 }
 for(const row of table(g.get("Complete binary tree")||[])){
  requireFact(row.length===3,"tree column count");const[id,kind,data]=row;
  requireFact(/^r[mp]*$/.test(id)&&!Object.prototype.hasOwnProperty.call(state.nodes,id),"unique binary node");
  if(kind==="split")state.nodes[id]={kind,triangle:data};
  else{requireFact(["area","geometry"].includes(kind)&&new RegExp("^"+(kind==="area"?"A":"G")+"\\d{3}$").test(data)&&!leafMap.has(data),"distinct typed leaf");state.nodes[id]={kind,steps:[],meshes:[]};leafMap.set(data,id);}
 }
 requireFact(state.nodes.r&&leafMap.size===manuscript.leaves,"complete leaf catalogue");
 const usedGeometry=new Set(),usedAreas=new Set();
 for(const[title,lines]of g){
  if(!title.startsWith("Leaf "))continue;const code=title.slice(5),id=leafMap.get(code);requireFact(id&&!usedGeometry.has(code),"referenced geometry section");usedGeometry.add(code);const node=state.nodes[id];
  const prefix=family==="BIRR"?"Path: ":"Node: ";
   const declared=lines.find(l=>l.startsWith(prefix));requireFact(declared&&declared.startsWith(prefix+id+"."),"printed leaf node");
  for(const row of table(lines)){
   requireFact(row.length===3,"geometry column count");const[index,rule,json]=row,args=exactPacketJSON(json);requireFact(Array.isArray(args),"geometry arguments");
   if(index==="T"){
    requireFact(rule==="terminal"&&node.kind==="geometry"&&!node.terminal,"one geometric terminal");
    if(args[0]==="area_cap"){const[k,t,pts,capId]=args,cap=caps.get(capId);requireFact(args.length===4&&cap?.t===t,"terminal actual cap");node.terminal=[k,t,pts,cap.value,cap.source];}
    else node.terminal=args;
   }else{
    requireFact(integer(index)===node.steps.length+1&&!node.terminal,"ordered geometry steps");
    if(rule==="capacity"){const[t,pts,p,target,sg,capId]=args,cap=caps.get(capId);requireFact(args.length===6&&cap?.t===t,"capacity cap target");node.steps.push([rule,t,pts,p,target,sg,cap.value,cap.source]);}
    else{requireFact(rule==="plu"&&args.length===3,"printed geometry rule");node.steps.push([rule,...args]);}
   }
  }
  requireFact(node.kind!=="geometry"||node.terminal,"closed geometric leaf");
 }
 requireFact(usedGeometry.size===manuscript.leaves&&g.size===manuscript.leaves+4,"exact geometry sections");
 for(const[title,lines]of a){
  requireFact(/^Leaf A\d{3}$/.test(title),"area section title");const code=title.slice(5),id=leafMap.get(code),node=state.nodes[id];requireFact(node?.kind==="area"&&!usedAreas.has(code),"referenced area section");usedAreas.add(code);
  const parts=sections(lines.join("\n"),3);requireFact(parts.size===4,"four area subsections");const proof={initial:Object.create(null),relations:[],updates:[]};node.proof=proof;
  for(const row of table(parts.get("Initial bounds")||[])){
   requireFact(row.length===5,"initial columns");const[ref,t,side,value,w]=row;requireFact(!Object.prototype.hasOwnProperty.call(proof.initial,ref),"unique printed initial");let witness;
   if(w.startsWith("cost:"))witness=["cost",w.slice(5)];
   else if(w==="zero")witness=["zero"];
   else{const cap=caps.get(w);requireFact(cap?.t===t&&cap.value===value&&side==="hi","matching catalogue cap");witness=cap.source;}
   proof.initial[ref]={triangle:t,side,value,witness};
  }
  for(const row of table(parts.get("Relations")||[])){
   requireFact(row.length===4,"relation columns");const[id,kind,data,witness]=row;requireFact(id==="R"+proof.relations.length,"ordered relations");const args=exactPacketJSON(data);requireFact(Array.isArray(args),"relation array");proof.relations.push({rel:[kind,...args],witness:exactPacketJSON(witness)});
  }
  for(const row of table(parts.get("Updates")||[])){
   requireFact(row.length===7,"update columns");const[id,relation,rule,side,triangle,value,refs]=row;requireFact(/^s\d+$/.test(id)&&/^R\d+$/.test(relation),"update references");proof.updates.push({id,relation:integer(relation.slice(1)),rule,side,triangle,value,sources:refs?refs.split(","):[]});
  }
  const end=table(parts.get("Contradiction")||[]);requireFact(end.length===1&&end[0].length===4&&end[0][0]==="E","one scalar contradiction");proof.end={triangle:end[0][1],lower:end[0][2],upper:end[0][3]};
 }
 requireFact(usedAreas.size===manuscript.area,"all area sections");
 const pending=[["r",{}]],seen=new Set();
 while(pending.length){const[id,assign]=pending.pop(),node=state.nodes[id];requireFact(node&&!seen.has(id),"both children and acyclic ancestry");seen.add(id);node.assign=assign;if(node.kind==="split")for(const[suffix,sign]of[["m",-1],["p",1]])pending.push([id+suffix,{...assign,[node.triangle]:sign}]);}
 requireFact(seen.size===Object.keys(state.nodes).length,"all printed tree rows reachable");
 state.capCatalogue=[...caps.values()];return state;
}
function auditN6IIRRManuscript(geometryMarkdown,areaMarkdown,family="IIRR"){
 return verifyN6IIRRIndependent(readN6IIRRIndependent(geometryMarkdown,areaMarkdown,family),family);
}
if(typeof module!=="undefined"&&module.exports)module.exports={verifyN6IIRRIndependent,readN6IIRRIndependent,auditN6IIRRManuscript};
if(typeof require==="function"&&typeof module!=="undefined"&&require.main===module){
 const fs=require("node:fs"),path=require("node:path");
 const family=process.argv[2]||"IIRR";
 if(!Object.hasOwn(sidePairManuscripts,family))throw Error("choose IIRR or BIRR");
 const geometry=fs.readFileSync(path.join(__dirname,"N6_"+family+"_GEOMETRY.md"),"utf8");
 const areas=fs.readFileSync(path.join(__dirname,"N6_"+family+"_AREA_CHAINS.md"),"utf8");
 process.stdout.write(JSON.stringify(auditN6IIRRManuscript(geometry,areas,family))+"\n");
}
