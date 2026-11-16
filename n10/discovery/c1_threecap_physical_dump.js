const fs=require('fs'), path=require('path');
const root=process.cwd(), dir=path.join(root,'n10/discovery');
require(path.join(dir,'c1_js_threecap_engine.js'));
require(path.join(dir,'c1_js_threecap_replay.js'));
require(path.join(dir,'c1_js_threecap_linear_replay.js'));
const read=f=>JSON.parse(fs.readFileSync(path.join(dir,f),'utf8'));
const state=read('c1_js_threecap_frontier.json');
for(let i=1;i<=6;i++){
 const p=read('c1_js_threecap_extension_'+String(i).padStart(2,'0')+'.json');
 Object.assign(state.nodes,p.nodes);
 for(const name of p.attach||[]){const v=read(name);state.nodes[v.path]=v.proof;}
 state.queue=p.queue;
}
const workspace=process.env.C1_PHYSICAL_WORKSPACE||'n10/discovery/c1_physical_work';
fs.mkdirSync(workspace,{recursive:true});
fs.writeFileSync(path.join(workspace,'state.json'),JSON.stringify(state));
const base=C1RTL.fresh();
for(const node of [{id:'root',assign:{}},...state.queue]){
 const cl=C1RTL.closure(node.assign), a=C1RTL.makeArea(cl.kn,cl.meshes);
 const ar=C1RTL.propagate(a,16,20000);
 fs.writeFileSync(path.join(workspace,node.id+'.json'),JSON.stringify({
  ...node,signs:cl.kn,steps:cl.steps,meshes:cl.meshes,terminal:cl.terminal,
  box:C1RTL.box.map(b=>b.map(String)),vars:C1RTL.vars,labels:C1RTL.labels,
  polynomials:C1RTL.polys,area:ar
 }));
 console.log(node.id,Object.keys(cl.kn).length,ar.updates.length,ar.end);
}
