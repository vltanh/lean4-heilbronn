(()=>{
function feedback(api,loc,word,baseExtra=[],roundLimit=30){
 const stages=[],extra=baseExtra.slice();
 for(let round=0;round<roundLimit;round++){
  const r=api.run(loc,word,extra);
  const stage={result:r,forced:[]};stages.push(stage);
  if(r.closed)return{loc,word,baseExtra,closed:true,stages,reason:r.geometric?.reason||r.reason};
  const latest={};
  for(const rec of [...r.initial,...r.updates]){
   latest[rec.triangle] ||= {};
   latest[rec.triangle][rec.direction]={value:api.parse(rec.value),id:rec.id};
  }
  for(const [hull,bounds] of Object.entries(latest)){
   const orientation=api.sg(r.known,hull);
   const occupants=Array.from(api.labels).filter(p=>api.inside(r.known,hull,p));
   if(occupants.length>=3)continue;
   const nextCost=api.mul(api.cost(occupants.length+1),api.s);
   if(api.cmp(bounds.hi.value,nextCost)>=0)continue;
   for(const p of api.labels)if(!hull.includes(p)&&!occupants.includes(p)){
    const tests=api.edges(hull).map(ed=>({word:ed+p,sign:api.sg(r.known,ed+p)}));
    if(tests.filter(x=>x.sign===orientation).length!==2||tests.filter(x=>!x.sign).length!==1)continue;
    const target=tests.find(x=>!x.sign).word;
    const [key,par]=api.canon(target);const value=-orientation*par;
    const tok=key+(value>0?"+":"-");
    if(!stage.forced.some(x=>x.token===tok)){
     stage.forced.push({token:tok,outer:hull,occupants,point:p,upper:api.str(bounds.hi.value),upperId:bounds.hi.id,nextCost:api.str(nextCost)});
     extra.push(tok);
    }
   }
  }
  if(!stage.forced.length)return{loc,word,baseExtra,closed:false,stages};
 }
 return{loc,word,baseExtra,closed:false,truncated:true,stages};
}
function chooseScalarSplit(api,result){
 const kn=result.known,scores={};
 const alphabet=api.labels;
 function comb3(xs){const out=[];for(let i=0;i<xs.length;i++)for(let j=i+1;j<xs.length;j++)for(let k=j+1;k<xs.length;k++)out.push(xs[i]+xs[j]+xs[k]);return out;}
 for(const tri of comb3(alphabet)){
  const orientation=api.sg(kn,tri);if(!orientation)continue;
  const occupied=Array.from(alphabet).filter(p=>api.inside(kn,tri,p)).length;
  const weight=[1,9,30,100][occupied]||100;
  for(const p of alphabet)if(!tri.includes(p)){
   const tests=api.edges(tri).map(ed=>({word:ed+p,value:orientation*api.sg(kn,ed+p)}));
   if(tests.filter(x=>x.value===0).length!==1||tests.some(x=>x.value<0))continue;
   const t=tests.find(x=>!x.value),[key,par]=api.canon(t.word),wanted=orientation*par;
   scores[key] ||= {plus:0,minus:0};scores[key][wanted>0?"plus":"minus"]+=weight;
  }
 }
 let choices=Object.entries(scores).map(([word,v])=>({word,score:Math.min(v.plus,v.minus)+.2*Math.max(v.plus,v.minus),total:v.plus+v.minus}));
 choices.sort((a,b)=>b.score-a.score||b.total-a.total||a.word.localeCompare(b.word));
 if(choices.length)return choices[0].word;
 const wanted=["PQR","PQS","PRS","HPQ","HPR","HPS","CPQ","CPR","CPS","APQ","APR","APS","BPQ","BPR","BPS"];
 return wanted.find(w=>!api.sg(kn,w))||comb3(alphabet).find(w=>!api.sg(kn,w));
}
function areaLastBounds(result,packet,stage){
 const out={};for(const b of[...result.initial,...result.updates])out[b.triangle+"_"+b.direction]={triangle:b.triangle,direction:b.direction,value:b.value,origin:{packet,stage,id:b.id}};
 return Object.values(out).sort((a,b)=>(a.triangle+a.direction).localeCompare(b.triangle+b.direction));
}
function coupledRun(api,loc,word,extra=[],limit=15) {
 const stages=[];let options={};let previous="";
 for(let stage=0;stage<limit;stage++){
  const r=api.run(loc,word,extra,options);stages.push(r);
  if(r.closed)return{loc,word,extra,closed:true,stages};
  const latest={};
  for(const b of[...r.initial,...r.updates])latest[b.triangle+"_"+b.direction]={triangle:b.triangle,direction:b.direction,value:b.value,sourceStage:stage,sourceId:b.id};
  const areaBounds=Object.values(latest).sort((a,b)=>(a.triangle+a.direction).localeCompare(b.triangle+b.direction));
  const signature=JSON.stringify({box:r.box,areas:areaBounds.map(b=>[b.triangle,b.direction,b.value])});
  if(signature===previous)return{loc,word,extra,closed:false,converged:true,stages};
  previous=signature;options={box:r.box,areaBounds};
 }
 return{loc,word,extra,closed:false,stages};
}
function coupledBranch(api,base,basePacket,variable,cut,side,limit=20){
 const last=base.stages.at(-1),index="a b c e f h p q u v r w j k".split(" ").indexOf(variable);
 const box={low:last.box.low.slice(),high:last.box.high.slice()};
 const c=api.parse(cut);if(side==="low")box.high[index]=api.str(c);else box.low[index]=api.str(c);
 const id=basePacket+"/"+variable+(side==="low"?"<=":">=")+cut;
 let options={box,areaBounds:areaLastBounds(last,basePacket,base.stages.length-1)},previous="";
 const stages=[];
 for(let stage=0;stage<limit;stage++){
  const r=api.run(base.loc,base.word,base.extra,options);stages.push(r);
  if(r.closed)return{id,loc:base.loc,word:base.word,extra:base.extra,branch:{parent:basePacket,variable,cut,side},closed:true,stages};
  const areaBounds=areaLastBounds(r,id,stage);
  const signature=JSON.stringify({box:r.box,areas:areaBounds.map(b=>[b.triangle,b.direction,b.value])});
  if(signature===previous)return{id,loc:base.loc,word:base.word,extra:base.extra,branch:{parent:basePacket,variable,cut,side},closed:false,converged:true,stages};
  previous=signature;options={box:r.box,areaBounds};
 }
 return{id,loc:base.loc,word:base.word,extra:base.extra,branch:{parent:basePacket,variable,cut,side},closed:false,stages};
}
function coupledContinue(api,base,basePacket,limit=20,suffix="continue"){
 const last=base.stages.at(-1),id=basePacket+"/"+suffix,stages=[];
 let options={box:last.box,areaBounds:areaLastBounds(last,basePacket,base.stages.length-1)},previous="";
 for(let stage=0;stage<limit;stage++){
  const r=api.run(base.loc,base.word,base.extra,options);stages.push(r);
  if(r.closed)return{id,parent:basePacket,loc:base.loc,word:base.word,extra:base.extra,closed:true,stages};
  const areaBounds=areaLastBounds(r,id,stage);
  const signature=JSON.stringify({box:r.box,areas:areaBounds.map(b=>[b.triangle,b.direction,b.value])});
  if(signature===previous)return{id,parent:basePacket,loc:base.loc,word:base.word,extra:base.extra,closed:false,converged:true,stages};
  previous=signature;options={box:r.box,areaBounds};
 }
 return{id,parent:basePacket,loc:base.loc,word:base.word,extra:base.extra,closed:false,stages};
}
return {feedback,chooseScalarSplit,areaLastBounds,coupledRun,coupledBranch,coupledContinue};
})()
