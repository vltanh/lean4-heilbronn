(function checkN7CentralACDCap(){
"use strict";
const gcd=(a,b)=>{a=a<0n?-a:a;b=b<0n?-b:b;while(b){const r=a%b;a=b;b=r;}return a;};
const q=(a,b=1n)=>{if(Array.isArray(a))return a;if(typeof a==="string"){const p=a.split("/");return q(BigInt(p[0]),p.length===2?BigInt(p[1]):1n);}a=BigInt(a);b=BigInt(b);if(!b)throw Error("zero denominator");if(b<0n){a=-a;b=-b;}const d=gcd(a,b);return[a/d,b/d];};
const add=(a,b)=>q(a[0]*b[1]+b[0]*a[1],a[1]*b[1]),neg=a=>[-a[0],a[1]],sub=(a,b)=>add(a,neg(b)),mul=(a,b)=>q(a[0]*b[0],a[1]*b[1]),str=a=>a[1]===1n?String(a[0]):a[0]+"/"+a[1];
const eq=(a,b)=>a[0]*b[1]===b[0]*a[1],positive=a=>a[0]>0n;
const trim=p=>{while(p.length>1&&p.at(-1)[0]===0n)p.pop();return p;};
const pa=(a,b)=>trim(Array.from({length:Math.max(a.length,b.length)},(_,i)=>add(a[i]||q(0),b[i]||q(0))));
const ps=(a,k)=>trim(a.map(x=>mul(x,k))),pn=a=>ps(a,q(-1));
const pm=(a,b)=>{const out=Array.from({length:a.length+b.length-1},()=>q(0));a.forEach((x,i)=>b.forEach((y,j)=>out[i+j]=add(out[i+j],mul(x,y))));return trim(out);};
const same=(a,b)=>{a=trim([...a]);b=trim([...b]);return a.length===b.length&&a.every((x,i)=>eq(x,b[i]));};
const assert=(b,m)=>{if(!b)throw Error(m);};
let checks=0;const check=(b,m)=>{assert(b,m);checks++;};
const s=q("93/1000"),t=q("31/40"),E=sub(q(1),s),B=q("27/40"),c=[q(0),q(1)],oneMinusC=[q(1),q(-1)],tcPlusS=[s,t],tcMinusS=[neg(s),t];
const numerator=pa(pa(pm([B,neg(E)],pm(tcPlusS,oneMinusC)),pn(pm(pm(oneMinusC,oneMinusC),tcMinusS))),ps(pm(c,tcPlusS),s));
const literal=["6231/40000","-18011/31250","8959/15625","-2883/40000"].map(q);
check(same(numerator,literal),"cleared U(c) numerator");
let shifted=[q(0)],power=[q(1)];
for(const a of literal){shifted=pa(shifted,ps(power,a));power=pm(power,[q("3/5"),q(1)]);}
const displayed=["10137/12500000","169291/5000000","443641/1000000","-2883/40000"].map(q);
check(same(shifted,displayed),"shift by 3/5");
const lower=["10137/12500000","169291/5000000","414811/1000000"].map(q);
const remainder=ps(pm([q(0),q(0),q(1)],[q("2/5"),q(-1)]),q("2883/40000"));
check(same(pa(shifted,pn(lower)),remainder),"nonnegative cubic remainder");
const gap=sub(mul(q(4),mul(lower[2],lower[0])),mul(lower[1],lower[1]));
check(eq(gap,q("199202807/1000000000000"))&&positive(gap),"positive quadratic discriminant gap");
check(positive(lower[2]),"positive leading quadratic coefficient");
const capGap=sub(mul(q("149/20"),s),B);
check(eq(capGap,q("357/20000"))&&positive(capGap),"capacity gap");
check(eq(sub(t,q("773/1000")),q("1/500")),"CA ordinate bound");
check(eq(t,q("775/1000")),"CB ordinate bound");
const report={passed:true,checks,quadratic_gap:str(gap),capacity_gap:str(capGap)};
if(typeof console!=="undefined")console.log(JSON.stringify(report));
return report;
})()
