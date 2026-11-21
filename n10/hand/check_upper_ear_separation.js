"use strict";
// Exact companion to UPPER_EAR_SEPARATION.md; no search is performed.
function verifyUpperEarSeparation(){
const {q,constant:C,variable:V,add,sub,mul,scale,neg,eq,assert}=(() => {
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

 const s=q("93/1000"),L=q("270723/500000"),H0=q("37/50"),T=q("13857/20000"),R=q("6143/20000"),W=q("721/1000");
 const a=V("a"),b=V("b"),c=V("c"),e=V("e"),f=V("f"),h=V("h"),one=C(1),zero=C(0);
 const points={A:[zero,a],B:[b,zero],C:[c,zero],E:[one,e],F:[f,one],H:[zero,h]};
 const det=(u,v,w)=>{const[p,r,t]=[u,v,w].map(n=>points[n]);return sub(mul(sub(r[0],p[0]),sub(t[1],p[1])),mul(sub(r[1],p[1]),sub(t[0],p[0])));};
 let polys=0;const same=(p,r,what)=>{assert(eq(p,r),what);polys++;};
 same(det("A","B","C"),mul(a,sub(c,b)),"ABC clearance");
 same(det("A","B","H"),mul(b,sub(h,a)),"ABH clearance");
 same(det("C","E","F"),add(sub(one,c),mul(e,sub(c,f))),"CEF area");
 same(det("H","E","F"),add(sub(one,h),mul(f,sub(h,e))),"HEF area");
 same(sub(sub(one,e),det("H","E","F")),mul(sub(one,f),sub(h,e)),"right contact ceiling");
 const X=mul(e,sub(c,f)),Y=mul(f,sub(h,e)),U=mul(e,f),VV=mul(sub(c,f),sub(h,e));
 same(add(X,Y,U,VV),mul(h,c),"four product sum");
 same(mul(X,Y),mul(U,VV),"four product balance");
 same(add(sub(sub(mul(h,c),c),h),C(R.add(W))),add(mul(sub(one,h),sub(one,c)),C(R.add(W).sub(1))),"height expression");
 same(sub(mul(h,C(q(1).sub(H0)),C(H0.sub(L))),mul(C(H0),sub(one,h),sub(h,C(L)))),mul(sub(h,C(H0)),sub(scale(h,H0),C(L))),"cleared monotonicity identity");
 const gaps={
 endpoint:q(2).sub(q("1411/1000").pow(2)),
 triangle:q(3).sub(q("69/40").pow(2)),
 low:q(1).sub(W).mul(L).div(H0).add(W.mul(s).div(H0.sub(s))).sub(R),
 height:H0.pow(2).sub(L)
 };
 const M=q(1).sub(H0).mul(q(1).sub(L.div(H0))).add(R).add(W).sub(1);
 gaps.high=L.sub(R).mul(H0.sub(W)).mul(4).sub(M.pow(2));
 const expected={endpoint:"9079/1000000",triangle:"39/1600",low:"149992399/239390000000",height:"3077/500000",high:"43956097541/5347656250000"};
 for(const k of Object.keys(expected))assert(gaps[k].toString()===expected[k]&&gaps[k].cmp(0)>0,"positive gap "+k);
 assert(L.cmp(R)>0&&H0.cmp(W)>0&&H0.cmp(s)>0&&W.cmp(0)>0&&W.cmp(1)<0,"all fixed denominator/monotonicity signs");
 assert(M.toString()==="113211/1156250"&&M.cmp(0)>0,"positive upper square side");
 assert(s.mul(q("2911/500")).cmp(L)===0,"lower container cost");
 assert(s.mul(q("149/20")).cmp(T)===0&&T.add(R).cmp(1)===0&&W.add(s.mul(3)).cmp(1)===0,"upper occupancy costs");
 return{status:"PASS",polynomial_identities:polys,positive_gaps:Object.fromEntries(Object.keys(gaps).map(k=>[k,gaps[k].toString()])),upper_height_bound:M.toString()};
}
if(typeof module!=="undefined"&&module.exports)module.exports={verifyUpperEarSeparation};
if(typeof require!=="undefined"&&typeof module!=="undefined"&&require.main===module)console.log(JSON.stringify(verifyUpperEarSeparation(),null,2));
