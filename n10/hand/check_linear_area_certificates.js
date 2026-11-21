/* Exact product envelopes and nested-fan identities, using integer polynomials only. */
globalThis.LINEAR_AREA_CHECK=(()=>{
const V=x=>({[x]:1n});
const add=(...ps)=>{const out={};for(const p of ps)for(const[m,c]of Object.entries(p))out[m]=(out[m]||0n)+c;return Object.fromEntries(Object.entries(out).filter(([,c])=>c))};
const neg=p=>Object.fromEntries(Object.entries(p).map(([m,c])=>[m,-c]));
const sub=(p,q)=>add(p,neg(q));
const mul=(p,q)=>{const out={};for(const[m,c]of Object.entries(p))for(const[n,d]of Object.entries(q)){const k=[...m.split(","),...n.split(",")].filter(Boolean).sort().join(",");out[k]=(out[k]||0n)+c*d}return Object.fromEntries(Object.entries(out).filter(([,c])=>c))};
const X=V("X"),Y=V("Y"),lX=V("lX"),uX=V("uX"),lY=V("lY"),uY=V("uY"),XY=mul(X,Y);
const L0=sub(add(mul(lX,Y),mul(lY,X)),mul(lX,lY));
const L1=sub(add(mul(uX,Y),mul(uY,X)),mul(uX,uY));
const U0=sub(add(mul(uX,Y),mul(lY,X)),mul(uX,lY));
const U1=sub(add(mul(lX,Y),mul(uY,X)),mul(lX,uY));
const rows=[
["lower0",sub(sub(XY,L0),mul(sub(X,lX),sub(Y,lY)))],
["lower1",sub(sub(XY,L1),mul(sub(uX,X),sub(uY,Y)))],
["upper0",sub(sub(U0,XY),mul(sub(uX,X),sub(Y,lY)))],
["upper1",sub(sub(U1,XY),mul(sub(X,lX),sub(uY,Y)))]
];

const C=n=>n?{"":BigInt(n)}:{},x=V("x"),y=V("y"),u=V("u"),v=V("v"),unit=C(1);
const S=unit,T=y,b=sub(sub(unit,x),y),c=x;
const alpha=add(mul(sub(x,unit),v),neg(mul(y,sub(u,unit))));
const beta=sub(mul(y,u),mul(x,v)),gamma=v;
const cross=sub(add(mul(x,v),mul(sub(unit,y),u)),x);
const d0=V("d0"),beta0=V("beta0"),gamma0=V("gamma0");
for(const[sign,face,middle]of[[-1,c,beta],[1,b,alpha]]){
 const d=sign===1?cross:neg(cross),product=mul(T,face);
 rows.push(["nested_identity_"+sign,sub(product,add(mul(T,d),mul(middle,add(b,c)),mul(gamma,face)))]);
 const expression=sub(product,add(mul(sub(d0,beta0),T),mul(beta0,S),mul(gamma0,face)));
 const remainder=add(mul(T,sub(d,d0)),mul(sub(middle,beta0),add(b,c)),mul(sub(gamma,gamma0),face));
 rows.push(["nested_remainder_"+sign,sub(expression,remainder)]);
}
for(const[name,poly]of rows)if(Object.keys(poly).length)throw Error(name+" identity failed");
return{identities:rows.length,passed:true};
})();
if(typeof require==="function"&&typeof module!=="undefined"&&require.main===module)
 console.log(JSON.stringify(LINEAR_AREA_CHECK));
