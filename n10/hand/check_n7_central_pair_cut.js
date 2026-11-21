"use strict";
// Independent exact geometry and arithmetic for N7_CENTRAL_PAIR_CUT.md.
// N7_CENTRAL_AREA_ORIENTATION.md is the cited, separately checked premise.
// Run: node n10/hand/check_n7_central_pair_cut.js
function verifyN7CentralPairCut() {
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
  const s=q("93/1000"),K=q("149/20"),T=s.mul(K);
  assert(T.toString()==="13857/20000");
  const known=new Map();
  const canonical=word=>{
    const a=[...word];assert(a.length===3);
    if(new Set(a).size<3)return {key:a.sort().join(""),sign:0};
    let sign=1;for(let i=0;i<3;i++)for(let j=i+1;j<3;j++)if(a[i]>a[j])sign=-sign;
    return {key:a.sort().join(""),sign};
  };
  const signOf=w=>{
    const c=canonical(w);return c.sign===0?0:(known.get(c.key)||0)*c.sign;
  };
  const put=(w,sign)=>{
    const c=canonical(w);assert(c.sign!==0);
    const actual=sign*c.sign;
    assert(!known.has(c.key)||known.get(c.key)===actual,"consistent actual sign "+w);
    known.set(c.key,actual);
  };
  const zero=C(0),one=C(1);
  const vs=Object.fromEntries("a b c d e f g h z x y u v r".split(" ").map(x=>[x,V(x)]));
  const pts={A:[zero,vs.a],B:[vs.b,zero],C:[vs.c,zero],
    D:[one,vs.d],E:[one,vs.e],F:[vs.f,one],H:[zero,vs.h],
    G:[vs.g,vs.z],O:[vs.x,vs.y],P:[vs.u,vs.v]};
  const det=w=>{
    const [x,y,z]=[...w].map(c=>pts[c]);
    return S(P(S(y[0],x[0]),S(z[1],x[1])),P(S(y[1],x[1]),S(z[0],x[0])));
  };
  const hull=[..."ABCDEFH"];
  for(let i=0;i<7;i++)for(let j=i+1;j<7;j++)for(let k=j+1;k<7;k++)
    put(hull[i]+hull[j]+hull[k],1);
  for(const [poly,X]of [["HABC","G"],["HCEF","O"],["HCEF","P"],
      ["ABCDEFH","G"],["ABCDEFH","O"],["ABCDEFH","P"]])
    for(let i=0;i<poly.length;i++)put(poly[i]+poly[(i+1)%poly.length]+X,1);
  put("ACG",1);put("HBG",1);put("HOP",-1);
  const inside=(tri,X)=>{
    const sgn=signOf(tri);assert(sgn!==0);
    return [tri[0]+tri[1]+X,tri[1]+tri[2]+X,tri[2]+tri[0]+X]
      .every(w=>signOf(w)===sgn);
  };
  const chord=(edge,vertices,X)=>{
    const sg=[...vertices].map(Y=>signOf(edge+Y));
    assert(sg.every(v=>v>=0)&&sg.some(v=>v>0),"affine closed-half-plane source");
    put(edge+X,1);
  };
  let plueckerCount=0;
  const force=(pivot,letters,target,wanted)=>{
    const [a,b,c,d]=[...letters];
    const products=[[pivot+a+b,pivot+c+d,1],[pivot+a+c,pivot+b+d,-1],
      [pivot+a+d,pivot+b+c,1]];
    assert(eq(A(...products.map(([x,y,k])=>scale(P(det(x),det(y)),k))),zero),
      "physical Pluecker identity");
    const targetKey=canonical(target);assert(!known.has(targetKey.key),"new forced sign");
    const possible=[];
    for(const guess of [-1,1]) {
      known.set(targetKey.key,targetKey.sign*guess);
      const signs=products.map(([x,y,k])=>signOf(x)*signOf(y)*k);
      assert(signs.every(v=>v!==0),"known product signs");
      if(new Set(signs).size>1)possible.push(guess);
    }
    known.delete(targetKey.key);
    assert(possible.length===1&&possible[0]===wanted,"forced sign "+target);
    put(target,wanted);plueckerCount++;
  };
  // Three capacity-one caps, independently expanded from actual coordinates.
  assert(eq(det("CDG"),A(P(vs.d,S(vs.c,vs.g)),P(S(one,vs.c),vs.z))));
  const cdg=q("705/1000").mul(q("541/1000").sub(q("118/1000")))
    .add(q(1).sub(q("541/1000")).mul(q("775/1000")));
  assert(cdg.toString()==="32697/50000"&&T.sub(cdg).toString()==="3891/100000");
  assert(q("541/1000").sub(q("118/1000")).cmp(0)>0);
  assert(eq(det("ADG"),S(S(vs.z,P(vs.a,S(one,vs.g))),P(vs.d,vs.g))));
  const adg=q("775/1000").sub(q("120/1000"));
  const negAdg=q("705/1000").sub(q("134/1000"));
  assert(adg.toString()==="131/200"&&negAdg.toString()==="571/1000");
  assert(negAdg.cmp(adg)<0&&T.sub(adg).toString()==="757/20000");
  assert(eq(P(vs.h,det("BDG")),
    A(P(S(vs.h,vs.d),S(one,vs.b),vs.z),
      P(vs.d,S(vs.z,det("HBG"))))),"BDG convex-combination identity");
  const bdg=q(1).sub(q("108/1000")).mul(q("775/1000"));
  const second=q("775/1000").sub(s);
  const negBdg=q("705/1000").mul(q("685/1000").sub(q("108/1000")));
  assert(bdg.toString()==="6913/10000"&&second.toString()==="341/500");
  assert(negBdg.toString()==="81357/200000");
  assert(second.cmp(bdg)<0&&negBdg.cmp(bdg)<0&&T.sub(bdg).toString()==="31/20000");
  assert([cdg,adg,bdg].every(cap=>cap.cmp(T)<0));
  assert(K.sub(4).div(2).pow(2).cmp(3)<0);

  // The first two identity schemes apply to each actual upper point.
  for(const X of ["O","P"]) {
    chord("AC","HCEF",X);chord("HB","HCEF",X);
    force("C","AGH"+X,"CG"+X,-1);
    force("H","BCG"+X,"HG"+X,1);
  }
  put("DGO",1); // Contrary case; actual clearance excludes zero.
  assert(inside("CDG","O"));
  // Previously proved N7_CENTRAL_AREA_ORIENTATION.md applies to O.
  assert(signOf("DGO")===1);put("AGO",-1);
  // With CDP,GCP positive, DGP positive would put a second point in CDG.
  assert(signOf("CDP")===1&&signOf("GCP")===1&&cdg.cmp(T)<0);
  put("DGP",-1);
  force("G","CDOP","GOP",1);
  force("O","AGHP","AOP",1);
  assert(inside("BCH","G"));
  chord("DH","BCH","G");
  assert(inside("CDG","O"));
  chord("DH","CDG","O");
  force("H","CDOP","DHP",1);
  for(const [tri,X]of [["HAO","G"],["HAO","P"],["CDH","O"],["CDH","P"]])
    assert(inside(tri,X),"two occupied actual triangles "+tri+X);
  assert(eq(det("HAO"),P(S(vs.h,vs.a),vs.x)));
  assert(eq(det("CDH"),A(P(vs.h,S(one,vs.c)),P(vs.c,vs.d))));
  assert(eq(det("ABC"),P(vs.a,S(vs.c,vs.b))));
  assert(eq(det("CDE"),P(S(one,vs.c),S(vs.e,vs.d))));
  assert(eq(det("DEO"),P(S(vs.e,vs.d),S(one,vs.x))));

  const dLow=q("43/100"),cLow=q("27/50"),eHigh=q("907/1000");
  const firstCap=q(1).sub(q(1).sub(dLow).mul(cLow));
  assert(firstCap.toString()==="3461/5000");
  assert(T.sub(firstCap).toString()==="13/20000");
  const span=eHigh.sub(dLow),xHigh=q(1).sub(s.div(span));
  assert(span.toString()==="477/1000"&&xHigh.toString()==="128/159");
  const aCut=q("7/50"),haoCap=q(1).sub(aCut).mul(xHigh);
  assert(T.sub(haoCap).toString()==="1663/3180000");
  const cCut=q("3/4"),dHigh=eHigh.sub(s.div(q(1).sub(cCut)));
  const secondCap=q(1).sub(q(1).sub(dHigh).mul(cCut));
  assert(dHigh.toString()==="107/200"&&secondCap.toString()==="521/800");
  assert(T.sub(secondCap).toString()==="26/625");
  const abcCap=aCut.mul(cCut.sub(s));
  assert(abcCap.toString()==="4599/50000"&&s.sub(abcCap).toString()==="51/50000");
  assert([T.sub(firstCap),T.sub(haoCap),T.sub(secondCap),s.sub(abcCap)]
    .every(gap=>gap.cmp(0)>0));

  // The optional scalar transfer retains an inward actual right point.
  pts.D=[vs.r,vs.d];
  const virtualCDH=A(P(vs.h,S(one,vs.c)),P(vs.c,vs.d));
  const virtualCDE=P(S(one,vs.c),S(vs.e,vs.d));
  const virtualDEO=P(S(one,vs.x),S(vs.e,vs.d));
  assert(eq(S(virtualCDH,det("CDH")),P(vs.h,S(one,vs.r))));
  assert(eq(S(virtualCDE,det("CDE")),P(vs.e,S(one,vs.r))));
  assert(eq(S(virtualDEO,det("DEO")),P(S(one,vs.r),S(vs.e,vs.y))));
  return {status:"PASS",capacityCaps:{ADG:String(adg),BDG:String(bdg),CDG:String(cdg)},
    plueckerSchemes:5,plueckerInstances:plueckerCount,occupiedContainments:4,
    scalarContradictionGaps:["13/20000","1663/3180000","26/625","51/50000"],
    inwardPointIdentities:3,conclusion:"DGO<0",remainingPairWords:6};
}
if(typeof module!=="undefined") {
  module.exports={verifyN7CentralPairCut};
  if(require.main===module)console.log(JSON.stringify(verifyN7CentralPairCut()));
}
