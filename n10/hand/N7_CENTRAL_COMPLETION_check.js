'use strict';
// Exact, dependency-free expansion of the physical identities in the note.
const assert=require('node:assert/strict');
const add=(...ps)=>{const out=new Map();for(const p of ps)for(const[k,v]of p)out.set(k,(out.get(k)||0n)+v);for(const[k,v]of out)if(!v)out.delete(k);return out;};
const sc=(p,c)=>new Map([...p].map(([k,v])=>[k,v*BigInt(c)]));
const mul=(...ps)=>ps.reduce((a,b)=>{let out=new Map();for(const[k,x]of a)for(const[l,y]of b){let m=[...k.split(',').filter(Boolean),...l.split(',').filter(Boolean)].sort().join(',');out.set(m,(out.get(m)||0n)+x*y);}return add(out);},new Map([['',1n]]));
const k=n=>new Map([['',BigInt(n)]]),v=s=>new Map([[s,1n]]),sub=(p,q)=>add(p,sc(q,-1));
const [a,b,c,e,f,h,g,z,x,y]=['a','b','c','e','f','h','g','z','x','y'].map(v),zero=k(0),one=k(1);
const u=v('u'),vv=v('v');
const pts={O:[x,y],P:[u,vv],A:[zero,a],B:[b,zero],C:[c,zero],E:[one,e],F:[f,one],H:[zero,h],G:[g,z],X:[x,y]};
const area=t=>{let[A,B,C]=[...t].map(s=>pts[s]);return sub(mul(sub(B[0],A[0]),sub(C[1],A[1])),mul(sub(B[1],A[1]),sub(C[0],A[0])));};
let checks=0;const eq=(p,q)=>{assert.equal(sub(p,q).size,0);checks++;};
eq(area('AFH'),mul(f,sub(h,a)));
eq(area('BFH'),add(mul(h,f),mul(b,sub(one,h))));
eq(area('ABF'),add(mul(a,f),mul(b,sub(one,a))));
eq(sub(f,area('AFH')),mul(f,add(one,a,sc(h,-1))));
eq(sub(f,area('BFH')),mul(sub(f,b),sub(one,h)));
eq(sub(f,area('ABF')),mul(sub(f,b),sub(one,a)));
eq(area('HAX'),mul(sub(h,a),x));
eq(area('HBC'),mul(h,sub(c,b)));
eq(area('HBE'),add(mul(h,sub(one,b)),mul(b,e)));
eq(area('HBF'),add(mul(h,f),mul(b,sub(one,h))));
eq(area('CFH'),add(mul(c,sub(one,h)),mul(h,f)));
eq(area('CFA'),add(mul(c,sub(one,a)),mul(a,f)));
eq(area('CFB'),sub(c,b));
eq(area('BCG'),mul(sub(c,b),z));
eq(area('FAG'),sc(area('AFG'),-1));
eq(area('FBG'),sc(area('BFG'),-1));


const gcd=(a,b)=>{a=a<0n?-a:a;b=b<0n?-b:b;while(b)[a,b]=[b,a%b];return a;};
const q=(a,b=1n)=>{a=BigInt(a);b=BigInt(b);if(b<0n){a=-a;b=-b;}const g=gcd(a,b);return[a/g,b/g];};
const qa=(a,b)=>q(a[0]*b[1]+b[0]*a[1],a[1]*b[1]),qn=a=>[-a[0],a[1]],qs=(a,b)=>qa(a,qn(b)),qm=(a,b)=>q(a[0]*b[0],a[1]*b[1]),qd=(a,b)=>q(a[0]*b[1],a[1]*b[0]);
const same=(a,b)=>{assert.equal(a[0]*b[1],b[0]*a[1]);checks++;},pos=a=>{assert(a[0]>0n);checks++;};
const S=q(93,1000),T=qm(q(149,20),S),R=qs(q(1),T),E0=qs(q(1),S),L=qm(q(2911,500),S),F0=q(108,1000),F1=q(279,1000),E1=q(57,100);
let gap=qs(qd(qa(L,F0),q(2)),R);same(gap,q(17573,1000000));pos(gap);
gap=qs(qs(qd(qa(E0,R),q(2)),qm(E0,R)),qm(qm(E1,E1),qa(F1,F0)));same(gap,q(4055073,20000000));pos(gap);
gap=qs(qm(E0,R),qm(F0,qa(E0,R)));same(gap,q(2949137,20000000));pos(gap);
const phi=(ee,ff)=>qd(qm(qs(E0,qm(ee,ff)),qs(R,qm(ee,ff))),qm(qs(q(1),ee),qs(q(1),ff)));
gap=qs(L,phi(E1,F0));same(gap,q(567727,4794500000));pos(gap);
for(const [aa,ff,cap,wanted]of [[q(139,1000),q(108,1000),q(203613,250000),q(897,100000)],[q(122,1000),q(123,1000),q(51431,62500),q(263,500000)]]){
 same(qs(qs(q(1),aa),qm(ff,qs(E1,aa))),cap);gap=qs(qm(q(4427,500),S),cap);same(gap,wanted);pos(gap);
}
// The two Phi difference identities are polynomial after denominator clearing.
const EE=v('ee'),FF=v('ff'),FF0=v('ff0'),EE1=v('ee1'),RR=v('rr'),EE0=v('ee0');
const numerator=(ee,ff)=>mul(sub(EE0,mul(ee,ff)),sub(RR,mul(ee,ff)));
eq(sub(mul(numerator(EE,FF0),sub(one,FF)),mul(numerator(EE,FF),sub(one,FF0))),
 mul(sub(FF,FF0),sub(sub(mul(EE,add(EE0,RR)),mul(EE0,RR)),mul(EE,EE,sub(add(FF,FF0),mul(FF,FF0))))));
eq(sub(mul(numerator(EE1,FF0),sub(one,EE)),mul(numerator(EE,FF0),sub(one,EE1))),
 mul(sub(EE1,EE),add(sub(mul(EE0,RR),mul(FF0,add(EE0,RR))),mul(FF0,FF0,sub(add(EE,EE1),mul(EE,EE1))))));
eq(area('AEF'),sub(sub(one,a),mul(f,sub(e,a))));
eq(area('CEH'),add(mul(h,sub(one,c)),mul(c,e)));
eq(area('CEA'),add(mul(a,sub(one,c)),mul(c,e)));
eq(area('CEB'),mul(e,sub(c,b)));
eq(add(mul(area('EBC'),area('EOP')),sc(mul(area('EBO'),area('ECP')),-1),mul(area('EBP'),area('ECO'))),zero);
same(qs(q(5),qm(q(559,250),q(559,250))),q(19,62500));pos(q(19,62500));
console.log(`${checks} exact physical identities and rational comparisons passed.`);
