(() => {
 const G=eval(load("n7SignJS")),R=eval(load("scalarAreaJSCore"));
 const {canon,combos,labels}=G,{Q,mul,cmp}=R;
 const S=Q("93/1000"),K=Q("149/20"),J=Q("4427/500");
 const hull="ABCDEFH",regions=["HABC","HCEF","CDE"],free=[..."GOP"];
 const perms=a=>a.length?a.flatMap((x,i)=>perms(a.filter((_,j)=>j!==i)).map(r=>[x,...r])):[[]];
 function advance(original,area=null,{centralCut=true,dynamicCaps=true,mesh=true}={}){
   const signs={...original.signs},trace=[...(original.trace||[])],initial=original.initial||{},why={...(original.why||{})};let terminal=null;
   const get=t=>{const[key,p]=canon(t);return(signs[key]||0)*p;};
   const ins=(poly,t)=>!poly.includes(t)&&[...poly].every((x,i)=>get(x+poly[(i+1)%poly.length]+t)>0);
   const convex=poly=>combos([...poly],3).every(t=>get(t)>0);
   const put=(word,sn,rule,deps=[])=>{
     const[key,p]=canon(word);if(!p)throw Error("zero actual test");const val=p*sn;
     if(signs[key]){if(signs[key]!==val)terminal={kind:"forced-opposite",word,sign:sn,rule,deps};return false;}
     signs[key]=val;why[key]=trace.length;trace.push({rule,target:key,sign:val,deps:[...new Set(deps.map(t=>canon(t)[0]))]});return true;
   };
   let changed=true,round=0;
   while(changed&&!terminal&&round++<120){
     changed=false;
     if(centralCut)for(const T of ["O","P"]){
       if(get("AG"+T)>0)changed=put("DG"+T,-1,["central-area",T],["AG"+T])||changed;
       if(get("DG"+T)>0)changed=put("AG"+T,-1,["central-area",T],["DG"+T])||changed;
     }
     for(const pivot of labels)for(const [B,C,D,E]of combos(labels.filter(x=>x!==pivot),4)){
       if(terminal)break;
       const terms=[[pivot+B+C,pivot+D+E,1],[pivot+B+D,pivot+C+E,-1],[pivot+B+E,pivot+C+D,1]];
       const vals=terms.map(([t,u,c])=>get(t)*get(u)*c),zeros=vals.map((v,i)=>v? -1:i).filter(i=>i>=0),nz=vals.filter(v=>v);
       if(!zeros.length&&nz.every(v=>v===nz[0])){terminal={kind:"plu",word:pivot+B+C+D+E};break;}
       if(zeros.length===1&&nz[0]===nz[1]){
         const[t,u,c]=terms[zeros[0]],st=get(t),su=get(u);
         if((!st)!==(!su)){const target=st?u:t,other=st||su;changed=put(target,-nz[0]*c*other,["plu",pivot+B+C+D+E],terms.flatMap(([a,b])=>[a,b]).filter(t=>canon(t)[0]!==canon(target)[0]))||changed;}
       }
     }
     for(const pt of free){
       const polys=[hull,pt==="G"?"HABC":"HCEF"];
       for(const tri of combos(labels.filter(x=>x!==pt),3)){
         const ss=get(tri);if(!ss)continue;const t=ss>0?tri.join(""):tri[1]+tri[0]+tri[2];if(ins(t,pt))polys.push(t);
       }
       for(const poly of polys)for(const [I,J]of combos(labels.filter(x=>x!==pt),2)){
         if(terminal||get(I+J+pt))continue;
         const vals=[...poly].map(t=>I===t||J===t?0:get(I+J+t));
         if([...poly].some((t,i)=>I!==t&&J!==t&&!vals[i]))continue;
         const nz=vals.filter(v=>v);if(nz.length&&nz.every(v=>v===nz[0])){
           const edges=[...poly].map((t,i)=>t+poly[(i+1)%poly.length]+pt);
           changed=put(I+J+pt,nz[0],[poly.length===3?"via":"hullvia",pt,poly,I+J],[...edges,...[...poly].filter(t=>I!==t&&J!==t).map(t=>I+J+t)])||changed;
         }
       }
     }
     for(const poly of [hull,...regions])for(const [U,V]of combos(free,2)){
       if(terminal)break;
       const old=[...poly].map(t=>get(t+U+V)),strict=ins(poly,U)||ins(poly,V),words=[];
       for(let mask=0;mask<(1<<poly.length);mask++){
         const w=[...poly].map((_,i)=>mask&(1<<i)?1:-1),changes=w.reduce((n,s,i)=>n+(s!==w[(i+1)%w.length]),0);
         if(!(changes===2||(!strict&&changes===0))||old.some((s,i)=>s&&s!==w[i]))continue;words.push(w);
       }
       if(!words.length){terminal={kind:"regionline",poly,pair:U+V};break;}
       for(let i=0;i<poly.length;i++)if(!old[i]&&words.every(w=>w[i]===words[0][i]))changed=put(poly[i]+U+V,words[0][i],["line",poly,U+V,poly[i]],old.flatMap((s,j)=>s?[poly[j]+U+V]:[]))||changed;
       const vals=[...poly].map(t=>get(t+U+V));if(vals.every(Boolean)){
         const cuts=[...poly].map((t,i)=>vals[i]!==vals[(i+1)%poly.length]?[t,poly[(i+1)%poly.length]]:null).filter(Boolean);
         if(cuts.length===2){const endpoints=new Set(cuts.flat()),chord=[...poly].filter(t=>endpoints.has(t)).join("");
           for(const pt of [U,V])if(ins(poly,pt))for(let i=0;i<chord.length;i++)changed=put(chord[i]+chord[(i+1)%chord.length]+pt,1,["chord",poly,U+V,chord,pt],[...[...poly].map(t=>t+U+V),...[...poly].map((t,j)=>t+poly[(j+1)%poly.length]+pt)])||changed;
         }
       }
     }
     const caps=[{poly:"HEF",cap:1,source:["fixed","HEF"]},{poly:"BCE",cap:1,source:["fixed","BCE"]},{poly:"DEF",cap:1,source:["fixed","DEF"]}];
     for(const w of ["CDG","ADG","BDG"]){const ss=get(w);if(ss)caps.push({poly:ss>0?w:w[1]+w[0]+w[2],cap:1,source:["central-fixed",w]});}
     if(area&&dynamicCaps)for(const[word,b]of Object.entries(area)){
       const ss=get(word);if(!ss||!b.hi)continue;const value=Q(b.hi.value);let cap=null;
       if(cmp(value,mul(Q(3),S))<0)cap=0;
       else if(cmp(value,mul(K,S))<=0)cap=1;
       else if(cmp(value,mul(J,S))<=0)cap=2;
       if(cap!==null)caps.push({poly:ss>0?word:word[1]+word[0]+word[2],cap,source:["area",word,b.hi.ref,b.hi.value]});
     }
     for(const{poly,cap,source}of caps){
       const occ=free.filter(t=>ins(poly,t));
       if(occ.length>cap){terminal={kind:"capacity",poly,capacity:cap,occupants:occ,source};break;}
       if(occ.length===cap)for(const pt of free.filter(t=>!poly.includes(t)&&!occ.includes(t))){
         const tests=[...poly].map((t,i)=>t+poly[(i+1)%3]+pt),vals=tests.map(get),zero=vals.map((v,i)=>!v?i:-1).filter(i=>i>=0);
         if(zero.length===1&&vals.filter(v=>v).every(v=>v>0))changed=put(tests[zero[0]],-1,["cap",poly,occ,pt,source],tests.filter(t=>get(t)))||changed;
       }
       if(cap===1)for(let sh=0;sh<3;sh++){
         const rot=poly.slice(sh)+poly.slice(0,sh),[I,Jc,Kc]=rot;
         for(const[U,V]of combos(free.filter(t=>!poly.includes(t)),2)){
           if(get(Jc+Kc+U)>0&&get(Kc+I+U)>0&&get(Jc+Kc+V)>0&&get(Kc+I+V)>0&&get(I+U+V)){
             const pt=get(I+U+V)<0?V:U;
             changed=put(I+Jc+pt,-1,["ray",poly,U+V,rot,source],[Jc+Kc+U,Kc+I+U,Jc+Kc+V,Kc+I+V,I+U+V])||changed;
           }
         }
       }
     }
     if(mesh)for(const tri of combos(labels.filter(x=>!free.includes(x)),3)){
       const ss=get(tri);if(!ss)continue;const outer=ss>0?tri.join(""):tri[1]+tri[0]+tri[2];if(!free.every(t=>ins(outer,t)))continue;
       const template=["ABZ","BCX","CAY","AZY","BXZ","CYX","ZXY","AZX","BXY","CYZ","AXY","BYZ","CZX"];
       const patterns=[];
       for(const order of perms(free)){
         const mp=Object.fromEntries([..."ABCXYZ"].map((k,i)=>[k,[...outer,...order][i]])),row={};
         for(const w of template){const[k,p]=canon([...w].map(t=>mp[t]));row[k]=p;}
         if(Object.entries(row).every(([t,s])=>!get(t)||get(t)===s))patterns.push(row);
       }
       if(!patterns.length){terminal={kind:"nomesh",outer,points:"GOP"};break;}
       for(const t of Object.keys(patterns[0]))if(!get(t)&&patterns.every(r=>r[t]===patterns[0][t]))changed=put(t,patterns[0][t],["mesh",outer,"GOP"],[...Object.keys(signs),...[...outer].flatMap((x,i)=>free.map(pt=>x+outer[(i+1)%3]+pt))])||changed;
     }
   }
   return {signs,trace,initial,why,terminal};
 }
 return {advance};
})()
