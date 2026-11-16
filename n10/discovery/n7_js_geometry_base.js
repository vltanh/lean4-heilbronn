(() => {
 const labels="ABCDEFGHOP".split("");
 function canon(tri){tri=[...tri];if(new Set(tri).size!==3)return [tri.join(""),0];let parity=1;for(let i=0;i<3;i++)for(let j=i+1;j<3;j++)if(tri[i]>tri[j])parity=-parity;return[[...tri].sort().join(""),parity];}
 function combos(a,k){if(k===0)return[[]];if(a.length<k)return[];return a.flatMap((x,i)=>combos(a.slice(i+1),k-1).map(t=>[x,...t]));}
 function make(extra){
  const signs={},trace=[],why={};
  const get=word=>{const [key,p]=canon(word);return (signs[key]||0)*p;};
  const put=(word,sn,rule=null,deps=[])=>{const[key,p]=canon(word);if(!p)throw Error("repeated point");const val=sn*p;if(signs[key]){if(signs[key]!==val)throw Error("sign conflict "+word);return false;}signs[key]=val;if(rule){why[key]=trace.length;trace.push({rule,target:key,sign:val,deps:[...new Set(deps.map(t=>canon(t)[0]))]});}return true;};
  const hull="ABCDEFH",regs=[["G","HABC"],["O","HCEF"],["P","HCEF"]];
  for(const t of combos([...hull],3))put(t,1);
  for(const [pt,reg]of regs)for(const poly of [hull,reg])for(let i=0;i<poly.length;i++)put(poly[i]+poly[(i+1)%poly.length]+pt,1);
  put("HOP",-1);put("EHP",1);for(const t of extra)put(t.slice(0,3),t[3]==="+"?1:-1);
  const initial={...signs};let changed=true,rounds=0;
  while(changed&&rounds++<120){changed=false;
    for(const pivot of labels)for(const [B,C,D,E]of combos(labels.filter(x=>x!==pivot),4)){
      const terms=[[pivot+B+C,pivot+D+E,1],[pivot+B+D,pivot+C+E,-1],[pivot+B+E,pivot+C+D,1]];
      const vals=terms.map(([t,u,c])=>get(t)*get(u)*c),zeros=vals.map((v,i)=>v===0?i:-1).filter(i=>i>=0),nz=vals.filter(v=>v!==0);
      if(!zeros.length&&nz.every(v=>v===nz[0]))throw Error("Plucker sign contradiction "+pivot+B+C+D+E);
      if(zeros.length===1&&nz[0]===nz[1]){
        const [t,u,c]=terms[zeros[0]],st=get(t),su=get(u);
        if((!st)!==(!su)){const target=st?u:t,other=st?st:su;changed=put(target,-nz[0]*c*other,["plu",pivot+B+C+D+E],terms.flatMap(([v,w])=>[v,w]).filter(w=>canon(w)[0]!==canon(target)[0]))||changed;}
      }
    }
    for(const [pt,reg]of regs)for(const poly of [hull,reg])for(const [I,J]of combos(labels.filter(x=>x!==pt),2)){
      if(get(I+J+pt))continue;const vals=[...poly].map(t=>I===t||J===t?0:get(I+J+t));if([...poly].some((t,i)=>I!==t&&J!==t&&!vals[i]))continue;const nz=vals.filter(v=>v);if(nz.length&&nz.every(v=>v===nz[0]))changed=put(I+J+pt,nz[0],["hullvia",pt,poly,I+J],[...poly].filter(t=>I!==t&&J!==t).map(t=>I+J+t))||changed;
    }
  }
  return {signs,trace,initial,why,get};
 }
 return {labels,canon,combos,make};
})()
