globalThis.C1RTL_RUNNER=(()=>{
const LP=eval(load("c1AreaLPDriverJS"));
function split(kn){const pref=["HDY","CFY","HDZ","CFZ","ODY","OFY","ODZ","OFZ","HYZ","CYZ","DYZ","FYZ","PYZ","QYZ","RYZ"];return pref.find(t=>!C1RTL.get(kn,t))||C1RTL.triangles.find(t=>!kn[t])||null}
function runLP(cl,stage,options){return LP.run({signs:cl.kn,relations:stage.relations.map(r=>r.rel)},C1RTL_PACK.bounds(stage),{rounds:options.lpRounds??5,limit:options.limit??700,tolerance:1e-8,maxMilliseconds:options.maxMilliseconds??9000,maxPivots:options.maxPivots??4500})}
function step(state,options={}){
 const node=state.queue.pop();if(!node)return null;
 const cl=C1RTL.closure(node.assign),known=Object.keys(cl.kn).length,base={assign:node.assign,steps:cl.steps,meshes:cl.meshes};
 if(cl.terminal){const record={kind:"geometry",...base,terminal:cl.terminal};C1RTL_CHECK.terminal(record,C1RTL_CHECK.geometry(record));state.nodes[node.id]=record;return{id:node.id,kind:"geometry",terminal:cl.terminal[0],known}}
 const input=C1RTL.makeArea(cl.kn,cl.meshes);let stage=C1RTL.propagate(input,0,0),lp=null,certificate=null;
 if(stage.end){const proof=C1RTL.prune(stage),record={kind:"area",...base,proof};C1RTL_CHECK.arithmetic(proof,cl.kn,cl.meshes);state.nodes[node.id]=record;return{id:node.id,kind:"area",updates:proof.updates.length,known}}
 if(known>=(options.minimumKnown??90)){lp=runLP(cl,stage,options);certificate=lp.certificate;}
 if(!certificate&&!split(cl.kn)){
  stage=C1RTL.propagate(input,options.intervalRounds??12,options.maxSteps??15000);
  if(stage.end){const proof=C1RTL.prune(stage),record={kind:"area",...base,proof};C1RTL_CHECK.arithmetic(proof,cl.kn,cl.meshes);state.nodes[node.id]=record;return{id:node.id,kind:"area",updates:proof.updates.length,known}}
  lp=runLP(cl,stage,options);certificate=lp.certificate;
 }
 if(certificate){const packet=C1RTL_PACK.build(node.id,base,stage,certificate),report=C1RTL_LINEAR_CHECK.check(packet);state.nodes[node.id]={kind:"linear",...base,packet};return{id:node.id,kind:"linear",terms:report.terms,updates:report.stageUpdates,upper:report.upper,known}}
 const tri=split(cl.kn);
 if(!tri||Object.keys(node.assign).length>=(options.maxDepth??24)){state.nodes[node.id]={kind:"open",...base,signs:cl.kn,final:stage.final,stage,lpHistory:lp?.history??[]};return{id:node.id,kind:"open",known,history:lp?.history??[]}}
 state.nodes[node.id]={kind:"split",assign:node.assign,triangle:tri};
 state.queue.push({id:node.id+"p",assign:{...node.assign,[tri]:1}},{id:node.id+"m",assign:{...node.assign,[tri]:-1}});
 return{id:node.id,kind:"split",triangle:tri,known,history:lp?.history??[]};
}
return{step};
})();