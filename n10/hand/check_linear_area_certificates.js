/* Four exact product-envelope identities, using integer polynomials only. */
globalThis.LINEAR_AREA_CHECK=(()=>{
const V=x=>({[x]:1n});
const add=(...ps)=>{const out={};for(const p of ps)for(const[m,c]of Object.entries(p))out[m]=(out[m]||0n)+c;return Object.fromEntries(Object.entries(out).filter(([,c])=>c))};
const neg=p=>Object.fromEntries(Object.entries(p).map(([m,c])=>[m,-c]));
const sub=(p,q)=>add(p,neg(q));
const mul=(p,q)=>{const out={};for(const[m,c]of Object.entries(p))for(const[n,d]of Object.entries(q)){const k=[...m.split(","),...n.split(",")].sort().join(",");out[k]=(out[k]||0n)+c*d}return Object.fromEntries(Object.entries(out).filter(([,c])=>c))};
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
for(const[name,poly]of rows)if(Object.keys(poly).length)throw Error(name+" identity failed");
return{identities:rows.length,passed:true};
})();
if(typeof require==="function"&&typeof module!=="undefined"&&require.main===module)
 console.log(JSON.stringify(LINEAR_AREA_CHECK));
