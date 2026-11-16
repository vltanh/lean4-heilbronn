/* Exact C1 continuation replay. Run:
 * node n10/discovery/c1_js_threecap_assemble.js
 *
 * This reconstructs the saved C1 search frontier from separately committed
 * exact certificates. Discovery only; neither the C1 count nor HP11-C1 is closed.
 */
"use strict";
const fs=require("node:fs"),path=require("node:path");
const dir=__dirname;
require(path.join(dir,"c1_js_threecap_engine.js"));
require(path.join(dir,"c1_js_threecap_replay.js"));
require(path.join(dir,"c1_js_threecap_linear_replay.js"));
const read=(name)=>JSON.parse(fs.readFileSync(path.join(dir,name),"utf8"));
const state=read("c1_js_threecap_frontier.json");
const audit=(name,expected)=>{
 const report=C1RTL_CHECK.check(state);
 if(JSON.stringify(report)!==JSON.stringify(expected))throw Error(name+" audit discrepancy: "+JSON.stringify(report));
 console.log(name,JSON.stringify(report));
};
for(const [name,prev] of [
 ["c1_js_threecap_extension_01.json",null],
 ["c1_js_threecap_extension_02.json","c1_js_threecap_extension_01.json"]
]){
 const p=read(name);
 if(p.type!=="C1-RTL-exact-frontier-extension"||p.previous!==undefined&&p.previous!==prev)
   throw Error("bad extension ancestry: "+name);
 for(const [id,node] of Object.entries(p.nodes)){
   if(Object.hasOwn(state.nodes,id))throw Error("overwritten node "+id);
   state.nodes[id]=node;
 }
 state.queue=p.queue;
 audit(name,p.audit);
}
const last=read("c1_js_threecap_leaf_rmmmmmmppmppmmp.json");
if(last.path!=="rmmmmmmppmppmmp"||last.proof.kind!=="linear")throw Error("unexpected leaf");
const pos=state.queue.findIndex(x=>x.id===last.path&&
 JSON.stringify(x.assign)===JSON.stringify(last.proof.assign));
if(pos<0||Object.hasOwn(state.nodes,last.path))throw Error("leaf not in frontier");
state.queue.splice(pos,1);state.nodes[last.path]=last.proof;
const result=C1RTL_CHECK.check(state);
if(result.splits!==31||result.area!==6||result.linear!==17||result.open!==9||result.complete)
 throw Error("unexpected final state "+JSON.stringify(result));
console.log("continued C1 frontier",JSON.stringify(result));
