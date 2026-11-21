globalThis.irrtPhysicalFactors=function(engine,input,kn,scalar=null){
 const {q}=eval(load("exact_source")),out=[];
 const terms=(poly,sg,bound,lower)=>{const p={};for(const[m,c]of Object.entries(poly))p[m]=q(c*sg*(lower?1:-1));p[""]=(p[""]||q(0)).add(q(bound).mul(lower?-1:1));return Object.entries(p).filter(([,v])=>v.cmp(0)).map(([m,v])=>[m?m.split(",").map(Number):[],v.toString()]);};
 for(const t of engine.triangles)if(kn[t]){
  for(const side of["lo","hi"]){const value=scalar?scalar.final[t][side]:input[side][t].toString();out.push({name:side+"_"+t,terms:terms(engine.polys[t],kn[t],value,side==="lo"),source:scalar?["area_chain",t,side]:["area_initial",t,side,value,input.witness[side+"_"+t]]});}
 }
 const linear=(co,rhs,name,source)=>{const p={"":q(rhs).neg()};for(const[t,c]of Object.entries(co))for(const[m,v]of Object.entries(engine.polys[t]))p[m]=(p[m]||q(0)).add(q(c).mul(kn[t]).mul(v));out.push({name,source,terms:Object.entries(p).filter(([,v])=>v.cmp(0)).map(([m,v])=>[m?m.split(",").map(Number):[],v.toString()])});};
 for(let i=0;i<input.relations.length;i++){const x=input.relations[i],r=x.rel;if(r[0]==="linear")linear(r[1],r[2],"linear_"+i,["relation",i]);if(r[0]==="quad")linear({[r[1]]:1,[r[2]]:1},r[3],"quad_"+i,["relation",i]);}
 const index=Object.fromEntries(engine.vars.map((v,i)=>[v,i]));
 const simple=(name,monomials)=>out.push({name,source:["fixed",name],terms:monomials.map(([vs,c])=>[vs.map(v=>index[v]),c])});
 for(const[a,b]of[["h","e"],["c","f"],["e","a"],["f","b"]])simple(a+"_"+b,[[[a],"1"],[[b],"-1"]]);
 simple("side_support",[[["e"],"1"],[["e","b"],"-1"],[[],"-347/500"]]);
 simple("lower_contacts",[[["h","c"],"1"],[[],"-93/250"]]);
 simple("top_budget",[[[],"907/1000"],[["e"],"-1"],[["f"],"-1"],[["e","f"],"1"]]);
 simple("inner_x_lower",[[["j"],"11"],[["c"],"-5"],[["r"],"-3"],[[],"-3"]]);
 simple("inner_x_upper",[[["j"],"-11"],[["c"],"3"],[["r"],"3"],[[],"5"]]);
 simple("inner_y_lower",[[["k"],"11"],[["e"],"-3"],[["w"],"-3"]]);
 simple("inner_y_upper",[[["k"],"-11"],[["e"],"5"],[["w"],"3"]]);
 return out;
}