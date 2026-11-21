(() => {
 const gcd=(a,b)=>{a=a<0n?-a:a;b=b<0n?-b:b;while(b){const t=a%b;a=b;b=t;}return a;};
 const Q=(a,b=1n)=>{if(Array.isArray(a))return a;if(typeof a==="string"){const s=a.split("/");return Q(BigInt(s[0]),s.length>1?BigInt(s[1]):1n);}a=BigInt(a);b=BigInt(b);if(!b)throw Error("zero denominator");if(b<0n){a=-a;b=-b;}const g=gcd(a,b);return[a/g,b/g];};
 const add=(x,y)=>Q(x[0]*y[1]+y[0]*x[1],x[1]*y[1]);
 const neg=x=>[-x[0],x[1]];
 const sub=(x,y)=>add(x,neg(y));
 const mul=(x,y)=>Q(x[0]*y[0],x[1]*y[1]);
 const div=(x,y)=>Q(x[0]*y[1],x[1]*y[0]);
 const cmp=(x,y)=>{const t=x[0]*y[1]-y[0]*x[1];return t<0n?-1:t>0n?1:0;};
 const str=x=>x[1]===1n?String(x[0]):String(x[0])+"/"+String(x[1]);
 const floorDiv=(a,b)=>a>=0n?a/b:-((-a+b-1n)/b);
 const floor=(x,scale=1000000n)=>Q(floorDiv(x[0]*scale,x[1]),scale);
 const ceil=(x,scale=1000000n)=>neg(floor(neg(x),scale));
 const zero=Q(0),one=Q(1);
 function propagate(initial,relations,{maxUpdates=10000,rounds=100,scale=1000000n}={}){
   const packet={initial:JSON.parse(JSON.stringify(initial)),relations:JSON.parse(JSON.stringify(relations)),updates:[]};
   const bounds={},refs={};
   for(const [id,r] of Object.entries(initial)){if(!(r.triangle in bounds)){bounds[r.triangle]={};refs[r.triangle]={};}const v=Q(r.value);if(!(r.side in bounds[r.triangle])||cmp(v,bounds[r.triangle][r.side])*(r.side==="lo"?1:-1)>0){bounds[r.triangle][r.side]=v;refs[r.triangle][r.side]=id;}}
   let stopped=false,changed=false;
   const cross=t=>{if(bounds[t]?.lo&&bounds[t]?.hi&&cmp(bounds[t].lo,bounds[t].hi)>0){packet.contradiction={triangle:t,lower:refs[t].lo,upper:refs[t].hi};stopped=true;}};
   for(const t of Object.keys(bounds))cross(t);
   function attempt(ri,rule,t,side,roles,fn){
      if(stopped||packet.updates.length>=maxUpdates)return;
      if(roles.some(([n,s])=>!bounds[n]?.[s]))return;
      const values=roles.map(([n,s])=>bounds[n][s]);
      if(["plu","support","balance"].includes(relations[ri][0])&&values.some(v=>cmp(v,zero)<=0))return;
      let raw=fn(values);if(raw===null)return;const v=side==="lo"?floor(raw,scale):ceil(raw,scale);
      if(side==="lo"&&cmp(v,zero)<=0)return;
      if(bounds[t]?.[side]&&cmp(v,bounds[t][side])*(side==="lo"?1:-1)<=0)return;
      if(!(t in bounds)){bounds[t]={};refs[t]={};}
      const id="T"+String(packet.updates.length+1).padStart(4,"0");
      packet.updates.push({id,relation:ri,rule,triangle:t,side,value:str(v),sources:roles.map(([n,s])=>refs[n][s])});
      bounds[t][side]=v;refs[t][side]=id;changed=true;cross(t);
   }
   for(let round=0;round<rounds&&!stopped&&packet.updates.length<maxUpdates;round++){
      changed=false;
      relations.forEach((r,ri)=>{
       if(r[0]==="fan"){
         const [,T,...ch]=r;
         attempt(ri,"sum",T,"lo",ch.map(t=>[t,"lo"]),v=>v.reduce(add,zero));
         attempt(ri,"upper_sum",T,"hi",ch.map(t=>[t,"hi"]),v=>v.reduce(add,zero));
         for(const t of ch){const others=ch.filter(x=>x!==t);
            attempt(ri,"sub",t,"hi",[[T,"hi"],...others.map(x=>[x,"lo"])],v=>sub(v[0],add(v[1],v[2])));
            attempt(ri,"lower_sub",t,"lo",[[T,"lo"],...others.map(x=>[x,"hi"])],v=>sub(v[0],add(v[1],v[2])));
         }
       } else if(r[0]==="plu"){
         const [,X,Y,U,V,W,Z]=r;
         for(const [t,other] of [[X,Y],[Y,X]]){
            attempt(ri,"sumlo",t,"lo",[[U,"lo"],[V,"lo"],[W,"lo"],[Z,"lo"],[other,"hi"]],v=>div(add(mul(v[0],v[1]),mul(v[2],v[3])),v[4]));
            attempt(ri,"sumhi",t,"hi",[[U,"hi"],[V,"hi"],[W,"hi"],[Z,"hi"],[other,"lo"]],v=>div(add(mul(v[0],v[1]),mul(v[2],v[3])),v[4]));
         }
         for(const [t,other,M,N] of [[U,V,W,Z],[V,U,W,Z],[W,Z,U,V],[Z,W,U,V]]){
            attempt(ri,"diff",t,"lo",[[X,"lo"],[Y,"lo"],[M,"hi"],[N,"hi"],[other,"hi"]],v=>div(sub(mul(v[0],v[1]),mul(v[2],v[3])),v[4]));
            attempt(ri,"diffhi",t,"hi",[[X,"hi"],[Y,"hi"],[M,"lo"],[N,"lo"],[other,"lo"]],v=>{const z=div(sub(mul(v[0],v[1]),mul(v[2],v[3])),v[4]);return cmp(z,zero)<0?zero:z;});
         }
       } else if(r[0]==="balance"){
         const terms=r[1];
         for(let j=0;j<terms.length;j++){
           const[c,X,Y]=terms[j],otherTerms=terms.filter((_,i)=>i!==j).map(([d,A,B])=>[-d/c,A,B]);
           for(const[target,partner]of [[X,Y],[Y,X]])for(const side of ["lo","hi"]){
             const roles=otherTerms.flatMap(([co,A,B])=>{const direction=side==="lo"?(co>0?"lo":"hi"):(co>0?"hi":"lo");return[[A,direction],[B,direction]];});
             roles.push([partner,side==="lo"?"hi":"lo"]);
             attempt(ri,side==="lo"?"balance_lo":"balance_hi",target,side,roles,values=>{
               let numerator=zero;
               otherTerms.forEach(([co],i)=>{numerator=add(numerator,mul(Q(co),mul(values[2*i],values[2*i+1])));});
               const value=div(numerator,values.at(-1));
               return side==="hi"&&cmp(value,zero)<0?zero:value;
             });
           }
         }
       } else if(r[0]==="quad"){
         const [,A,B,k]=r,cost=Q(k);
         for(const [t,o] of [[A,B],[B,A]])attempt(ri,"quad",t,"lo",[[o,"hi"]],v=>sub(cost,v[0]));
       } else if(r[0]==="support"){
         const [,X,Y,Z,k0]=r,k=Q(k0);
         attempt(ri,"support_y",Y,"lo",[[X,"lo"],[Z,"hi"]],v=>mul(k,sub(one,div(v[1],v[0]))));
         attempt(ri,"support_z",Z,"lo",[[X,"lo"],[Y,"hi"]],v=>mul(v[0],sub(one,div(v[1],k))));
         attempt(ri,"support_x",X,"hi",[[Z,"hi"],[Y,"hi"]],v=>cmp(v[1],k)<0?div(mul(k,v[0]),sub(k,v[1])):null);
       } else if(r[0]==="linear"){
         const [,terms,rhs0]=r,rhs=Q(rhs0);
         for(const t of Object.keys(terms).sort()){
            const coef=Q(terms[t]);if(cmp(coef,zero)===0)continue;
            const others=Object.keys(terms).filter(x=>x!==t&&cmp(Q(terms[x]),zero)!==0).sort();
            attempt(ri,"linear",t,cmp(coef,zero)>0?"lo":"hi",others.map(x=>[x,cmp(Q(terms[x]),zero)>0?"hi":"lo"]),v=>div(sub(rhs,v.reduce((z,vi,i)=>add(z,mul(Q(terms[others[i]]),vi)),zero)),coef));
         }
       } else throw Error("Unknown relation "+r[0]);
      });
      if(!changed)break;
   }
   const final={};for(const [t,b]of Object.entries(bounds)){final[t]={};for(const side of ["lo","hi"])if(b[side])final[t][side]={value:str(b[side]),ref:refs[t][side]};}
   return {packet,final};
 }
 function prune(packet,targets=null){
    const update=new Map(packet.updates.map(r=>[r.id,r])),keep=new Set(),relations=new Set();
    const walk=id=>{if(keep.has(id))return;keep.add(id);if(update.has(id)){const u=update.get(id);relations.add(u.relation);u.sources.forEach(walk);}else if(!(id in packet.initial))throw Error("Unknown reference "+id);};
    if(targets)Object.keys(targets).forEach(walk);
    if(packet.contradiction){walk(packet.contradiction.lower);walk(packet.contradiction.upper);}
    const rid=[...relations].sort((a,b)=>a-b),map=new Map(rid.map((r,i)=>[r,i]));
    const out={initial:Object.fromEntries(Object.entries(packet.initial).filter(([k])=>keep.has(k))),relations:rid.map(i=>packet.relations[i]),updates:packet.updates.filter(r=>keep.has(r.id)).map(r=>({...r,relation:map.get(r.relation)}))};
    if(packet.contradiction)out.contradiction=packet.contradiction;
    if(targets)out.targets=targets;
    return out;
 }
 return {Q,add,neg,sub,mul,div,cmp,str,zero,one,floor,ceil,propagate,prune};
})()
