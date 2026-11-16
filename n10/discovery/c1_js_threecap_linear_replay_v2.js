globalThis.C1RTL_LINEAR_CHECK=(()=>{
const R=C1RTL.R,zero=R(0),one=R(1),need=(b,m)=>{if(!b)throw Error("C1 linear certificate: "+m)};
const canon=o=>JSON.stringify(Object.entries(o).filter(([,v])=>R(v).cmp(0)!==0).map(([t,v])=>[t,R(v).toString()]).sort(([a],[b])=>a.localeCompare(b)));
function check(packet){
 const {leaf,stage,certificate,relations}=packet,kn=C1RTL_CHECK.geometry(leaf);C1RTL_CHECK.arithmetic(stage,kn,leaf.meshes,true);
 const records={...stage.initial};for(const row of stage.updates)records[row.id]=row;
 for(const row of Object.values(relations))C1RTL_CHECK.relation(row,kn,leaf.meshes);
 const refValue=ref=>{need(records[ref],"missing ref "+ref);return R(records[ref].value)};
 function bound(b){const row=records[b.ref];need(row&&row.triangle===b.triangle&&row.side===b.side&&R(row.value).cmp(b.value)===0,"bound ref");return R(row.value)}
 const source=(id)=>{need(relations[id],"missing relation");return relations[id].rel};
 const add=(o,t,v)=>{o[t]=(o[t]||zero).add(v);if(o[t].cmp(0)===0)delete o[t]};
 let sum={},constant=zero,terms=0;const seen=new Set();
 for(const[index,weight]of certificate.weights){
  need(!seen.has(index)&&/^\d+$/.test(weight)&&BigInt(weight)>0n,"integer multiplier");seen.add(index);
  const factor=certificate.factors.find(f=>f.index===index);need(factor,"factor");const origin=factor.origin,c={};let k=zero;
  if(origin.kind==="fan"){const r=source(origin.relation);need(r[0]==="fan"&&[1,-1].includes(origin.direction),"fan origin");add(c,r[1],R(origin.direction));for(const t of r.slice(2))add(c,t,R(-origin.direction))}
  else if(origin.kind==="four_point"){const v=[...origin.vertices];need(v.length===4&&new Set(v).size===4&&[1,-1].includes(origin.direction),"four-point origin");const [A,B,C,D]=v;for(const [w,sg]of [[A+B+C,1],[A+C+D,1],[A+B+D,-1],[B+C+D,-1]]){const t=C1RTL.canon(w)[0],ss=C1RTL.get(kn,w);need(ss!==0,"four-point signed premise");add(c,t,R(sg*origin.direction*ss));}}
  else if(origin.kind==="linear"){const r=source(origin.relation);need(r[0]==="linear","linear origin");for(const[t,v]of Object.entries(r[1]))add(c,t,R(v));k=R(r[2]).neg()}
  else if(origin.kind==="quad"){const r=source(origin.relation);need(r[0]==="quad","quad origin");add(c,r[1],one);add(c,r[2],one);k=R(r[3]).neg()}
  else if(origin.kind==="product_linear_envelope"){
   const r=source(origin.relation),list=r[0]==="plu"?[[1,r[1],r[2]],[-1,r[3],r[4]],[-1,r[5],r[6]]]:r[0]==="balance"?r[1]:null;
   need(list&&[1,-1].includes(origin.orientation)&&origin.products.length===list.length,"product origin");
   list.forEach(([sg0,X,Y],i)=>{const p=origin.products[i],sg=sg0*origin.orientation,type=sg>0?"upper":"lower";need(p.sign===sg&&p.X===X&&p.Y===Y&&p.type===type&&[0,1].includes(p.choice),"product selection");
    const sides=type==="lower"?(p.choice===0?["lo","lo"]:["hi","hi"]):(p.choice===0?["hi","lo"]:["lo","hi"]);
    need(p.bounds.length===2&&p.bounds[0].triangle===X&&p.bounds[0].side===sides[0]&&p.bounds[1].triangle===Y&&p.bounds[1].side===sides[1],"product endpoints");
    const A=bound(p.bounds[0]),B=bound(p.bounds[1]);add(c,Y,A.mul(sg));add(c,X,B.mul(sg));k=k.sub(A.mul(B).mul(sg));
   });
  }else throw Error("unimplemented factor kind "+origin.kind);
  need(canon(c)===canon(factor.coefficients)&&k.cmp(factor.constant)===0,"factor expansion");
  const n=R(weight);for(const[t,v]of Object.entries(c))add(sum,t,v.mul(n));constant=constant.add(k.mul(n));terms++;
 }
 need(terms===certificate.factors.length&&canon(sum)===canon(certificate.sum.coefficients)&&constant.cmp(certificate.sum.constant)===0,"weighted sum");
 let upper=constant;
 for(const[t,c]of Object.entries(sum)){const box=certificate.box[t];need(box,"final box");const lo=bound(box.lo),hi=bound(box.hi);need(lo.cmp(hi)<=0,"nonempty area interval");upper=upper.add(c.mul(c.cmp(0)>0?hi:lo))}
 need(upper.cmp(certificate.upper)===0&&upper.cmp(0)<0,"negative exact upper");
 return{terms,upper:upper.toString(),stageUpdates:stage.updates.length,relations:Object.keys(relations).length};
}
return{check};
})();