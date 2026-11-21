"use strict";
// Independent BigInt/rational transcription checks for
// N6_TOP_WEIGHTED_BARYCENTRICS.md and N6_SIDE_PAIR_BOUNDS.md.
// No optimizer, filesystem input, floating-point premise, or geometry enumeration.
// Run with: node n10/hand/check_n6_auxiliary_bounds.js
function verifyN6AuxiliaryBounds() {
  const {q,constant:C,variable:V,add:A,sub:S,mul:P,scale,eq,assert}
    = (() => {
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
  const pow=(p,n)=>{let z=C(1);for(let i=0;i<n;i++)z=P(z,p);return z;};
  const one=C(1),s=q("93/1000"),epsilon=q("1037/10000");
  const ceiling=q("907/1000");
  // Weighted top fan: use M*eta as variables to avoid rational functions.
  const [M,ce,cf,cu,e,f,u,v,dE,dF]=
    ["M","ce","cf","cu","e","f","u","v","dE","dF"].map(V);
  const dU=S(S(S(S(S(M,ce),cf),cu),dE),dF);
  const Mr=A(ce,dE,P(A(cf,dF),f),P(A(cu,dU),u));
  const Mw=A(P(A(ce,dE),e),cf,dF,P(A(cu,dU),v));
  const left=[
    S(S(S(Mr,ce),P(S(S(M,ce),cu),f)),P(cu,u)),
    S(A(S(S(M,cf),cu),P(cf,f),P(cu,u)),Mr),
    S(S(S(Mw,cf),P(S(S(M,cf),cu),e)),P(cu,v)),
    S(A(S(S(M,ce),cu),P(ce,e),P(cu,v)),Mw)];
  const right=[
    A(P(S(one,f),dE),P(S(u,f),dU)),
    A(P(S(one,f),dF),P(S(one,u),dU)),
    A(P(S(one,e),dF),P(S(v,e),dU)),
    A(P(S(one,e),dE),P(S(one,v),dU))];
  left.forEach((p,i)=>assert(eq(p,right[i]),"weighted identity "+i));
  const d0=q(1).sub(epsilon).pow(2),m0=d0.div(s);
  assert(d0.toString()==="80335369/100000000");
  assert(m0.toString()==="80335369/9300000"&&m0.cmp(9)<0);
  assert(s.mul(9).sub(d0).toString()==="3364631/100000000");
  assert(s.sub(epsilon.mul(q(1).sub(epsilon))).toString()==="5369/100000000");

  // No-top side-pair constants.
  const c0=q("77/125"),p0=q("183/200"),eta=q(1).sub(epsilon);
  const g=ceiling.mul(c0.sub(epsilon)).mul(q(1).sub(c0))
    .sub(s.mul(c0.sub(epsilon).mul(3).add(q(1).sub(c0))));
  const gp=ceiling.mul(q(1).add(epsilon).sub(c0.mul(2))).sub(s.mul(2));
  const D=p0.sub(epsilon).sub(s.mul(2).div(ceiling));
  const pgap=s.mul(4).mul(eta).sub(ceiling.mul(D.pow(2)));
  const T=ceiling.mul(eta).add(s).sub(s.mul(q("50/13")));
  const ugap=ceiling.mul(s).mul(4).mul(eta).sub(T.pow(2));
  assert(g.toString()==="-269697/1250000000"&&g.cmp(0)<0);
  assert(gp.toString()==="-3023681/10000000"&&gp.cmp(0)<0);
  assert(D.toString()==="5498491/9070000"&&D.cmp(0)>0);
  assert(pgap.toString()==="8117242919/90700000000000"&&pgap.cmp(0)>0);
  assert(T.toString()==="71272733/130000000"&&T.cmp(0)>0);
  assert(ugap.toString()==="31014498590711/16900000000000000"&&ugap.cmp(0)>0);
  assert(s.div(c0.sub(epsilon)).toString()==="930/5123");
  assert(ceiling.add(s).cmp(1)===0);

  const [c,beta,p,ordinate,rE,rP,alpha,h]=
    ["c","beta","p","q","rE","rP","alpha","h"].map(V);
  const area=S(P(e,S(p,c)),P(S(one,c),ordinate));
  const phi=S(P(e,S(c,beta),S(one,c)),
    scale(A(scale(S(c,beta),3),S(one,c)),s));
  const phiSum=A(P(S(c,beta),S(area,C(s.mul(3)))),
    P(S(one,c),S(P(S(c,beta),ordinate),C(s))),
    P(e,S(c,beta),S(one,p)));
  assert(eq(phi,phiSum),"full contact identity");
  const HEF=A(S(one,h),P(f,S(h,e)));
  assert(eq(S(S(one,e),HEF),P(S(one,f),S(h,e))),"contact ceiling");
  assert(eq(A(S(C(1),beta),S(beta,c)),S(one,c)),"fixed-c ratio numerator");

  function barycentric(weight,denominator,extreme) {
    const rem=q(1).sub(q(weight).mul(3));
    const rC=S(S(C(rem),rE),rP);
    const X=A(scale(A(c,one,p),weight),P(rC,c),rE,P(rP,p));
    const Y=A(scale(A(e,ordinate),weight),P(rE,e),P(rP,ordinate));
    const n=q(weight).mul(denominator);
    const lhs=[
      S(S(S(scale(X,denominator),scale(c,extreme)),C(n)),scale(p,n)),
      S(A(scale(c,n),scale(p,n),C(extreme)),scale(X,denominator)),
      S(S(scale(Y,denominator),scale(e,n)),scale(ordinate,n)),
      S(A(scale(e,extreme),scale(ordinate,n)),scale(Y,denominator))];
    const rhs=[
      scale(A(P(rE,S(one,c)),P(rP,S(p,c))),denominator),
      scale(A(P(rC,S(one,c)),P(rP,S(one,p))),denominator),
      scale(A(P(rE,e),P(rP,ordinate)),denominator),
      scale(A(P(rC,e),P(rP,S(e,ordinate))),denominator)];
    lhs.forEach((z,i)=>assert(eq(z,rhs[i]),"side barycentric "+weight+" "+i));
  }
  barycentric(q("13/50"),50,24);
  barycentric(q("3/11"),11,5);

  const x=S(c,beta);
  assert(eq(S(P(beta,x),scale(c,s)),
    A(P(beta,S(P(alpha,x),C(s))),
      P(x,S(P(beta,S(h,alpha)),C(s))),
      P(beta,x,S(one,h)))),"shared lower contacts");
  assert(s.sub(ceiling.div(10)).toString()==="23/10000");

  const xx=V("x"),tt=V("t");
  const coefficients=["-8649/1000000","72819/500000","-659/1000","907/1000"].map(q);
  const rationalNumerator=S(scale(P(xx,S(xx,C(s))),s.mul(q("11/3"))),
    P(S(S(xx,pow(xx,2)),C(s)),S(scale(xx,ceiling),C(s))));
  const cubic=z=>A(...coefficients.map((co,i)=>scale(pow(z,i),co)));
  assert(eq(rationalNumerator,cubic(xx)),"outer-area cubic");
  const rows=[
    ["1/10","3/10",["1159/5000000","1781/600000","2731/5000000","1107/5000000"]],
    ["3/10","2/5",["1107/5000000","59/1000000","3157/7500000","11071/5000000"]],
    ["2/5","1",["11071/5000000","64869/5000000","376307/5000000","384989/1000000"]]];
  assert(rows[0][0]==="1/10"&&rows[2][1]==="1");
  for(let i=1;i<rows.length;i++)assert(rows[i-1][1]===rows[i][0],"interval coverage");
  for(const [lo,hi,bs0]of rows) {
    const L=q(lo),H=q(hi),bs=bs0.map(q);
    assert(L.cmp(H)<0&&bs.every(v=>v.cmp(0)>0),"positive Bernstein data");
    const affine=A(C(L),scale(tt,H.sub(L)));
    const bernstein=A(...bs.map((b,i)=>scale(
      P(pow(tt,i),pow(S(one,tt),3-i)),b.mul([1,3,3,1][i]))));
    assert(eq(cubic(affine),bernstein),"Bernstein identity "+lo+" "+hi);
  }
  assert(s.mul(q("11/3")).toString()==="341/1000");
  assert(s.mul(q("11/3")).sub(s.mul(2)).toString()==="31/200");
  assert(q("3/11").cmp(q("13/50"))>0);
  // Affine tests with weight parameters N,b_i, distinct from occupancy costs.
  const NN=V("N"),bs=["b1","b2","b3"].map(V);
  const RR=S(NN,A(...bs)),t1=V("t1"),t2=V("t2");
  const ts=[t1,t2,S(RR,A(t1,t2))],ds=["D1","D2","D3"].map(V);
  const weightedD=A(...ds.map((d,i)=>P(A(bs[i],ts[i]),d)));
  const ix=V("ix"),iy=V("iy"),jx=V("jx"),jy=V("jy");
  const vx=["vx1","vx2","vx3"].map(V),vy=["vy1","vy2","vy3"].map(V);
  const WX=A(...vx.map((x,i)=>P(A(bs[i],ts[i]),x)));
  const WY=A(...vy.map((y,i)=>P(A(bs[i],ts[i]),y)));
  const physicalND=S(P(S(jx,ix),S(WY,P(NN,iy))),
    P(S(jy,iy),S(WX,P(NN,ix))));
  const physicalSum=A(...vx.map((x,i)=>P(A(bs[i],ts[i]),
    S(P(S(jx,ix),S(vy[i],iy)),P(S(jy,iy),S(x,ix))))));
  assert(eq(physicalND,physicalSum),"affine actual-line identity");
  let signedPatterns=0;
  for(const s1 of [-1,0,1])for(const s2 of [-1,0,1])for(const s3 of [-1,0,1]) {
    const signs=[s1,s2,s3],signed=ds.map((d,i)=>scale(d,signs[i]));
    const ND=A(...signed.map((d,i)=>P(A(bs[i],ts[i]),d)));
    const lower=A(...signed.map((d,i)=>P(signs[i]<0?A(bs[i],RR):bs[i],d)));
    const upper=A(...signed.map((d,i)=>P(signs[i]>0?A(bs[i],RR):bs[i],d)));
    const lowerDiff=A(...ds.map((d,i)=>signs[i]===0?C(0):
      P(signs[i]>0?ts[i]:S(RR,ts[i]),d)));
    const upperDiff=A(...ds.map((d,i)=>signs[i]===0?C(0):
      P(signs[i]>0?S(RR,ts[i]):ts[i],d)));
    assert(eq(S(ND,lower),lowerDiff),"lower signed pattern");
    assert(eq(S(upper,ND),upperDiff),"upper signed pattern");
    signedPatterns++;
  }
  const ls=["l1","l2","l3"].map(V),us=["u1","u2","u3"].map(V);
  const LL=V("L"),UU=V("U");
  const lowerScalar=A(...bs.map((b,i)=>P(b,ls[i])),P(RR,LL));
  const upperScalar=A(...bs.map((b,i)=>P(b,us[i])),P(RR,UU));
  const lowerExpansion=A(...ds.map((d,i)=>A(P(bs[i],S(d,ls[i])),P(ts[i],S(d,LL)))));
  const upperExpansion=A(...ds.map((d,i)=>A(P(bs[i],S(us[i],d)),P(ts[i],S(UU,d)))));
  assert(eq(S(weightedD,lowerScalar),lowerExpansion),"lower remainder-extrema identity");
  assert(eq(S(upperScalar,weightedD),upperExpansion),"upper remainder-extrema identity");
  return {status:"PASS",weightedIdentities:4,sideBarycentricIdentities:8,
    positiveBernsteinCoefficients:12,bernsteinIntervals:3,
    actualLineAffinityIdentities:1,signedBarycentricPatterns:signedPatterns,
    signedBarycentricIdentities:2*signedPatterns,remainderExtremaIdentities:2,
    sharedContactIdentity:true,fullSidePairIdentity:true,
    exactTopCap:String(m0),outerSideCap:"341/1000",fanCap:"31/200"};
}
if (typeof module !== "undefined") {
  module.exports={verifyN6AuxiliaryBounds};
  if (require.main===module)
    console.log(JSON.stringify(verifyN6AuxiliaryBounds()));
}
