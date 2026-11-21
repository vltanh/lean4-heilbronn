(function createAreaLPDiscoveryRunner(){
 const L=eval(load("n7AreaLinearToolsJS")),P=eval(load("n7AreaLPSolverJS"));
 function run(model,area,{rounds=12,limit=1200,tolerance=1e-8,maxMilliseconds=15000,maxPivots=4000,initialFactors=[]}={}){
  const linear=L.make(model,area);for(const f of initialFactors)linear.append(f.coefficients,f.constant,f.origin);
  const history=[];let result=null,certificate=null;
  for(let round=0;round<rounds;round++){
   result=P.solve(linear.factors,linear.bounds,{maxMilliseconds,maxPivots});certificate=linear.recover(result.weights||[]);
   const row={round,factors:linear.factors.length,status:result.status,objective:result.objective,pivots:result.pivots,elapsed_ms:result.elapsed_ms};
   history.push(row);if(certificate){row.certificate_terms=certificate.weights.length;row.exact_upper=certificate.upper;break;}
   if(result.status!=="optimal")break;
   const sep=linear.separate(result.area,{limit,tolerance});row.separation=sep;if(!sep.added)break;
  }
  return{bounds:linear.bounds,factors:linear.factors,history,result,certificate};
 }
 return{run};
})()
