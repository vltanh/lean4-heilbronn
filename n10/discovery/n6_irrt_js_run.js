globalThis.runIRRTPhysicalBatch=function(state,count=1){
 const reports=[];
 const fixedSource=load("irrt_discovery_source"),contractor=eval(load("physical_box_helper_source"));eval(load("irrt_physical_builder"));
 for(let n=0;n<count&&state.queue.length;n++){
  const item=state.queue.pop();eval(fixedSource);
  const first=IRRT.closure(item.assign),initialBox=IRRT.box.map(row=>row.map(String));
  if(first.terminal){state.nodes[item.id]={kind:"geometry",assign:item.assign,geometry:first};reports.push([item.id,"geometry"]);continue;}
  const input=IRRT.makeArea(first.kn,first.meshes),factors=irrtPhysicalFactors(IRRT,input,first.kn);
  const trace=contractor.refine(factors,initialBox.map(x=>x[0]),initialBox.map(x=>x[1]),{rounds:18,maxSteps:3000,variables:IRRT.vars,maxVertices:256});
  const physical={box:initialBox,geometry:first,relations:input.relations,factors,trace};
  if(trace.contradiction){state.nodes[item.id]={kind:"physical",assign:item.assign,physical};reports.push([item.id,"physical",trace.steps.length]);continue;}
  const refinedBox=trace.low.map((lo,i)=>[lo,trace.high[i]]),a=fixedSource.indexOf("const box=["),b=fixedSource.indexOf("if(box.some",a);
  const newSource=fixedSource.slice(0,a)+"const box="+JSON.stringify(refinedBox)+".map(row=>row.map(R));\n"+fixedSource.slice(b);eval(newSource);
  const second=IRRT.closure(item.assign);
  if(second.terminal){state.nodes[item.id]={kind:"refined_geometry",assign:item.assign,physical,refinedBox,geometry:second};reports.push([item.id,"refined_geometry",trace.steps.length]);continue;}
  const area=IRRT.propagate(IRRT.makeArea(second.kn,second.meshes),64,16000);
  if(area.end){state.nodes[item.id]={kind:"area",assign:item.assign,physical,refinedBox,geometry:second,proof:IRRT.prune(area)};reports.push([item.id,"area",trace.steps.length,state.nodes[item.id].proof.updates.length]);continue;}
  const preference=["QRS","PRS","CPQ","APQ","ARS","CFP","AFP","AEP","FPR","FPS","HPR","HPS"];
  const split=preference.find(t=>!IRRT.get(second.kn,t))||IRRT.triangles.find(t=>!second.kn[t]);
  if(!split){state.nodes[item.id]={kind:"open",assign:item.assign,physical,refinedBox,geometry:second,area};reports.push([item.id,"open",trace.steps.length,area.updates.length]);continue;}
  state.nodes[item.id]={kind:"split",assign:item.assign,triangle:split};
  state.queue.push({id:item.id+"p",assign:{...item.assign,[split]:1}},{id:item.id+"m",assign:{...item.assign,[split]:-1}});
  reports.push([item.id,"split",split,trace.steps.length,area.updates.length]);
 }
 state.done=state.queue.length===0;return reports;
};