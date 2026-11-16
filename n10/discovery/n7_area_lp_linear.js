(function createAreaLinearCertificateTools(){
"use strict";
const R=eval(load("scalarAreaJSCore")),G=eval(load("n7SignJS"));
const{Q,add,sub,mul,div,neg,cmp,str,zero,one}=R;
const number=x=>{const q=Q(x);return Number(q[0])/Number(q[1]);};
function make(model,areaResult,{fourPoint=true,nestedFans=true}={}){
 const bounds=areaResult.final||areaResult,names=Object.keys(bounds).sort(),factors=[],seen=new Set();
 const B=(t,s)=>Q(bounds[t][s].value??bounds[t][s]);
 const boundRefs=(t,s)=>({triangle:t,side:s,ref:bounds[t][s].ref??null,value:str(B(t,s))});
 function range(f){let lo=Q(f.constant),hi=lo;for(const[t,v]of Object.entries(f.coefficients)){const a=Q(v);lo=add(lo,mul(a,B(t,cmp(a,zero)>=0?"lo":"hi")));hi=add(hi,mul(a,B(t,cmp(a,zero)>=0?"hi":"lo")));}return{lo,hi};}
 function append(coeff,constant,origin){
  const coefficients=Object.fromEntries(Object.entries(coeff).filter(([,a])=>cmp(Q(a),zero)!==0).sort(([a],[b])=>a.localeCompare(b)).map(([t,a])=>[t,str(Q(a))]));
  const f={coefficients,constant:str(Q(constant)),origin},key=JSON.stringify([coefficients,f.constant]);
  if(seen.has(key))return null;
  const ran=range(f);if(cmp(ran.lo,zero)>=0)return null;
  seen.add(key);factors.push(f);return factors.length-1;
 }
 const equality=(coeff,constant,origin)=>{append(coeff,constant,{...origin,direction:1});append(Object.fromEntries(Object.entries(coeff).map(([t,a])=>[t,neg(Q(a))])),neg(Q(constant)),{...origin,direction:-1});};
 function acc(c,t,v){c[t]=add(c[t]||zero,Q(v));}
 model.relations.forEach((r,i)=>{
  if(r[0]==="fan"){const c={};acc(c,r[1],one);r.slice(2).forEach(t=>acc(c,t,neg(one)));equality(c,zero,{kind:"fan",relation:i});}
  if(r[0]==="linear")append(r[1],neg(Q(r[2])),{kind:"linear",relation:i});
  if(r[0]==="quad"){const c={};acc(c,r[1],one);acc(c,r[2],one);append(c,neg(Q(r[3])),{kind:"quad",relation:i});}
  if(r[0]==="support"){
   const[,X,Y,Z,ks]=r,k=Q(ks),ux=B(X,"hi"),uy=B(Y,"hi"),c1={},c2={};
   acc(c1,Y,ux);acc(c1,X,neg(k));acc(c1,Z,k);
   acc(c2,X,sub(uy,k));acc(c2,Z,k);
   append(c1,zero,{kind:"support_cap",relation:i,capped:X,cap:boundRefs(X,"hi")});
   append(c2,zero,{kind:"support_cap",relation:i,capped:Y,cap:boundRefs(Y,"hi")});
  }
 });
 if(fourPoint)for(const v of G.combos(G.labels,4)){
   const[A,Bc,C,D]=v,ts=[A+Bc+C,A+C+D,A+Bc+D,Bc+C+D],cs=[1,1,-1,-1],c={};
   if(ts.some(t=>!model.signs[t]))continue;
   ts.forEach((t,i)=>acc(c,t,Q(cs[i]*model.signs[t])));
   equality(c,zero,{kind:"four_point",vertices:v.join("")});
 }
 const products=[];
 model.relations.forEach((r,i)=>{
  if(r[0]==="plu")products.push({relation:i,terms:[[1,r[1],r[2]],[-1,r[3],r[4]],[-1,r[5],r[6]]]});
  if(r[0]==="balance")products.push({relation:i,terms:r[1]});
 });
 function prodAffine(X,Y,type,choice){
  const lx=B(X,"lo"),ux=B(X,"hi"),ly=B(Y,"lo"),uy=B(Y,"hi"),c={};let constant,refs;
  if(type==="lower"&&choice===0){acc(c,Y,lx);acc(c,X,ly);constant=neg(mul(lx,ly));refs=[boundRefs(X,"lo"),boundRefs(Y,"lo")];}
  if(type==="lower"&&choice===1){acc(c,Y,ux);acc(c,X,uy);constant=neg(mul(ux,uy));refs=[boundRefs(X,"hi"),boundRefs(Y,"hi")];}
  if(type==="upper"&&choice===0){acc(c,Y,ux);acc(c,X,ly);constant=neg(mul(ux,ly));refs=[boundRefs(X,"hi"),boundRefs(Y,"lo")];}
  if(type==="upper"&&choice===1){acc(c,Y,lx);acc(c,X,uy);constant=neg(mul(lx,uy));refs=[boundRefs(X,"lo"),boundRefs(Y,"hi")];}
  return{coefficients:c,constant,refs};
 }

 if(nestedFans){
  const sg=word=>{const[t,p]=G.canon(word);return(model.signs[t]||0)*p;};
  const key=word=>G.canon(word)[0],inside=(tri,p)=>!tri.includes(p)&&[...tri].every((a,i)=>sg(a+tri[(i+1)%3]+p)>0),used=new Set();
  for(const word of names){
   const outer=model.signs[word]>0?word:word[1]+word[0]+word[2];
   for(const X of G.labels)if(inside(outer,X))for(let sh=0;sh<3;sh++){
    const o=outer.slice(sh)+outer.slice(0,sh),[A,Bc,C]=o,T=key(A+Bc+X),S=key(o);
    for(const Y of G.labels)if(!o.includes(Y)&&Y!==X&&inside(A+Bc+X,Y)&&sg(C+X+Y)){
     const negative=sg(C+X+Y)<0,face=key(negative?C+A+X:Bc+C+X),beta=key(negative?X+A+Y:Bc+X+Y),gamma=key(A+Bc+Y),d=key(C+X+Y);
     const id=[S,T,face,beta,gamma,d].join("/");if(used.has(id))continue;used.add(id);
     const d0=B(d,"lo"),b0=B(beta,"lo"),g0=B(gamma,"lo");
     for(const choice of [0,1]){
      const f=prodAffine(T,face,"upper",choice),c={...f.coefficients};
      acc(c,T,neg(sub(d0,b0)));acc(c,S,neg(b0));acc(c,face,neg(g0));
      append(c,f.constant,{kind:"nested_fan_product",outer:o,first:X,second:Y,line_sign:negative?-1:1,T,S,face,beta,gamma,d,
         lower:[boundRefs(d,"lo"),boundRefs(beta,"lo"),boundRefs(gamma,"lo")],envelope:{type:"upper",choice,bounds:f.refs}});
     }
    }
   }
  }
 }
 const evalAt=(f,x)=>number(f.constant)+Object.entries(f.coefficients).reduce((v,[t,a])=>v+number(a)*x[t],0);
 function separate(point,{limit=1000,tolerance=1e-8}={}){
  const candidates=[];
  for(const p of products)for(const orientation of [1,-1]){
   const c={},chosen=[];let constant=zero;
   for(const[sign0,X,Y]of p.terms){
    const sign=orientation*sign0,type=sign>0?"upper":"lower",f0=prodAffine(X,Y,type,0),f1=prodAffine(X,Y,type,1);
    const v0=evalAt(f0,point),v1=evalAt(f1,point),choice=type==="upper"?(v0<=v1?0:1):(v0>=v1?0:1),f=choice?f1:f0;
    for(const[t,a]of Object.entries(f.coefficients))acc(c,t,mul(Q(sign),a));
    constant=add(constant,mul(Q(sign),f.constant));chosen.push({sign,X,Y,type,choice,bounds:f.refs});
   }
   const f={coefficients:c,constant},value=evalAt(f,point);
   if(value<-tolerance)candidates.push({c,constant,value,origin:{kind:"product_linear_envelope",relation:p.relation,orientation,products:chosen}});
  }
  candidates.sort((a,b)=>a.value-b.value);
  let added=0;
  for(const t of candidates){if(added>=limit)break;if(append(t.c,t.constant,t.origin)!==null)added++;}
  return{violated:candidates.length,added};
 }
 function recover(weights,{scales=[100,1000,10000,100000,1000000,10000000,100000000,1000000000]}={}){
  const maximum=Math.max(0,...weights.filter(Number.isFinite));if(!(maximum>0))return null;
  for(const threshold of [0,1e-10,1e-8,1e-6])for(const scale of scales){
   const selected=[];const c={};let constant=zero;
   weights.forEach((w,i)=>{if(!Number.isFinite(w)||w<=threshold*maximum)return;const v=BigInt(Math.max(0,Math.round(scale*w/maximum)));if(!v)return;selected.push([i,String(v)]);const f=factors[i];constant=add(constant,mul(Q(v),Q(f.constant)));for(const[t,a]of Object.entries(f.coefficients))acc(c,t,mul(Q(v),Q(a)));});
   const sum={constant:str(constant),coefficients:Object.fromEntries(Object.entries(c).filter(([,a])=>cmp(a,zero)!==0).map(([t,a])=>[t,str(a)]))},ran=range(sum);
   if(cmp(ran.hi,zero)<0)return{weights:selected,factors:selected.map(([i])=>({index:i,...factors[i]})),sum,upper:str(ran.hi),scale,threshold,
      box:Object.fromEntries(Object.keys(sum.coefficients).map(t=>[t,{lo:boundRefs(t,"lo"),hi:boundRefs(t,"hi")}]))};
  }
  return null;
 }

 function proveBound(weights,target,side,{scales=[1000,10000,100000,1000000,10000000,100000000],minimumGain="1/1000000"}={}){
  const direction=side==="hi"?one:neg(one),old=B(target,side),gain=Q(minimumGain);
  let best=null;
  for(const scale of scales){
   const selected=[],c={[target]:mul(Q(scale),direction)};let constant=zero,bad=false;
   weights.forEach((w,i)=>{if(!Number.isFinite(w)||w<=0)return;const rounded=Math.round(scale*w);if(!Number.isSafeInteger(rounded)){bad=true;return;}const v=BigInt(Math.max(0,rounded));if(!v)return;selected.push([i,String(v)]);const f=factors[i];constant=add(constant,mul(Q(v),Q(f.constant)));for(const[t,a]of Object.entries(f.coefficients))acc(c,t,mul(Q(v),Q(a)));});
   if(bad)continue;
   const sum={constant:str(constant),coefficients:Object.fromEntries(Object.entries(c).filter(([,a])=>cmp(a,zero)!==0).map(([t,a])=>[t,str(a)]))},ran=range(sum),raw=div(ran.hi,Q(scale));
   const value=side==="hi"?R.ceil(raw):R.floor(neg(raw)),improvement=side==="hi"?sub(old,value):sub(value,old);
   if(cmp(improvement,gain)<0)continue;
   if(best&&cmp(improvement,Q(best.improvement))<=0)continue;
   best={target,side,value:str(value),old:str(old),improvement:str(improvement),weights:selected,
    factors:selected.map(([i])=>({index:i,...factors[i]})),sum,upper:str(ran.hi),objective_weight:String(scale),
    box:Object.fromEntries(Object.keys(sum.coefficients).map(t=>[t,{lo:boundRefs(t,"lo"),hi:boundRefs(t,"hi")}]))};
  }
  return best;
 }
 return{names,bounds,factors,products,separate,recover,range,append,proveBound};
}
return{make};
})()
