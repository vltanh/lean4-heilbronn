(() => {
 const R=eval(load("scalarAreaJSCore")),G=eval(load("n7SignJS"));
 const {Q,add,sub,mul,neg,cmp,str,zero,one}=R;
 const constant=x=>new Map([["",Q(x)]]),variable=i=>new Map([[String(i),one]]);
 const plus=(...ps)=>{const out=new Map();for(const p of ps)for(const[k,c]of p)out.set(k,add(out.get(k)||zero,c));for(const[k,c]of out)if(!c[0])out.delete(k);return out;};
 const scale=(p,c)=>new Map([...p].map(([k,v])=>[k,mul(v,Q(c))]));
 const times=(...ps)=>ps.reduce((a,b)=>{const out=new Map();for(const[k,c]of a)for(const[l,d]of b){const m=[...k.split(",").filter(x=>x!==""),...l.split(",").filter(x=>x!=="")].map(Number).sort((a,b)=>a-b).join(",");out.set(m,add(out.get(m)||zero,mul(c,d)));}for(const[k,c]of out)if(!c[0])out.delete(k);return out;},constant(1));
 const v=Array.from({length:13},(_,i)=>variable(i));
 const[a,b,c,d,e,f,g,h,z,x,y,u,w]=v;
 const points={A:[constant(0),a],B:[b,constant(0)],C:[c,constant(0)],D:[constant(1),d],E:[constant(1),e],F:[f,constant(1)],G:[g,z],H:[constant(0),h],O:[x,y],P:[u,w]};
 const minus=(a,b)=>plus(a,scale(b,-1));
 const det=word=>{const[A,B,C]=[...word].map(t=>points[t]);return minus(times(minus(B[0],A[0]),minus(C[1],A[1])),times(minus(B[1],A[1]),minus(C[0],A[0])));};
 function factors(model,areaResult=null){
   const out=[],skipped=[],sg=t=>{const[k,p]=G.canon(t);return model.signs[k]*p;};
   const emit=(name,p,why)=>{const terms=[...p].map(([m,c])=>[m===""?[]:m.split(",").map(Number),str(c)]);if(terms.some(([m])=>new Set(m).size!==m.length)){skipped.push(name);return;}out.push({name,terms,why});};
   for(const t of Object.keys(model.signs)){
      const p=scale(det(t),model.signs[t]);
      let lo=model.initial["L_"+t].value,hi=model.initial["U_"+t].value,lr="L_"+t,ur="U_"+t;
      if(areaResult?.final[t]?.lo){lo=areaResult.final[t].lo.value;lr=areaResult.final[t].lo.ref;}
      if(areaResult?.final[t]?.hi){hi=areaResult.final[t].hi.value;ur=areaResult.final[t].hi.ref;}
      emit("AREA_LO_"+t,plus(p,constant(neg(Q(lo)))),{kind:"area",triangle:t,side:"lo",reference:lr,value:lo});
      emit("AREA_HI_"+t,minus(constant(hi),p),{kind:"area",triangle:t,side:"hi",reference:ur,value:hi});
   }
   const s=Q("93/1000"),M=Q("883/1000");
   const common=[
    ["span_AH",plus(h,scale(a,-1),constant(neg(s)))],
    ["span_DE",plus(e,scale(d,-1),constant(neg(s)))],
    ["span_BC",plus(c,scale(b,-1),constant("-117/1000"))],
    ["span_BC_hi",plus(b,scale(c,-1),constant("79/100"))],
    ["span_AH_hi",plus(a,scale(h,-1),constant("697/790"))],
    ["span_DE_hi",plus(d,scale(e,-1),constant("697/790"))],
    ["overlap_bf",minus(f,b)],["overlap_fc",minus(c,f)],["overlap_eh",minus(h,e)],["overlap_ae",minus(e,a)],
    ["EL",plus(times(h,c),constant(neg(mul(Q("2911/500"),s))))],
    ["ER",plus(times(e,minus(constant(1),b)),constant(neg(mul(Q(4),s))))],
    ["PAIR_BL",plus(times(h,c),scale(det("ABC"),-1),scale(det("ABH"),-1),constant(neg(mul(Q(2),s))))],
    ["PAIR_BR",plus(times(e,minus(constant(1),b)),scale(det("BCD"),-1),scale(det("CDE"),-1),constant(neg(mul(Q(2),s))))],
    ["Gsum",plus(constant("790/883"),scale(g,-1),scale(z,-1))],
    ["Central_g",plus(times(h,minus(c,b),g),scale(plus(c,b),neg(s)))],
    ["Central_z",plus(times(c,minus(h,a),z),scale(plus(h,a),neg(s)))],
    ["Central_strip",plus(scale(times(minus(h,a),minus(c,b)),M),scale(plus(scale(times(h,c),3),scale(times(a,c),-1),scale(times(b,h),-1),scale(times(a,b),-1)),neg(s)))]
   ];
   for(const[name,p]of common)emit(name,p,{kind:"setup",name});
   if(model.cell==="CA"||model.cell==="CB"){
    emit("Central_order",model.cell==="CA"?minus(times(a,c),times(b,h)):minus(times(b,h),times(a,c)),{kind:"central_order",cell:model.cell});
    for(let n=0;n<=10;n++){
      const t=Q(n,10),t2=mul(t,t);
      const p=model.cell==="CA"?
        plus(times(c,a,h),scale(times(c,a),neg(mul(Q(2),t))),scale(c,t2),scale(plus(h,a),neg(s))):
        plus(times(h,b,c),scale(times(h,b),neg(mul(Q(2),t))),scale(h,t2),scale(plus(c,b),neg(s)));
      emit("Central_endpoint_tangent_"+n,p,{kind:"central_endpoint_tangent",cell:model.cell,t:str(t)});
    }
   }
   const W=plus(scale(times(h,c),3),scale(times(a,c),-1),scale(times(b,h),-1),scale(times(a,b),-1));
   const hl=Q(model.box.low[7]),hu=Q(model.box.high[7]),cl=Q(model.box.low[2]),cu=Q(model.box.high[2]);
   const hsec=plus(scale(h,add(hl,hu)),constant(neg(mul(hl,hu))));
   const csec=plus(scale(c,add(cl,cu)),constant(neg(mul(cl,cu))));
   emit("Central_h_secant",plus(times(hsec,minus(c,b)),scale(times(h,a,minus(c,b)),-1),scale(W,neg(s))),{kind:"central_secant",variable:"h",low:str(hl),high:str(hu)});
   emit("Central_c_secant",plus(times(csec,minus(h,a)),scale(times(c,b,minus(h,a)),-1),scale(W,neg(s))),{kind:"central_secant",variable:"c",low:str(cl),high:str(cu)});

   for(let i=0;i<model.relations.length;i++){
     const r=model.relations[i];
     if(r[0]==="linear"){
       const terms=Object.entries(r[1]).map(([name,co])=>scale(det(name),mul(Q(co),Q(sg(name)))));
       emit("LINEAR_"+i,plus(...terms,constant(neg(Q(r[2])))),{kind:"relation",index:i});
     }else if(r[0]==="quad"){
       emit("QUAD_"+i,plus(scale(det(r[1]),sg(r[1])),scale(det(r[2]),sg(r[2])),constant(neg(Q(r[3])))),{kind:"relation",index:i});
     }else if(r[0]==="support"){
       const [,X,Y,Z,k0]=r,k=Q(k0);
       const ux=areaResult?.final[X]?.hi?.value||model.initial["U_"+X].value,uy=areaResult?.final[Y]?.hi?.value||model.initial["U_"+Y].value;
       const px=scale(det(X),sg(X)),py=scale(det(Y),sg(Y)),pz=scale(det(Z),sg(Z));
       emit("SUPPORT_XCAP_"+i,plus(scale(py,Q(ux)),scale(minus(px,pz),neg(k))),{kind:"support_cap",relation:i,which:"X",value:ux,reference:areaResult?.final[X]?.hi?.ref||"U_"+X});
       emit("SUPPORT_YCAP_"+i,plus(scale(px,sub(Q(uy),k)),scale(pz,k)),{kind:"support_cap",relation:i,which:"Y",value:uy,reference:areaResult?.final[Y]?.hi?.ref||"U_"+Y});
     }
   }
   return {factors:out,skipped};
 }
 return {constant,variable,plus,minus,scale,times,det,factors};
})()
