/* Independently replay the committed C1 continuation without a solver.
 * node n10/discovery/c1_js_threecap_assemble.js
 *
 * Discovery only: the C1 parent and its other count rows are still open.
 */
"use strict";
const fs=require("node:fs"),path=require("node:path"),dir=__dirname;
require(path.join(dir,"c1_js_threecap_engine.js"));
require(path.join(dir,"c1_js_threecap_replay.js"));
require(path.join(dir,"c1_js_threecap_linear_replay.js"));
const read=name=>JSON.parse(fs.readFileSync(path.join(dir,name),"utf8"));
const state=read("c1_js_threecap_frontier.json");
for(const [name,prev] of [
 ["c1_js_threecap_extension_01.json",null],
 ["c1_js_threecap_extension_02.json","c1_js_threecap_extension_01.json"],
 ["c1_js_threecap_extension_03.json","c1_js_threecap_extension_02.json"],
 ["c1_js_threecap_extension_04.json","c1_js_threecap_extension_03.json"],
 ["c1_js_threecap_extension_05.json","c1_js_threecap_extension_04.json"]
]){
 const p=read(name);
 if(p.type!=="C1-RTL-exact-frontier-extension" ||
 (prev!==null&&p.previous!==prev) ||
 (prev===null&&p.base_blob!=="cdeb8101b037e5481c3d5f9d9bf1b122b8678c05"))
   throw Error("wrong extension ancestry "+name);
 for(const [id,node] of Object.entries(p.nodes)){
   if(Object.hasOwn(state.nodes,id))throw Error("overwritten node "+id);
   state.nodes[id]=node;
 }
 for(const filename of p.attach||[]){
   const leaf=read(filename),id=leaf.path;
   if(Object.hasOwn(state.nodes,id))throw Error("duplicate leaf "+id);
   const queued=state.queue.find(q=>q.id===id);
   if(queued){
     if(JSON.stringify(queued.assign)!==JSON.stringify(leaf.proof.assign))
       throw Error("wrong queued assignments "+id);
   }else{
     const parent=state.nodes[id.slice(0,-1)],sg=id.endsWith("p")?1:-1;
     if(!parent||parent.kind!=="split"||JSON.stringify({
       ...parent.assign,[parent.triangle]:sg
     })!==JSON.stringify(leaf.proof.assign))throw Error("wrong split child "+id);
   }
   state.nodes[id]=leaf.proof;
 }
 state.queue=p.queue;
 const result=C1RTL_CHECK.check(state);
 if(JSON.stringify(result)!==JSON.stringify(p.audit))
   throw Error("incorrect audit "+name+" "+JSON.stringify(result));
 console.log(name,JSON.stringify(result));
}
const report=C1RTL_CHECK.check(state);
if(report.splits!==35||report.area!==8||report.linear!==22||
   report.open!==6||report.complete)throw Error("unexpected frontier");
console.log("C1 remains open with six queued nodes");
