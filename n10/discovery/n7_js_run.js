(function createN7CentralDiscoveryRunner(){
 const G=eval(load("n7SignJS")),A=eval(load("n7AdvancedSignsJS"));
 const B=eval(load("n7AreaBuilderJS")),R=eval(load("scalarAreaJSCore"));
 const P=eval(load("n7PhysicalFactorJS")),F=eval(load("physicalBoxContractorJS"));
 const names=["a","b","c","d","e","f","g","h","z","x","y","u","v"];
 function run(cell,extra,{initialState=null,box=null,maxStages=6,areaRounds=60,areaMaxUpdates=10000,boxRounds=6,boxMaxSteps=1000}={}){
   if(!["CA","CB"].includes(cell))throw Error("Unknown central lower cell");
   const premises=["ACG+","BGH+",...extra],stages=[];
   let state=A.advance(initialState||G.make(premises)),closed=state.terminal?{kind:"geometry",terminal:state.terminal}:null;
   for(let stage=0;stage<maxStages&&!closed;stage++){
     const model=B.build(cell,state,{box}),res=R.propagate(model.initial,model.relations,{rounds:areaRounds,maxUpdates:areaMaxUpdates});
     if(res.packet.contradiction){const packet=R.prune(res.packet);stages.push({state,model,res,packet});closed={kind:"scalar",updates:packet.updates.length};break;}
     const factors=P.factors(model,res),refined=F.refine(factors.factors,model.box.low,model.box.high,{variables:names,rounds:boxRounds,maxSteps:boxMaxSteps,maxVertices:256});
     stages.push({state,model,res,factors,refined});
     if(refined.contradiction){closed={kind:"box",steps:refined.steps.length,terminal:refined.contradiction};break;}
     const next=A.advance(state,res.final);
     if(next.terminal){closed={kind:"geometry-feedback",terminal:next.terminal};state=next;break;}
     const gains=refined.steps.length||Object.keys(next.signs).length>Object.keys(state.signs).length;
     state=next;box={low:refined.low,high:refined.high};if(!gains)break;
   }
   return{extra:premises,state,stages,summary:{cell,closed,known:Object.keys(state.signs).length,stages:stages.map(t=>({signs:Object.keys(t.state.signs).length,area:t.res.packet.updates.length,box:t.refined?.steps.length}))}};
 }
 return{run,variables:names};
})()
