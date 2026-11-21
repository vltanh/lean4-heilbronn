(function createExactPhysicalBoxContractor(){
 function gcd(a,b){a=a<0n?-a:a;b=b<0n?-b:b;while(b)[a,b]=[b,a%b];return a;}
 function Q(a,b=1n){if(Array.isArray(a))return a;if(typeof a==="string"&&a.includes("/")){const p=a.split("/");return Q(p[0],p[1]);}a=BigInt(a);b=BigInt(b);if(!b)throw Error("zero denominator");if(b<0n){a=-a;b=-b;}const g=gcd(a,b);return[a/g,b/g];}
 const zero=Q(0);
 const add=(a,b)=>Q(a[0]*b[1]+b[0]*a[1],a[1]*b[1]),neg=a=>[-a[0],a[1]];
 const mul=(a,b)=>Q(a[0]*b[0],a[1]*b[1]),div=(a,b)=>Q(a[0]*b[1],a[1]*b[0]);
 const cmp=(a,b)=>{const z=a[0]*b[1]-b[0]*a[1];return z>0n?1:z<0n?-1:0;};
 const str=a=>a[0]+"/"+a[1],min=(...a)=>a.reduce((x,y)=>cmp(x,y)<=0?x:y),max=(...a)=>a.reduce((x,y)=>cmp(x,y)>=0?x:y);
 function floor(a,scale){let n=a[0]*scale,q=n/a[1];if(n<0n&&n%a[1])q--;return Q(q,scale);}
 const ceil=(a,scale)=>neg(floor(neg(a),scale));
 function refine(sourceFactors,low,high,options={}){
  const lo=low.map(x=>Q(x)),hi=high.map(x=>Q(x)),N=lo.length,names=options.variables||lo.map((_,i)=>String(i));
  if(hi.length!==N||names.length!==N||lo.some((a,i)=>cmp(a,hi[i])>0))throw Error("invalid box");
  const rounds=options.rounds??6,maxSteps=options.maxSteps??1000,scale=BigInt(options.scale??1000000),maxVertices=options.maxVertices??256;
  const factors=sourceFactors.map(f=>{
   const terms=f.terms.map(([mon,c])=>({mon:[...mon],co:Q(c)}));
   for(const t of terms)if(t.mon.some(i=>!Number.isInteger(i)||i<0||i>=N)||new Set(t.mon).size!==t.mon.length)throw Error("non-multiaffine factor");
   return{...f,terms,support:Array.from(new Set(terms.flatMap(t=>t.mon))).sort((a,b)=>a-b)};
  });
  const steps=[],skipped=[];
  function finish(extra={}){return{low:lo.map(str),high:hi.map(str),steps,skipped,...extra};}
  for(let round=0;round<rounds;round++){
   let changed=false;
   for(let fi=0;fi<factors.length;fi++){
    const f=factors[fi];
    if(f.support.length===0){const value=f.terms.reduce((a,t)=>add(a,t.co),zero);if(cmp(value,zero)<0)return finish({contradiction:{factor:fi,target:null,constant:str(value)}});continue;}
    for(const target of f.support){
     const others=f.support.filter(i=>i!==target);
     if(2**others.length>maxVertices){skipped.push({factor:fi,target});continue;}
     const lines=new Map();let left=false,right=false,skip=false;
     for(let bits=0;bits<2**others.length;bits++){
      const at={};others.forEach((i,j)=>at[i]=bits&(1<<j)?hi[i]:lo[i]);let A=zero,B=zero;
      for(const t of f.terms){let value=t.co;for(const i of t.mon)if(i!==target)value=mul(value,at[i]);if(t.mon.includes(target))A=add(A,value);else B=add(B,value);}
      lines.set(str(A)+","+str(B),[A,B]);
      left ||= cmp(add(mul(A,lo[target]),B),zero)>=0;
      right ||= cmp(add(mul(A,hi[target]),B),zero)>=0;
      if(left&&right){skip=true;break;}
     }
     if(skip)continue;
     const feasible=[];
     for(const[A,B]of lines.values()){
      let L=lo[target],H=hi[target];const sign=cmp(A,zero);
      if(sign>0)L=max(L,div(neg(B),A));else if(sign<0)H=min(H,div(neg(B),A));else if(cmp(B,zero)<0)continue;
      if(cmp(L,H)<=0)feasible.push([L,H]);
     }
     const row={factor:fi,target:names[target],old:[str(lo[target]),str(hi[target])],lines:Array.from(lines.values(),p=>p.map(str))};
     if(!feasible.length)return finish({contradiction:row});
     const rawL=min(...feasible.map(p=>p[0])),rawH=max(...feasible.map(p=>p[1]));
     const L=max(lo[target],floor(rawL,scale)),H=min(hi[target],ceil(rawH,scale));
     if(cmp(L,lo[target])===0&&cmp(H,hi[target])===0)continue;
     row.raw=[str(rawL),str(rawH)];row.new=[str(L),str(H)];steps.push(row);lo[target]=L;hi[target]=H;changed=true;
     if(steps.length>=maxSteps)return finish({truncated:true});
    }
   }
   if(!changed)break;
  }
  return finish();
 }
 return{Q,add,mul,div,neg,cmp,str,refine};
})()