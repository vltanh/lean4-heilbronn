"use strict";
// Independent exact check of the complete conditional theorem in
// N7_CENTRAL_AREA_ORIENTATION.md. All geometry is replayed before arithmetic.
// Run: node n10/hand/check_n7_central_area_orientation.js
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
function verifyN7CentralAreaOrientation(note) {
  const {q,constant:C,variable:V,add:A,sub:S,mul:P,scale,eq,assert}=(() => {
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
  const blocks=[...note.matchAll(/^\x60\x60\x60scalar-area-packet\n([\s\S]*?)^\x60\x60\x60$/gm)];
  assert(blocks.length===1,"one literal packet");
  const packet=exactPacketJSON(blocks[0][1]);
  assert(Object.keys(packet.initial).length===13&&packet.relations.length===9&&packet.updates.length===72);
  const readQ=value=>{
    assert(typeof value==="string"||(typeof value==="number"&&Number.isSafeInteger(value)),
      "exact rational value");
    return q(value);
  };
  const Qs=q("93/1000"),K=q("149/20"),known=new Map();
  const canon=word=>{
    const a=[...word];assert(a.length===3,"triple length");
    if(new Set(a).size<3)return {name:a.sort().join(""),parity:0};
    let parity=1;
    for(let i=0;i<3;i++)for(let j=i+1;j<3;j++)if(a[i]>a[j])parity=-parity;
    return {name:a.sort().join(""),parity};
  };
  const get=word=>{
    const z=canon(word);
    return z.parity===0?0:(known.get(z.name)||0)*z.parity;
  };
  const put=(word,sgn)=>{
    const z=canon(word);assert(z.parity!==0);
    const old=known.get(z.name),wanted=z.parity*sgn;
    assert(old===undefined||old===wanted,"sign clash "+word);
    known.set(z.name,wanted);
  };
  const hull=[..."ABCDEFH"];
  for(let i=0;i<7;i++)for(let j=i+1;j<7;j++)for(let k=j+1;k<7;k++)
    put(hull[i]+hull[j]+hull[k],1);
  const inside=(outer,X)=>{
    const sg=get(outer);assert(sg!==0);
    return [outer[0]+outer[1]+X,outer[1]+outer[2]+X,outer[2]+outer[0]+X]
      .every(w=>get(w)===sg);
  };
  for(const [word,point]of [["HABC","G"],["HCEF","O"],["HCEF","P"],
      ["ABCDEFH","G"],["ABCDEFH","O"],["ABCDEFH","P"]]) {
    const a=[...word];
    for(let i=0;i<a.length;i++)put(a[i]+a[(i+1)%a.length]+point,1);
  }
  put("ACG",1);put("HBG",1);
  for(const [w,sg]of [["AGP",1],["DGP",1]])put(w,sg);
  for(const [edge,polygon,point]of [["AC","HCEF","P"]]) {
    assert([...polygon].every(X=>get(edge+X)>=0),"chord source");
    assert([...polygon].some(X=>get(edge+X)>0),"strict chord source");
    put(edge+point,1);
  }
  const vars=Object.fromEntries("a b c d e f g h z x y u v".split(" ").map(n=>[n,V(n)]));
  const zero=C(0),one=C(1);
  const pt={A:[zero,vars.a],B:[vars.b,zero],C:[vars.c,zero],
    D:[one,vars.d],E:[one,vars.e],F:[vars.f,one],H:[zero,vars.h],
    G:[vars.g,vars.z],O:[vars.x,vars.y],P:[vars.u,vars.v]};
  const det=word=>{
    const [x,y,z]=[...word].map(c=>pt[c]);
    return S(P(S(y[0],x[0]),S(z[1],x[1])),P(S(y[1],x[1]),S(z[0],x[0])));
  };
  const pluecker=(pivot,letters)=>{
    const [a,b,c,d]=[...letters];
    return [[pivot+a+b,pivot+c+d,1],[pivot+a+c,pivot+b+d,-1],
      [pivot+a+d,pivot+b+c,1]];
  };
  const derivations=[["C","AGHP","CGP",-1],["G","ACDP","ADG",-1],
    ["P","ACDG","ADP",-1]];
  for(const [pivot,letters,target,sign]of derivations) {
    const rows=pluecker(pivot,letters);
    assert(eq(A(...rows.map(([x,y,k])=>scale(P(det(x),det(y)),k))),zero),
      "Pluecker physical identity");
    const z=canon(target);assert(!known.has(z.name),"new target");
    const viable=[];
    for(const guess of [-1,1]) {
      known.set(z.name,z.parity*guess);
      const signs=rows.map(([x,y,k])=>get(x)*get(y)*k);
      assert(signs.every(s=>s!==0),"all product signs known");
      if(new Set(signs).size>1)viable.push(guess);
    }
    known.delete(z.name);
    assert(viable.length===1&&viable[0]===sign,"forced sign "+target);
    put(target,sign);
  }
  assert(eq(det("AEP"),S(det("ADP"),P(S(vars.e,vars.d),vars.u))),
    "actual higher-right-contact comparison");
  assert(get("ADP")===-1);put("AEP",-1);
  for(const [T,X]of [["ACD","G"],["ACD","P"],["ACP","G"],["ACE","P"]])
    assert(inside(T,X),"actual containment "+T+X);
  const abs=word=>{
    assert(get(word)!==0,"known actual orientation "+word);
    return scale(det(word),get(word));
  };
  for(const row of packet.relations) {
    if(row[0]==="fan")
      assert(row.length===5&&eq(abs(row[1]),A(...row.slice(2).map(abs))),"fan equality");
    else {
      assert(row[0]==="plu"&&row.length===7);
      assert(eq(P(abs(row[1]),abs(row[2])),
        A(P(abs(row[3]),abs(row[4])),P(abs(row[5]),abs(row[6])))),
        "signed product equality");
    }
  }
  assert(eq(det("ACD"),A(P(vars.a,S(one,vars.c)),P(vars.c,vars.d))),"ACD formula");
  assert(eq(det("ACE"),A(P(vars.a,S(one,vars.c)),P(vars.c,vars.e))),"ACE formula");
  const acd=q("685/1000").add(q("705/1000").sub(q("685/1000")).mul(q("883/1000")));
  const ace=q("685/1000").add(q("907/1000").sub(q("685/1000")).mul(q("883/1000")));
  assert(acd.toString()==="35133/50000"&&ace.toString()==="440513/500000");
  assert(K.sub(4).div(2).pow(2).cmp(3)<0,"two-point occupancy weakening");
  const bounds=new Map(),expectedLowerCosts={ACD:K,ACP:q(3)};
  for(const [name,record]of Object.entries(packet.initial)) {
    const value=readQ(record.value);
    assert(value.cmp(0)>0&&get(record.triangle)!==0,"positive actual initial bound");
    if(record.side==="lo")
      assert(value.cmp(Qs.mul(expectedLowerCosts[record.triangle]||q(1)))===0,
        "initial occupancy floor");
    else
      assert(record.side==="hi"&&["ACD","ACE"].includes(record.triangle)
        &&value.cmp(({ACD:acd,ACE:ace})[record.triangle])===0,"initial contact cap");
    bounds.set(name,{...record,value});
  }
  let floorRoundings=0,ceilRoundings=0;
  for(const row of packet.updates) {
    assert(!bounds.has(row.id),"immutable references");
    assert(Number.isInteger(row.relation)&&row.relation>=0&&row.relation<9,"relation index");
    const relation=packet.relations[row.relation];
    const sources=row.sources.map(x=>{
      assert(bounds.has(x),"prior reference "+x);return bounds.get(x);
    });
    let roles,exact;
    if(row.rule==="sum") {
      assert(relation[0]==="fan"&&row.triangle===relation[1]&&row.side==="lo");
      roles=relation.slice(2).map(t=>[t,"lo"]);
      exact=sources.reduce((v,b)=>v.add(b.value),q(0));
    } else if(row.rule==="sub") {
      assert(relation[0]==="fan"&&relation.slice(2).includes(row.triangle)&&row.side==="hi");
      roles=[[relation[1],"hi"],...relation.slice(2).filter(t=>t!==row.triangle).map(t=>[t,"lo"])];
      assert(sources.length===3);
      exact=sources[0].value.sub(sources[1].value).sub(sources[2].value);
    } else {
      assert(row.rule==="sumlo"&&relation[0]==="plu"&&row.side==="lo"
        &&relation.slice(1,3).includes(row.triangle));
      const other=relation[row.triangle===relation[1]?2:1];
      roles=[...relation.slice(3).map(t=>[t,"lo"]),[other,"hi"]];
      assert(sources.length===5&&sources.every(x=>x.value.cmp(0)>0),"product positivity");
      exact=sources[0].value.mul(sources[1].value)
        .add(sources[2].value.mul(sources[3].value)).div(sources[4].value);
    }
    assert(JSON.stringify(sources.map(b=>[b.triangle,b.side]))===JSON.stringify(roles),
      "source roles "+row.id);
    const value=readQ(row.value),scaleM=1000000n;
    assert(row.side==="lo"?value.cmp(exact)<=0:value.cmp(exact)>=0,
      "outward bound "+row.id);
    assert(value.cmp(0)>0,"positive retained bound");
    const scaled=exact.mul(q(scaleM));assert(scaled.n>=0n);
    const rounded=row.side==="lo"?scaled.n/scaled.d:(scaled.n+scaled.d-1n)/scaled.d;
    assert(value.mul(q(scaleM)).cmp(q(rounded))===0,"exact outward rounding "+row.id);
    row.side==="lo"?floorRoundings++:ceilRoundings++;
    bounds.set(row.id,{triangle:row.triangle,side:row.side,value});
  }
  const end=packet.contradiction,lo=bounds.get(end.lower),hi=bounds.get(end.upper);
  assert(lo.triangle===end.triangle&&hi.triangle===end.triangle
    &&lo.side==="lo"&&hi.side==="hi"&&end.triangle==="ACP");
  const gap=lo.value.sub(hi.value);
  assert(lo.value.toString()==="173519/500000"&&hi.value.toString()==="345097/1000000");
  assert(gap.toString()==="1941/1000000"&&gap.cmp(0)>0);
  return {status:"PASS",geometricSignDeductions:3,contactComparisonSigns:1,actualContainments:4,
    fanIdentities:4,productIdentities:5,initialBounds:13,updates:72,
    floorRoundings,ceilRoundings,lower:String(lo.value),upper:String(hi.value),
    gap:String(gap),roots:["CA","CB"]};
}
if (typeof module !== "undefined") {
  module.exports={verifyN7CentralAreaOrientation,exactPacketJSON};
  if(require.main===module) {
    const fs=require("node:fs"),path=require("node:path");
    const note=fs.readFileSync(path.join(__dirname,"N7_CENTRAL_AREA_ORIENTATION.md"),"utf8");
    console.log(JSON.stringify(verifyN7CentralAreaOrientation(note)));
  }
}
