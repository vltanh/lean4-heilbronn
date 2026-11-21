function packRun(run){
 const out={extra:run.extra||null,summary:run.summary||null,final_state:run.state||null,stages:[]};
 for(const stage of run.stages||[]){
   const packed={state:stage.state,cell:stage.model.cell||run.summary?.cell||null,source_box:stage.model.box,
     area_packet:stage.res.packet,area_geometry:stage.model.witnesses,final_area_bounds:stage.res.final};
   if(stage.packet)packed.pruned_contradiction=stage.packet;
   if(stage.refined){
     const used=new Set(stage.refined.steps.map(r=>r.factor));
     if(stage.refined.contradiction)used.add(stage.refined.contradiction.factor);
     const ids=[...used].sort((a,b)=>a-b),mapping=new Map(ids.map((v,i)=>[v,i]));
     packed.physical_factors=ids.map(i=>({...stage.factors.factors[i],original_index:i}));
     const indices=new Set(packed.physical_factors.flatMap(f=>f.why?.relation!==undefined?[f.why.relation]:f.why?.kind==="relation"?[f.why.index]:[]));
     packed.physical_relation_sources=Object.fromEntries([...indices].map(i=>[i,{relation:stage.model.relations[i],witness:stage.model.witnesses.relations[i]}]));
     packed.refinement={...stage.refined,steps:stage.refined.steps.map(r=>({...r,factor:mapping.get(r.factor)}))};
     if(stage.refined.contradiction)packed.refinement.contradiction={...stage.refined.contradiction,factor:mapping.get(stage.refined.contradiction.factor)};
   }
   out.stages.push(packed);
 }
 return out;
}
