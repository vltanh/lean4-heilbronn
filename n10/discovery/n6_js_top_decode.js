(function decodeN6TopDiscovery(manifest,parts){
 if(manifest.format!=="n6-top-discovery-dag-v1")throw Error("wrong archive format");
 let nodes=[];
 for(const part of parts){if(part.start!==nodes.length)throw Error("noncontiguous archive part");nodes.push(...part.nodes);}
 if(nodes.length!==manifest.nodeCount)throw Error("wrong node count");
 const values=[];
 function prior(id,at){if(!Number.isInteger(id)||id<0||id>=at)throw Error("invalid backward reference");return values[id];}
 for(let i=0;i<nodes.length;i++){
  const[tag,payload]=nodes[i];let value;
  if(tag==="null")value=null;
  else if(tag==="s"){if(typeof payload!=="string")throw Error("bad string");value=payload;}
  else if(tag==="n"){if(typeof payload!=="number"||!Number.isFinite(payload))throw Error("bad number");value=payload;}
  else if(tag==="b"){if(typeof payload!=="boolean")throw Error("bad boolean");value=payload;}
  else if(tag==="a")value=Object.freeze(payload.map(id=>prior(id,i)));
  else if(tag==="o"){
   value=Object.create(null);for(const[k,v]of payload){const key=prior(k,i);if(typeof key!=="string"||Object.prototype.hasOwnProperty.call(value,key))throw Error("bad object key");value[key]=prior(v,i);}Object.freeze(value);
  }else throw Error("unknown node tag");
  values.push(value);
 }
 const roots=Object.create(null);
 for(const[name,id]of Object.entries(manifest.roots)){if(!Number.isInteger(id)||id<0||id>=values.length)throw Error("bad root");roots[name]=values[id];}
 return{roots:Object.freeze(roots),clone:name=>JSON.parse(JSON.stringify(roots[name]))};
})
