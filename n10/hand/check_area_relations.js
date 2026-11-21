"use strict";
// Exact companion to AREA_RELATIONS.md and SIDE_PAIR_AREA_REFINEMENTS.md.
// No optimizer, numerical tolerance or external proof packet is used.
function verifyAreaRelations() {
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

 const P={};for(const n of ["A","B","C","D","P","I","J"])P[n]=[V("x"+n),V("y"+n)];
 const det=(p,r,t)=>sub(mul(sub(r[0],p[0]),sub(t[1],p[1])),mul(sub(r[1],p[1]),sub(t[0],p[0])));
 const d=(a,b,c)=>det(P[a],P[b],P[c]);
 let identities=0;
 const same=(a,b,name)=>{assert(eq(a,b),name);identities++;};
 same(add(d("A","B","C"),d("A","C","D")),add(d("A","B","D"),d("B","C","D")),"four-point signed identity");
 const abc=d("A","B","C"),pbc=d("P","B","C"),apc=d("A","P","C"),abp=d("A","B","P");
 for(let k=0;k<3;k++)same(mul(abc,k===2?C(1):P.P[k]),add(mul(pbc,k===2?C(1):P.A[k]),mul(apc,k===2?C(1):P.B[k]),mul(abp,k===2?C(1):P.C[k])),"lifted affine coordinate "+k);
 same(mul(abc,d("I","J","P")),add(mul(pbc,d("I","J","A")),mul(apc,d("I","J","B")),mul(abp,d("I","J","C"))),"six-label identity");
 same(sub(mul(d("A","B","P"),d("C","D","P")),mul(d("B","C","P"),d("D","A","P"))),mul(d("A","C","P"),d("B","D","P")),"quadrilateral fan products");
 same(add(d("A","B","P"),d("B","C","P"),d("C","D","P"),d("D","A","P")),add(d("A","B","C"),d("A","C","D")),"quadrilateral fan sum");
 const alpha=V("alpha"),beta=V("beta"),c=V("c"),e=V("e"),f=V("f"),h=V("h"),r=V("r"),w=V("w"),one=C(1),zero=C(0);
 const A=[zero,alpha],B=[beta,zero],Cpt=[c,zero],E=[one,e],F=[f,one],H=[zero,h],R=[r,w];
 const U=neg(det(Cpt,E,R));
 same(U,sub(mul(e,sub(r,c)),mul(sub(one,c),w)),"actual outer area");
 same(sub(det(E,F,R),U),add(sub(one,r),mul(sub(c,f),sub(e,w))),"EFR comparison");
 same(sub(det(E,H,R),U),add(mul(h,sub(one,r)),mul(c,sub(e,w))),"EHR comparison");
 same(sub(neg(det(A,E,R)),U),add(mul(alpha,sub(one,r)),mul(c,sub(e,w))),"AER comparison");
 same(sub(neg(det(B,E,R)),U),mul(sub(c,beta),sub(e,w)),"BER comparison");
 same(neg(det(B,E,R)),sub(add(det(B,Cpt,E),U),det(B,Cpt,R)),"signed four-area side relation");
 const L=V("L"),y=V("y"),a=V("a"),s=V("s"),x=sub(L,y);
 same(sub(mul(y,x,a),scale(mul(s,x),3)),sub(mul(y,add(mul(a,L),scale(s,3),neg(mul(a,y)))),scale(mul(s,L),3)),"side-cap reciprocal identity after clearing y");
 const sigma=q("93/1000"),ceiling=q("907/1000"),eps=q("1037/10000"),eta=q(1).sub(eps);
 assert(ceiling.add(sigma).cmp(1)===0,"a=1-s");
 const al=ceiling.mul(eta),t=al.add(sigma.mul(q("3/2")));
 assert(al.toString()==="8129441/10000000","aL");
 assert(t.toString()==="9524441/10000000"&&t.cmp(0)>0,"N6 positive square side");
 const gapN6=sigma.mul(12).mul(al).sub(t.pow(2));
 assert(gapN6.toString()==="9585197519/100000000000000"&&gapN6.cmp(0)>0,"N6 strict square gap");
 const gapC1=sigma.mul(12).mul(ceiling).sub(ceiling.add(sigma).pow(2));
 assert(gapC1.toString()==="3053/250000"&&gapC1.cmp(0)>0,"C1 strict square gap");
 assert(sigma.mul(q("3/2")).toString()==="279/2000","N6 area cap");
 assert(sigma.mul(2).toString()==="93/500","C1 area cap");
 assert(q(2).mul(q(186).pow(2)).sub(q(263).pow(2)).toString()==="23","quad square gap");
 assert(sigma.mul(2).toString()==="93/500","quad radical coefficient");
 assert(q("449/1000").sub(sigma.mul(2)).toString()==="263/1000","quad rational remainder");
 // Sign conversion is checked without assuming that every assignment is realizable.
 // Eight distinct determinants contribute four signed products to (2).
 let balanced=0,impossible=0;
 const factors=[abc,d("I","J","P"),pbc,d("I","J","A"),apc,d("I","J","B"),abp,d("I","J","C")];
 for(let mask=0;mask<256;mask++){
   const signs=factors.map((_,i)=>(mask>>i)&1?1:-1);
   const coefficients=[1,-1,-1,-1].map((c,i)=>c*signs[2*i]*signs[2*i+1]);
   const positive=coefficients.some(c=>c>0),negative=coefficients.some(c=>c<0);
   if(positive&&negative)balanced++;else impossible++;
   const reconstructed=add(...coefficients.map((c,i)=>scale(mul(scale(factors[2*i],signs[2*i]),scale(factors[2*i+1],signs[2*i+1])),c)));
   assert(eq(reconstructed,C(0)),"signed six-label conversion "+mask);
 }
 assert(balanced===224&&impossible===32,"complete eight-sign catalogue");
 return {status:"PASS",polynomial_identities:identities,six_label_sign_assignments:256,balanced:balanced,impossible:impossible,positive_square_gaps:{N6:gapN6.toString(),C1:gapC1.toString(),quad:"23"}};
}
if(typeof module!=="undefined"&&module.exports)module.exports={verifyAreaRelations};
if(typeof require!=="undefined"&&typeof module!=="undefined"&&require.main===module)console.log(JSON.stringify(verifyAreaRelations(),null,2));
