globalThis.C1RTL_PACK=(()=>{
function build(id,leaf,stage,certificate){
 const refs=new Set(),relationIds=new Set();
 for(const box of Object.values(certificate.box))for(const side of["lo","hi"])refs.add(box[side].ref);
 for(const f of certificate.factors){relationIds.add(f.origin.relation);for(const p of f.origin.products??[])for(const b of p.bounds)refs.add(b.ref)}
 const rows=Object.fromEntries(stage.updates.map(r=>[r.id,r])),needed=new Set(),todo=[...refs];
 while(todo.length){const id=todo.pop();if(needed.has(id))continue;needed.add(id);if(rows[id])todo.push(...rows[id].sources);else if(!stage.initial[id])throw Error("missing certificate source "+id)}
 const kept=stage.updates.filter(r=>needed.has(r.id)),ids=[...new Set(kept.map(r=>r.relation))].sort((a,b)=>a-b),remap=Object.fromEntries(ids.map((x,i)=>[x,i]));
 return{id,leaf,stage:{initial:Object.fromEntries(Object.entries(stage.initial).filter(([id])=>needed.has(id))),relations:ids.map(i=>stage.relations[i]),updates:kept.map(r=>({...r,relation:remap[r.relation]})),targets:[...refs]},relations:Object.fromEntries([...relationIds].map(i=>[i,stage.relations[i]])),certificate};
}
function bounds(stage){const refs={};for(const side of["lo","hi"])for(const t of Object.keys(stage.final))refs[side+":"+t]=side+"_"+t;for(const row of stage.updates)refs[row.side+":"+row.triangle]=row.id;return{final:Object.fromEntries(Object.entries(stage.final).map(([t,b])=>[t,Object.fromEntries(["lo","hi"].map(side=>[side,{value:b[side],ref:refs[side+":"+t]}]))]))};}
return{build,bounds};
})();