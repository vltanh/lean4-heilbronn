const fs=require('fs'),path=require('path'),dir=path.join(process.cwd(),'n10/discovery');
require(path.join(dir,'c1_js_threecap_engine.js'));
require(path.join(dir,'c1_js_threecap_replay.js'));
const node=JSON.parse(fs.readFileSync(process.argv[2],'utf8'));
const cl=C1RTL.closure(node.assign);
let ar=null;
if(!cl.terminal){ar=C1RTL.propagate(C1RTL.makeArea(cl.kn,cl.meshes),16,20000);
 if(ar.end){const proof=C1RTL.prune(ar);C1RTL_CHECK.arithmetic(proof,cl.kn,cl.meshes);ar=proof;}}
fs.writeFileSync(process.argv[2],JSON.stringify({...node,
 signs:cl.kn,steps:cl.steps,meshes:cl.meshes,terminal:cl.terminal,
 box:C1RTL.box.map(b=>b.map(String)),vars:C1RTL.vars,labels:C1RTL.labels,
 polynomials:C1RTL.polys,area:ar
}));
