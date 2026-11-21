/* Exact transcription check for THREE_CAP_CONTACT_BOUNDS.md.
 * Standard JavaScript / BigInt only.
 */
globalThis.THREE_CAP_CHECK=(()=>{
function gcd(a,b){a=a<0n?-a:a;b=b<0n?-b:b;while(b)[a,b]=[b,a%b];return a}
class Q{constructor(n,d=1n){if(n instanceof Q){this.n=n.n;this.d=n.d;return}if(typeof n==="string"&&n.includes("/"))[n,d]=n.split("/");n=BigInt(n);d=BigInt(d);if(d<0n){n=-n;d=-d}if(!d)throw Error("zero denominator");const g=gcd(n,d);this.n=n/g;this.d=d/g}add(y){y=R(y);return new Q(this.n*y.d+y.n*this.d,this.d*y.d)}neg(){return new Q(-this.n,this.d)}sub(y){return this.add(R(y).neg())}mul(y){y=R(y);return new Q(this.n*y.n,this.d*y.d)}div(y){y=R(y);return new Q(this.n*y.d,this.d*y.n)}cmp(y){y=R(y);const n=this.n*y.d-y.n*this.d;return n<0n?-1:n>0n?1:0}toString(){return this.d===1n?String(this.n):this.n+"/"+this.d}}
const R=x=>x instanceof Q?x:new Q(x),zero=R(0),one=R(1),s=R("93/1000"),alpha=R("79/100"),beta=R("108/125"),d0=s.mul(4);
const C=x=>({"":R(x)}),V=x=>({[x]:one});
function add(...ps){const out={};for(const p of ps)for(const[m,c]of Object.entries(p))out[m]=(out[m]||zero).add(c);return Object.fromEntries(Object.entries(out).filter(([m,c])=>c.n))}
const neg=p=>Object.fromEntries(Object.entries(p).map(([m,c])=>[m,c.neg()]));
const sub=(p,q)=>add(p,neg(q));
function mul(p,q){const out={};for(const[m,c]of Object.entries(p))for(const[n,d]of Object.entries(q)){const k=[...m,...n].sort().join("");out[k]=(out[k]||zero).add(c.mul(d))}return Object.fromEntries(Object.entries(out).filter(([m,c])=>c.n))}
let identities=0;function identity(name,p){if(Object.keys(p).length)throw Error(name);identities++}
const vars=Object.fromEntries([..."abcdefghpqrtuvxy"].map(x=>[x,V(x)])),{a,b,c,d,f,h,p,q,r,t,u,v,x,y}=vars,I=C(1),S=C(s);
const right=sub(mul(d,sub(p,c)),mul(sub(I,c),q));
const left=sub(mul(f,sub(t,h)),mul(sub(I,h),r));
const top=sub(mul(sub(I,f),sub(v,d)),mul(sub(I,d),sub(I,u)));
identity("right contact",sub(sub(mul(mul(d,c),sub(I,c)),S),add(mul(c,sub(right,S)),mul(sub(I,c),sub(mul(c,q),S)),mul(mul(c,d),sub(I,p)))));
identity("left contact",sub(sub(mul(mul(f,h),sub(I,h)),S),add(mul(h,sub(left,S)),mul(sub(I,h),sub(mul(h,r),S)),mul(mul(h,f),sub(I,t)))));
identity("top cap",sub(sub(mul(sub(I,d),sub(I,f)),top),add(mul(sub(I,f),sub(I,v)),mul(sub(I,d),sub(I,u)))));
identity("N6 right base",sub(sub(mul(c,q),mul(sub(c,b),q)),mul(b,q)));
identity("N6 left base",sub(sub(mul(h,r),mul(sub(h,a),r)),mul(a,r)));
identity("N6 right actual triangle",sub(sub(mul(c,d),mul(sub(c,b),d)),mul(b,d)));
identity("N6 left actual triangle",sub(sub(mul(h,f),mul(sub(h,a),f)),mul(a,f)));
const CD=sub(mul(sub(I,c),y),mul(d,sub(x,c)));
const DF=sub(mul(sub(I,d),sub(I,x)),mul(sub(I,f),sub(y,d)));
const HF=sub(mul(f,sub(y,h)),mul(sub(I,h),x));
identity("central x below d",sub(sub(CD,mul(d,sub(I,x))),mul(sub(I,c),sub(y,d))));
identity("central x above d",sub(sub(DF,mul(sub(I,d),sub(I,x))),mul(sub(I,f),sub(d,y))));
identity("central y left f",sub(sub(neg(HF),mul(f,sub(I,y))),mul(sub(I,h),sub(x,f))));
identity("central y right f",add(sub(DF,mul(sub(I,f),sub(I,y))),mul(sub(I,d),sub(x,f))));
identity("top x",add(sub(top,mul(sub(I,d),sub(u,f))),mul(sub(I,f),sub(I,v))));
identity("top y",add(sub(top,mul(sub(I,f),sub(v,d))),mul(sub(I,d),sub(I,u))));
const checks={
 d0:[d0,"93/250"],
 contact_polynomial:[alpha.mul(one.sub(alpha)).sub(s.mul(one.add(alpha))),"-57/100000"],
 derivative:[one.sub(s).sub(alpha.mul(2)),"-673/1000"],
 contact_gap:[s.sub(alpha.mul(beta).mul(one.sub(beta))),"537/3125000"],
 corner_cap:[alpha.mul(beta),"2133/3125"],
 capacity_gap:[R("347/500").sub(alpha.mul(beta)),"143/12500"],
 coordinate_floor:[s.div(beta),"31/288"],
 right_y:[alpha.sub(s.div(one.sub(d0))),"5039/7850"],
 top_coordinate:[d0.add(s.div(one.sub(d0))),"40827/78500"],
 monotonicity_gap:[alpha.mul(d0).mul(d0).sub(s),"102021/6250000"],
 right_x:[d0.add(s.div(alpha.mul(d0))),"13597/19750"],
 right_x_gap:[d0.add(s.div(alpha.mul(d0))).sub("86/125"),"9/19750"]
};
for(const[name,[value,expected]]of Object.entries(checks))if(value.cmp(expected)!==0)throw Error("scalar "+name);
for(const name of["contact_gap","capacity_gap","monotonicity_gap","right_x_gap"])if(checks[name][0].cmp(0)<=0)throw Error("positive gap");
if(checks.contact_polynomial[0].cmp(0)>=0||checks.derivative[0].cmp(0)>=0)throw Error("negative comparison");
return{identities,scalars:Object.keys(checks).length,values:Object.fromEntries(Object.entries(checks).map(([k,[v]])=>[k,v.toString()]))};
})();
if(typeof module!=="undefined"&&typeof require==="function"&&require.main===module)
 console.log(JSON.stringify(THREE_CAP_CHECK));
