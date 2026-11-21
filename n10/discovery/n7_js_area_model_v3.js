(() => {
 const R=eval(load("scalarAreaJSCore")),G=eval(load("n7SignJS"));
 const {Q,add,sub,mul,div,cmp,str,zero,one}=R;
 const S=Q("93/1000"),K=Q("149/20"),J=Q("4427/500"),rho=Q("1142/125");
 const labels=G.labels,combos=G.combos,canon=G.canon;
 const coords={A:[null,0],B:[1,null],C:[2,null],D:[-1,3],E:[-1,4],F:[5,-1],G:[6,8],H:[null,7],O:[9,10],P:[11,12]};
 const perms=a=>a.length?a.flatMap((x,i)=>perms(a.filter((_,j)=>j!==i)).map(r=>[x,...r])):[[]];
 const point=(name,at)=>coords[name].map(i=>i===null?zero:i===-1?one:at[i]);
 const det=(word,at)=>{const [A,B,C]=[...word].map(x=>point(x,at));return sub(mul(sub(B[0],A[0]),sub(C[1],A[1])),mul(sub(B[1],A[1]),sub(C[0],A[0])));};
 const rbox=cell=>{const ell=Q("7347/69700"),fmax=sub(one,ell),h0=div(mul(Q(4),S),fmax),B=sub(one,div(mul(Q(4),S),sub(one,S)));
   const lowWords=cell==="CA"?"139/1000 108/1000 541/1000 120/1000 h0 108/1000 118/1000 613/1000 139/1000 108/1000 120/1000 108/1000 120/1000":"122/1000 123/1000 541/1000 122/1000 h0 123/1000 123/1000 613/1000 134/1000 ell 122/1000 ell 122/1000";
   const hiWords="685/1000 B 883/1000 705/1000 907/1000 883/1000 685/1000 1 "+(cell==="CA"?"773/1000":"775/1000")+" 883/1000 907/1000 883/1000 907/1000";
   const parse=w=>w.split(" ").map(x=>({ell,h0,B}[x]||Q(x)));
   return {low:parse(lowWords),high:parse(hiWords)};
 };
 function build(cell,state,{includeQuads=true,includeSupport=true,includeF5=true,includeSpread=true,box=null,includeBary=true,includeBalance=true}={}){
   const k=state.signs;
   const sg=t=>{const[key,p]=canon(t);return(k[key]||0)*p;};
   const inside=(poly,t)=>!poly.includes(t)&&[...poly].every((x,i)=>sg(x+poly[(i+1)%poly.length]+t)>0);
   const convex=poly=>combos([...poly],3).every(t=>sg(t)>0);
   const cyclic=verts=>perms(verts.slice(1)).map(a=>verts[0]+a.join("")).find(convex);
   const {low,high}=box?{low:box.low.map(Q),high:box.high.map(Q)}:rbox(cell);
   const capList=[["ABC",Q("403/1000")],["ABH",Q("403/1000")],["BCD",Q("357/1000")],["CDE",Q("357/1000")],["HEF",sub(one,div(mul(Q(4),S),sub(one,Q("7347/69700"))))],["BCE",mul(K,S)],["DEF",mul(K,S)]];
   for(const [word,value]of Object.entries({ADG:"131/200",BDG:"6913/10000",CDG:"32697/50000"})){const ss=sg(word);if(ss)capList.push([ss>0?word:word[1]+word[0]+word[2],Q(value)]);}
   const initial={},relations=[],witnesses={initial:{},relations:[]};
   const floorCost=n=>mul([Q(1),Q(3),K,J][n],S);
   for(const word of Object.keys(k).sort()){
     const orient=k[word]>0?word:word[1]+word[0]+word[2],occ="GOP".split("").filter(t=>inside(orient,t));
     const lo=floorCost(occ.length);
     initial["L_"+word]={triangle:word,side:"lo",value:str(lo)};
     witnesses.initial["L_"+word]={kind:"occupants",triangle:orient,points:occ};
     let hi=one,why={kind:"square"};
     for(const[cap,v]of capList)if([...word].every(x=>cap.includes(x)||inside(cap,x))&&cmp(v,hi)<0){hi=v;why={kind:"cap",cap,value:str(v)};}
     const used=[...new Set([...word].flatMap(x=>coords[x]).filter(x=>x!==null&&x!==-1))].sort((a,b)=>a-b),values=[];
     for(let mask=0;mask<(1<<used.length);mask++){const at=[...low];used.forEach((j,i)=>{if(mask&(1<<i))at[j]=high[j];});values.push(mul(Q(k[word]),det(word,at)));}
     const max=values.reduce((a,b)=>cmp(a,b)>0?a:b);
     if(cmp(max,hi)<0){hi=max;why={kind:"vertices",signed:orient,used,values:[...new Set(values.map(str))].sort((a,b)=>cmp(Q(a),Q(b))),cell};}
     initial["U_"+word]={triangle:word,side:"hi",value:str(hi)};witnesses.initial["U_"+word]=why;
   }
   const relation=(r,w)=>{relations.push(r);witnesses.relations.push(w);};
   for(const word of Object.keys(k).sort()){
     const outer=k[word]>0?word:word[1]+word[0]+word[2];
     for(const p of "GOP")if(inside(outer,p)){const fan=[...outer].map((a,i)=>canon(a+outer[(i+1)%3]+p)[0]);relation(["fan",word,...fan],{kind:"fan",outer,point:p});}
   }
   const seenPlu=new Set();
   for(const pivot of labels)for(const [B,C,D,E]of combos(labels.filter(x=>x!==pivot),4)){
     const pairs=[[pivot+B+C,pivot+D+E,1],[pivot+B+D,pivot+C+E,-1],[pivot+B+E,pivot+C+D,1]];
     const signs=pairs.map(([a,b,s])=>sg(a)*sg(b)*s);if(signs.some(s=>!s))continue;
     if(signs.every(s=>s===signs[0]))throw Error("inconsistent signs");
     const iso=signs.findIndex(s=>signs.filter(t=>t===s).length===1),[X,Y]=pairs[iso].slice(0,2).map(t=>canon(t)[0]);
     const rest=pairs.filter((_,i)=>i!==iso).flatMap(p=>p.slice(0,2).map(t=>canon(t)[0]));
     const signature=[...[X,Y].sort(),...rest.slice(0,2).sort(),...rest.slice(2).sort()].join("/");
     if(seenPlu.has(signature))continue;seenPlu.add(signature);
     relation(["plu",X,Y,...rest],{kind:"plu",word:pivot+B+C+D+E});
   }
   const quads=[];
   for(const verts of combos(labels,4)){
      const poly=cyclic(verts);if(!poly)continue;
      const occ=[..."GOP"].filter(t=>inside(poly,t));
      const smallContainer=["HABC","HCEF","ABEF"].find(reg=>[...poly].every(t=>reg.includes(t)||inside(reg,t)));
      if(smallContainer){
       const cap=smallContainer==="HABC"?sub(mul(high[7],high[2]),mul(low[0],low[1])):one;
       const t1=canon(poly[0]+poly[1]+poly[2])[0],t2=canon(poly[0]+poly[2]+poly[3])[0];
       relation(["linear",{[t1]:"-1",[t2]:"-1"},str(R.neg(cap))],{kind:"quad_container",poly,container:smallContainer,cap:str(cap)});
      }
      if(!occ.length)continue;
      quads.push({poly,occ});
      if(includeQuads){
       const cost={1:Q("449/1000"),2:mul(Q(8),S),3:Q("93/91")}[occ.length];
       for(let shift=0;shift<2;shift++){const p=poly.slice(shift)+poly.slice(0,shift);relation(["quad",canon(p[0]+p[1]+p[2])[0],canon(p[0]+p[2]+p[3])[0],str(cost)],{kind:"quad",poly:p,occupants:occ});}
      }
      if(includeSupport)for(let sh=0;sh<4;sh++){
       const p=poly.slice(sh)+poly.slice(0,sh),[A,B,C,D]=p;
       const choices=occ.length===1?[occ]:combos(occ,2);
       let best=zero,bestOcc=null;
       for(const chosen of choices){
        const counts=[A+C+D,B+C+D].map(t=>chosen.filter(x=>inside(t,x)).length).sort();
        let q;
        if(chosen.length===1)q=({"0,0":Q("29/5"),"0,1":K,"1,1":Q(12)})[counts.join(",")];
        else {q=({"0,0":rho,"0,1":rho,"0,2":Q("139/10"),"1,1":Q(12),"1,2":Q("199/10"),"2,2":Q("149/5")})[counts.join(",")];if(chosen.every(t=>inside(A+B+C,t)&&inside(A+B+D,t))&&cmp(q,Q("299/31"))<0)q=Q("299/31");}
        if(cmp(q,best)>0){best=q;bestOcc=chosen;}
       }
       const X=canon(A+B+C)[0],Y=canon(A+B+D)[0],Z=canon(A+C+D)[0],cost=str(mul(best,S));
       relation(["support",Y,X,Z,cost],{kind:"quad_support",poly:p,occupants:bestOcc,rate:str(best)});
      }
      if(includeSpread&&occ.length>=2)for(const [U,V]of combos(occ,2)){
        const [A,B,C,D]=poly;if(!(sg(A+C+U)*sg(A+C+V)<0&&sg(B+D+U)*sg(B+D+V)<0))continue;
        const small=["HABC","HCEF","ABEF"].find(reg=>[...poly].every(t=>reg.includes(t)||inside(reg,t))),rate=small?Q(6):Q("29/5");
        const tri1=canon(A+B+C)[0],tri2=canon(A+C+D)[0];
        for(const edge of [A+C,B+D]){
          const coeff={};for(const[name,n]of[[tri1,1],[tri2,1],[canon(edge+U)[0],-1],[canon(edge+V)[0],-1]])coeff[name]=str(add(Q(coeff[name]||"0"),Q(n)));
          relation(["linear",coeff,str(mul(rate,S))],{kind:"spread",poly,pair:[U,V],diagonal:edge,rate:str(rate),container:small||null});
        }
      }
   }
   if(includeF5)for(const verts of combos(labels,5)){
     const poly=cyclic(verts);if(!poly)continue;
     for(let sh=0;sh<5;sh++){const p=poly.slice(sh)+poly.slice(0,sh),[A,B,,D,E]=p;relation(["support",canon(A+B+E)[0],canon(A+D+E)[0],canon(A+B+D)[0],str(mul(Q(11),S))],{kind:"five_support",poly:p});}
   }


   if(includeBalance){
     const seen=new Set();
     for(const outerList of combos(labels,3)){
       const [A,B,C]=outerList,outer=outerList.join("");
       for(const W of labels.filter(t=>!outer.includes(t)))for(const[I,Jc]of combos(labels.filter(t=>!outer.includes(t)&&t!==W),2)){
          const signedPairs=[[outer,I+Jc+W,1],[W+B+C,I+Jc+A,-1],[A+W+C,I+Jc+B,-1],[A+B+W,I+Jc+C,-1]];
          if(signedPairs.some(([X,Y])=>!sg(X)||!sg(Y)))continue;
          let terms=signedPairs.map(([X,Y,co])=>{const pair=[canon(X)[0],canon(Y)[0]].sort();return[co*sg(X)*sg(Y),...pair];});
          terms.sort((a,b)=>(a[1]+a[2]).localeCompare(b[1]+b[2]));
          if(terms[0][0]<0)terms=terms.map(([co,X,Y])=>[-co,X,Y]);
          const key=JSON.stringify(terms);if(seen.has(key))continue;seen.add(key);
          relation(["balance",terms],{kind:"six_label",outer,point:W,line:I+Jc});
       }
     }
   }
   if(includeBary){
    const fans=relations.map((r,i)=>({r,w:witnesses.relations[i]})).filter(({r})=>r[0]==="fan");
    for(const {r,w}of fans){
      const outer=w.outer,point=w.point,N=Q(initial["U_"+r[1]].value);
      const floorRows=[...outer].map((_,i)=>{const t=canon(outer[(i+1)%3]+outer[(i+2)%3]+point)[0],ref="L_"+t;return{triangle:t,ref,value:initial[ref].value};});
      const bs=floorRows.map(b=>Q(b.value)),remaining=sub(N,bs.reduce(add,zero));
      if(cmp(N,zero)<=0||cmp(remaining,zero)<0)continue;
      for(const [I,Jc]of combos(labels,2)){
        const values=[...outer].map(V=>I===V||Jc===V?{zero:true}:{triangle:canon(I+Jc+V)[0],sign:sg(I+Jc+V)});
        const target=I===point||Jc===point?{zero:true}:{triangle:canon(I+Jc+point)[0],sign:sg(I+Jc+point)};
        if(values.some(t=>!t.zero&&!t.sign)||(!target.zero&&!target.sign))continue;
        for(const side of ["upper","lower"]){
          const coefficients={};
          const addco=(name,value)=>{coefficients[name]=add(coefficients[name]||zero,value);};
          values.forEach((t,i)=>{if(t.zero)return;const useR=(side==="upper"&&t.sign>0)||(side==="lower"&&t.sign<0);const weight=useR?add(bs[i],remaining):bs[i];addco(t.triangle,mul(Q(side==="upper"?t.sign:-t.sign),weight));});
          if(!target.zero)addco(target.triangle,mul(Q(side==="upper"?-target.sign:target.sign),N));
          const literal=Object.fromEntries(Object.entries(coefficients).filter(([,c])=>cmp(c,zero)!==0).map(([n,c])=>[n,str(c)]));
          if(!Object.keys(literal).length)continue;
          relation(["linear",literal,"0"],{kind:"bary_sign",outer,point,line:I+Jc,side,outer_upper:{triangle:r[1],ref:"U_"+r[1],value:str(N)},fan_lower:floorRows,residual:str(remaining)});
        }
      }
    }
   }
   return {cell,initial,relations,witnesses,box:{low:low.map(str),high:high.map(str)},signs:k,quads};
 }
 return {build,rbox,point,det};
})()
