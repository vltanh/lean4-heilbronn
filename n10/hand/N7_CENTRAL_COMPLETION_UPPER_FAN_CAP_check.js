'use strict';
const assert=require('node:assert/strict');
const add=(...ps)=>{const out=new Map();for(const p of ps)for(const[m,n]of p)out.set(m,(out.get(m)||0n)+n);for(const[m,n]of out)if(!n)out.delete(m);return out;};
const sc=(p,n)=>new Map([...p].map(([m,a])=>[m,a*BigInt(n)]));
const mul=(...ps)=>ps.reduce((p,q)=>{const out=new Map();for(const[m,a]of p)for(const[n,b]of q){const key=[...m.split(',').filter(Boolean),...n.split(',').filter(Boolean)].sort().join(',');out.set(key,(out.get(key)||0n)+a*b);}return add(out);},new Map([['',1n]]));
const k=n=>new Map([['',BigInt(n)]]),v=n=>new Map([[n,1n]]),sub=(p,q)=>add(p,sc(q,-1));
const [a,b,c,d,e,f,h,H0,S,D0,Q]=['a','b','c','d','e','f','h','h0','s','d0','q'].map(v),zero=k(0),one=k(1);
const points={A:[zero,a],B:[b,zero],C:[c,zero],D:[one,d],E:[one,e],F:[f,one],H:[zero,h]};
const det=t=>{const[A,B,C]=[...t].map(q=>points[q]);return sub(mul(sub(B[0],A[0]),sub(C[1],A[1])),mul(sub(B[1],A[1]),sub(C[0],A[0])));};
let checks=0;const eq=(p,q)=>{assert.equal(sub(p,q).size,0);checks++;};
eq(det('CDE'),mul(sub(one,c),sub(e,d)));
eq(det('HCF'),add(mul(c,sub(one,h)),mul(h,f)));
eq(det('AEF'),sub(sub(one,a),mul(f,sub(e,a))));
eq(det('BEF'),sub(sub(one,b),mul(e,sub(f,b))));
const num=t=>add(mul(sub(one,t),sub(sub(t,D0),S)),mul(Q,t,sub(t,D0)));
eq(sub(mul(num(H0),sub(h,D0)),mul(num(h),sub(H0,D0))),
 mul(sub(h,H0),sub(mul(sub(one,Q),sub(H0,D0),sub(h,D0)),mul(S,sub(one,D0)))));
const gcd=(a,b)=>{a=a<0n?-a:a;b=b<0n?-b:b;while(b)[a,b]=[b,a%b];return a;};
const q=(a,b=1n)=>{a=BigInt(a);b=BigInt(b);assert(b);if(b<0n){a=-a;b=-b;}const g=gcd(a,b);return[a/g,b/g];};
const plus=(a,b)=>q(a[0]*b[1]+b[0]*a[1],a[1]*b[1]),neg=a=>[-a[0],a[1]],minus=(a,b)=>plus(a,neg(b)),times=(a,b)=>q(a[0]*b[0],a[1]*b[1]),div=(a,b)=>q(a[0]*b[1],a[1]*b[0]);
const same=(a,b)=>{assert.equal(a[0]*b[1],b[0]*a[1]);checks++;},positive=a=>{assert(a[0]>0n);checks++;};
const ss=q(93,1000),T=times(q(149,20),ss),h0=q(613,1000),d0=q(3,25),qq=q(617,1000);
same(minus(h0,d0),q(493,1000));positive(minus(h0,d0));
let gap=minus(minus(q(1),qq),div(times(ss,minus(q(1),d0)),times(minus(h0,d0),minus(h0,d0))));
same(gap,q(11247767,243049000));positive(gap);
const phi=hh=>plus(times(minus(q(1),hh),minus(q(1),div(ss,minus(hh,d0)))),times(qq,hh));
gap=minus(T,phi(h0));same(gap,q(312097,493000000));positive(gap);
for(const[aa,bb,ee,cap,wanted]of[
 [q(139,1000),q(108,1000),q(93,223),q(153747149,223000000),q(758401,223000000)],
 [q(122,1000),q(123,1000),q(372,877),q(303248649,438500000),q(141519,109625000)]]){
 same(div(times(q(4),ss),minus(q(1),bb)),ee);positive(minus(ee,aa));
 same(minus(minus(q(1),aa),times(qq,minus(ee,aa))),cap);
 gap=minus(T,cap);same(gap,wanted);positive(gap);
}
for(const[bb,ee,cap,wanted]of[
 [q(108,1000),q(93,223),q(151579,223000),q(58531,4460000)],
 [q(123,1000),q(372,877),q(585361,877000),q(445369,17540000)]] ){
 positive(minus(qq,bb));
 same(minus(minus(q(1),bb),times(ee,minus(qq,bb))),cap);
 gap=minus(T,cap);same(gap,wanted);positive(gap);
}
console.log(checks+' exact contact identities and rational comparisons passed.');
