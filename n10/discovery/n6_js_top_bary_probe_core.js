(function createTopScalar() {
  const labels="ABCEFHPQRS", anchors="ABCEFH", names="a b c e f h p q u v r w j k".split(" ");
  function gcd(a,b){a=a<0n?-a:a;b=b<0n?-b:b;while(b){const t=a%b;a=b;b=t;}return a;}
  function F(a,b=1n){a=BigInt(a);b=BigInt(b);if(b===0n)throw Error("zero divisor");if(b<0n){a=-a;b=-b;}const g=gcd(a,b);return[a/g,b/g];}
  const zero=F(0),one=F(1),s=F(93,1000),alpha=F(1037,10000),K=F(149,20),J=F(4427,500),G=F(1457,250),scale=1000000n;
  function add(x,y){return F(x[0]*y[1]+y[0]*x[1],x[1]*y[1]);}
  function neg(x){return[-x[0],x[1]];}
  function sub(x,y){return add(x,neg(y));}
  function mul(x,y){return F(x[0]*y[0],x[1]*y[1]);}
  function div(x,y){return F(x[0]*y[1],x[1]*y[0]);}
  function cmp(x,y){const d=x[0]*y[1]-y[0]*x[1];return d>0n?1:d<0n?-1:0;}
  function min(...xs){return xs.reduce((x,y)=>cmp(x,y)<=0?x:y);}
  function max(...xs){return xs.reduce((x,y)=>cmp(x,y)>=0?x:y);}
  function str(x){return x[0].toString()+"/"+x[1].toString();}
  function parse(x){if(Array.isArray(x))return x;const a=String(x).split("/");return F(a[0],a[1]||1);}
  function sum(xs){return xs.reduce(add,zero);}
  function floorR(x){let n=x[0]*scale;let q=n/x[1];if(n<0n&&n%x[1])q--;return F(q,scale);}
  function ceilR(x){return neg(floorR(neg(x)));}
  function comb(xs,n){xs=Array.from(xs);const out=[];function rec(a,start){if(a.length===n){out.push(a);return;}for(let i=start;i<=xs.length-(n-a.length);i++)rec(a.concat(xs[i]),i+1);}rec([],0);return out;}
  function perm(xs){xs=Array.from(xs);if(xs.length===0)return[[]];return xs.flatMap((x,i)=>perm(xs.filter((_,j)=>j!==i)).map(t=>[x,...t]));}
  function canon(w){let inversions=0;for(let i=0;i<3;i++)for(let j=i+1;j<3;j++)if(labels.indexOf(w[i])>labels.indexOf(w[j]))inversions++;return[w.split("").sort((a,b)=>labels.indexOf(a)-labels.indexOf(b)).join(""),inversions%2?-1:1];}
  function sg(kn,w){if(new Set(w).size<3)return 0;const[key,e]=canon(w);return e*(kn[key]||0);}
  function put(kn,w,e,trace,why){const[key,par]=canon(w);const val=par*e;if(kn[key]&&kn[key]!==val)throw{geometry:true,reason:["sign",w,e],trace};if(kn[key])return false;kn[key]=val;if(trace)trace.push({word:w,sign:e,why});return true;}
  function edges(w){return Array.from(w,(x,i)=>x+w[(i+1)%w.length]);}
  function inside(kn,w,p){if(w.includes(p))return false;const e=sg(kn,w.slice(0,3));return !!e&&edges(w).every(x=>sg(kn,x+p)===e);}
  function convex(kn,w){return comb(w,3).every(t=>sg(kn,t.join(""))===1);}
  const triples=comb(labels,3).map(t=>t.join(""));
  const circuitWords=comb(labels,5).flatMap(t=>t.map(p=>p+t.filter(x=>x!==p).join("")));
  function circuits(w){const[a,b,c,d,e]=w;return[[a+b+c,a+d+e,1],[a+b+d,a+c+e,-1],[a+b+e,a+c+d,1]];}
  function initial(loc,word) {
    const kn={},trace=[];
    for(const t of comb(anchors,3))put(kn,t.join(""),1);
    for(let i=0;i<4;i++){const p="PQRS"[i],top=i>0;for(const ed of edges(anchors))put(kn,ed+p,top&&ed==="EF"?-1:1);put(kn,"HC"+p,i===0&&loc==="BTTT"?-1:1);if(top){put(kn,"HE"+p,1);put(kn,"CF"+p,-1);}}
    if(loc==="BTTT")for(const t of"QRS"){put(kn,"HP"+t,1);put(kn,"CP"+t,-1);}
    for(const t of comb("QRS",2))put(kn,"E"+t.join(""),1);
    ["FQR","FQS","FRS","QRS"].forEach((t,i)=>put(kn,t,word[i]==="+"?1:-1));
    for(const t of"QRS"){put(kn,"EP"+t,-1,trace,["fixed-top-cross"]);put(kn,"FP"+t,1,trace,["fixed-top-cross"]);}
    return{kn,trace};
  }
  const meshTemplate="ABZ BCX CAY AZY BXZ CYX ZXY AZX BXY CYZ AXY BYZ CZX".split(" ");
  function geometry(loc,word,kn,trace) {
    const empty=["ABC","ABE","ACE","BCE",...(word==="+--+"?[]:["ABF","ABH","AFH","BFH"])];
    for(let round=0;round<100;round++){
      let changed=false;
      for(const w of circuitWords){
        const pairs=circuits(w),vals=pairs.map(([x,y,e])=>e*sg(kn,x)*sg(kn,y)),nz=vals.filter(Boolean);
        if(nz.length===3&&new Set(nz).size===1)throw{geometry:true,reason:["plubad",w],trace};
        if(nz.length!==2||new Set(nz).size!==1)continue;
        const[x,y,e]=pairs[vals.indexOf(0)];const sx=sg(kn,x),sy=sg(kn,y);if(!!sx===!!sy)continue;
        const target=sx?y:x,ts=-nz[0]*e*(sx||sy);
        changed=put(kn,target,ts,trace,["plu",w])||changed;
      }
      for(const hull of empty)for(const p of labels)if(!hull.includes(p)){
        const tests=edges(hull).map(ed=>[ed+p,sg(kn,ed+p)]);
        if(tests.every(t=>t[1]===1))throw{geometry:true,reason:["empty",hull,p],trace};
        if(tests.filter(t=>t[1]===1).length===2&&tests.some(t=>t[1]===0)){const t=tests.find(t=>!t[1]);changed=put(kn,t[0],-1,trace,["empty",hull,p])||changed;}
      }
      const inners=[];
      for(const raw of triples)if(sg(kn,raw)){
        const hull=sg(kn,raw)>0?raw:raw[1]+raw[0]+raw[2];
        const pts=Array.from(labels).filter(p=>inside(kn,hull,p));
        if(pts.length>=4)throw{geometry:true,reason:["four",hull,pts],trace};
        for(const p of pts)inners.push([hull,p]);
        if(pts.length===3){
          for(const p of pts)for(const ed of edges(hull))if(pts.filter(t=>t!==p&&inside(kn,ed+p,t)).length===2)throw{geometry:true,reason:["cluster",hull,p,ed+p,pts.filter(t=>t!==p)],trace};
          const patterns=[];
          for(const ps of perm(pts)){
            const mp=Object.fromEntries(Array.from("ABCXYZ",(x,i)=>[x,(hull+ps.join(""))[i]])),row={};
            for(const t of meshTemplate){const z=Array.from(t,x=>mp[x]).join("");const[key,e]=canon(z);row[key]=e;}
            if(Object.entries(row).every(([key,e])=>!kn[key]||kn[key]===e))patterns.push(row);
          }
          if(!patterns.length)throw{geometry:true,reason:["nomesh",hull,pts],trace};
          for(const key of Object.keys(patterns[0]))if(!kn[key]&&patterns.every(t=>t[key]===patterns[0][key]))changed=put(kn,key,patterns[0][key],trace,["mesh",hull,pts])||changed;
        }
      }
      inners.push([anchors,"P"],[loc==="BTTT"?"HABC":"HCEF","P"]);
      for(const[hull,p]of inners)for(const pair of comb(labels.replace(p,""),2)){
        const ed=pair.join("");const values=Array.from(hull,t=>ed.includes(t)?0:sg(kn,ed+t));
        if(Array.from(hull).some((t,i)=>!ed.includes(t)&&!values[i]))continue;
        const nz=values.filter(Boolean);if(nz.length&&new Set(nz).size===1)changed=put(kn,ed+p,nz[0],trace,["via",hull,p,ed])||changed;
      }
      if(!changed)return;
    }
    throw Error("geometry loop");
  }
  function coarseBox(loc,word,kn) {
    const top=mul(word==="+--+"?G:K,s),ear=loc==="BTTT"&&(sg(kn,"ACP")<0||sg(kn,"HBP")<0);
    const rho=loc==="BTTT"?mul(ear?K:G,s):mul(F(4),s);
    const delta=div(s,sub(one,alpha)),contact=sub(one,div(top,sub(one,alpha)));
    const lo=[alpha,alpha,rho,alpha,alpha,rho,delta,delta,...Array(6).fill(add(alpha,s))];
    const hi=[contact,contact,one,contact,contact,one,sub(one,s),sub(one,s),...Array(6).fill(one)];
    hi[0]=min(hi[0],word==="+--+"?F(33,125):F(21,125));hi[3]=min(hi[3],hi[0]);
    lo[2]=max(lo[2],add(alpha,div(s,hi[0])));lo[5]=max(lo[5],add(alpha,div(s,hi[1])));
    if(loc==="BTTT"){
      if(sg(kn,"ACP")===1&&sg(kn,"HBP")===1)lo[6]=lo[7]=div(mul(s,add(one,alpha)),sub(one,alpha));
      hi[6]=sub(sub(one,s),lo[7]);hi[7]=sub(sub(one,s),lo[6]);
    }
    for(const pt of"QRS"){
      const others=Array.from("QRS").filter(t=>t!==pt&&inside(kn,"E"+pt+"F",t));
      const cost=mul([one,F(3),K][others.length],s),i=6+2*"PQRS".indexOf(pt);
      lo[i]=lo[i+1]=add(alpha,div(cost,sub(one,alpha)));
      for(const tt of others){const j=6+2*"PQRS".indexOf(tt);hi[j]=min(hi[j],sub(one,delta));hi[j+1]=min(hi[j+1],sub(one,delta));}
    }
    return{lo,hi,rho,top};
  }
  function pconst(x){return new Map(x?[["",x]]:[]);}
  function pvar(i){return new Map([[String(i),1]]);}
  function padd(...ps){const out=new Map();for(const p of ps)for(const[m,c]of p)out.set(m,(out.get(m)||0)+c);for(const[m,c]of out)if(!c)out.delete(m);return out;}
  function pscale(p,e){return new Map(Array.from(p,([m,c])=>[m,c*e]).filter(t=>t[1]));}
  function psub(p,q){return padd(p,pscale(q,-1));}
  function pmul(p,q){const out=new Map();for(const[m,c]of p)for(const[n,d]of q){const key=[...m.split(",").filter(Boolean),...n.split(",").filter(Boolean)].map(Number).sort((a,b)=>a-b).join(",");out.set(key,(out.get(key)||0)+c*d);}for(const[m,c]of out)if(!c)out.delete(m);return out;}
  const PV=names.map((_,i)=>pvar(i)),PC0=pconst(0),PC1=pconst(1);
  const pts={A:[PC0,PV[0]],B:[PV[1],PC0],C:[PV[2],PC0],E:[PC1,PV[3]],F:[PV[4],PC1],H:[PC0,PV[5]],P:[PV[6],PV[7]],Q:[PV[8],PV[9]],R:[PV[10],PV[11]],S:[PV[12],PV[13]]};
  const detCache=new Map();
  function det(w){if(detCache.has(w))return detCache.get(w);const[A,B,C]=Array.from(w,x=>pts[x]);const z=psub(pmul(psub(B[0],A[0]),psub(C[1],A[1])),pmul(psub(B[1],A[1]),psub(C[0],A[0])));detCache.set(w,z);return z;}
  function evaluate(poly,at){let z=zero;for(const[mon,c]of poly){let v=F(c);for(const i of mon.split(",").filter(Boolean).map(Number))v=mul(v,at[i]);z=add(z,v);}return z;}
  function endpointMax(poly,lo,hi){
    const used=Array.from(new Set(Array.from(poly.keys()).flatMap(x=>x.split(",").filter(Boolean).map(Number)))).sort((a,b)=>a-b);
    let best=null;const at=lo.slice();
    for(let bits=0;bits<2**used.length;bits++){used.forEach((i,j)=>at[i]=bits&(1<<j)?hi[i]:lo[i]);const v=evaluate(poly,at);if(best===null||cmp(v,best)>0)best=v;}
    return best;
  }
  const anchorCaps={
    ABC:[{a:1},{c:1,b:-1}],ABE:[{e:1}],ABF:[{f:1}],ABH:[{b:1},{h:1,a:-1}],
    ACE:[{e:1}],ACF:[{c:1}],ACH:[{h:1,a:-1},{c:1}],AEF:[{"":1,a:-1}],
    AEH:[{h:1,a:-1}],AFH:[{f:1},{h:1,a:-1}],BCE:[{e:1},{c:1,b:-1}],
    BCF:[{c:1,b:-1}],BCH:[{h:1},{c:1,b:-1}],BEF:[{"":1,b:-1}],
    BEH:[{h:1}],BFH:[{f:1}],CEF:[{"":1,f:-1}],CEH:[{h:1}],CFH:[{c:1}],EFH:[{"":1,e:-1}]
  };
  function affineUpper(expr,lo,hi){return sum(Object.entries(expr).map(([v,c])=>v===""?F(c):mul(F(c),c>0?hi[names.indexOf(v)]:lo[names.indexOf(v)])));}
  function triangleCap(w,kn,lo,hi){
    let best=min(one,endpointMax(pscale(det(w),sg(kn,w)),lo,hi));let source=["vertices",str(best)];
    for(const[hull,caps]of Object.entries(anchorCaps))if(Array.from(w).every(t=>hull.includes(t)||inside(kn,hull,t)))for(const cap of caps){const value=affineUpper(cap,lo,hi);if(cmp(value,best)<0){best=value;source=["anchor",hull,cap];}}
    if(Array.from(w).every(t=>"EFQRS".includes(t))){
      const value=mul(sub(one,alpha),sub(one,alpha));if(cmp(value,best)<0){best=value;source=["top-container"];}
    }
    const top=Array.from(w).filter(t=>"QRS".includes(t));
    if(top.length===2&&(w.includes("E")||w.includes("F"))){
      const base=w.includes("E")?"E":"F";let[x,y]=top;if(sg(kn,base+x+y)<0)[x,y]=[y,x];
      const xi=6+2*"PQRS".indexOf(x),yi=6+2*"PQRS".indexOf(y);
      const value=base==="E"?min(sub(hi[xi+1],lo[3]),sub(one,lo[yi])):min(sub(one,lo[xi+1]),sub(hi[yi],lo[4]));
      if(cmp(value,best)<0){best=value;source=["top-affine",base+x+y];}
    }
    if(top.length===1&&w.includes("E")&&w.includes("F")){const i=6+2*"PQRS".indexOf(top[0]);const value=min(sub(hi[i],lo[4]),sub(hi[i+1],lo[3]));if(cmp(value,best)<0){best=value;source=["top-apex",top[0]];}}
    return{value:best,source};
  }
  function cost(n){return [one,F(3),K,J][n];}
  function quadCost(n){return n===1?mul(F(24,5),s):n===2?mul(F(8),s):n===3?F(93,91):n===4?mul(add(J,F(3)),s):n===5?mul(add(J,K),s):mul(mul(F(2),J),s);}

  function refinePhysical(loc,word,kn,box,roundLimit=6,maxSteps=500,external=[]) {
    const lo=box.lo.slice(),hi=box.hi.slice(),factors=[],seen=new Set(),steps=[];
    const rconst=x=>new Map(x[0]?[["",x]]:[]);
    const rfrom=p=>new Map(Array.from(p,([m,c])=>[m,F(c)]));
    function radd(...ps){const out=new Map();for(const p of ps)for(const[m,c]of p)out.set(m,add(out.get(m)||zero,c));for(const[m,c]of out)if(cmp(c,zero)===0)out.delete(m);return out;}
    function rscale(p,c){return new Map(Array.from(p,([m,d])=>[m,mul(c,d)]).filter(t=>cmp(t[1],zero)!==0));}
    function rsub(p,q){return radd(p,rscale(q,F(-1)));}
    function rmul(p,q){const out=new Map();for(const[m,c]of p)for(const[n,d]of q){const key=[...m.split(",").filter(Boolean),...n.split(",").filter(Boolean)].map(Number).sort((a,b)=>a-b).join(",");out.set(key,add(out.get(key)||zero,mul(c,d)));}return out;}
    const rv=PV.map(rfrom),r1=rconst(one);
    function addFactor(name,poly,why){
      const signature=Array.from(poly).sort((a,b)=>a[0].localeCompare(b[0])).map(([m,c])=>m+":"+str(c)).join(";");
      if(seen.has(signature))return;seen.add(signature);
      const terms=Array.from(poly,([m,c])=>({mon:m.split(",").filter(Boolean).map(Number),co:c}));
      if(terms.some(t=>new Set(t.mon).size!==t.mon.length))return;
      const support=Array.from(new Set(terms.flatMap(t=>t.mon))).sort((a,b)=>a-b);
      factors.push({name,terms,support,why});
    }
    for(const raw of triples)if(sg(kn,raw)){
      const occupants=Array.from(labels).filter(p=>inside(kn,raw,p));
      addFactor("A_"+raw,radd(rscale(rfrom(det(raw)),F(sg(kn,raw))),rconst(neg(mul(cost(occupants.length),s)))),["actual-area",raw,occupants]);
      for(const[hull,caps]of Object.entries(anchorCaps))if(Array.from(raw).every(t=>hull.includes(t)||inside(kn,hull,t)))for(let ci=0;ci<caps.length;ci++){
        let pp=rconst(neg(mul(cost(occupants.length),s)));
        for(const[v,c]of Object.entries(caps[ci]))pp=radd(pp,v===""?rconst(F(c)):rscale(rv[names.indexOf(v)],F(c)));
        addFactor("AC_"+raw+"_"+hull+"_"+ci,pp,["anchor-cap",raw,hull,ci,occupants]);
      }
    }
    for(const[first,second,nm]of [[5,0,"ha"],[3,0,"ea"],[5,3,"he"],[4,1,"fb"],[2,4,"cf"],[4,3,"sym"]])addFactor(nm,rsub(rv[first],rv[second]),["contact-order",nm]);
    addFactor("lower-area",radd(rmul(rv[5],rv[2]),rconst(neg(box.rho))),["endpoint-lower",str(box.rho)]);
    addFactor("lower-quad",radd(rmul(rv[5],rv[2]),rscale(rmul(rv[0],rv[1]),F(-1)),rconst(neg(mul(loc==="BTTT"?F(24,5):F(2),s)))),["lower-quad",loc]);
    addFactor("upper-quad",radd(rconst(sub(one,mul(loc==="ITTT"?F(24,5):F(2),s))),rscale(rmul(rsub(rv[5],rv[3]),rsub(rv[2],rv[4])),F(-1))),["upper-quad",loc]);
    addFactor("top-area",radd(rmul(rsub(r1,rv[3]),rsub(r1,rv[4])),rconst(neg(box.top))),["top-hull",word]);
    if(loc==="BTTT"){
      addFactor("lower-sum",radd(rconst(sub(one,s)),rscale(rv[6],F(-1)),rscale(rv[7],F(-1))),["lower-sum"]);
      if(sg(kn,"ACP")===1&&sg(kn,"HBP")===1){
        addFactor("central-x",radd(rmul(rmul(rv[5],rsub(rv[2],rv[1])),rv[6]),rscale(radd(rv[2],rv[1]),neg(s))),["central-lower-x"]);
        addFactor("central-y",radd(rmul(rmul(rv[2],rsub(rv[5],rv[0])),rv[7]),rscale(radd(rv[5],rv[0]),neg(s))),["central-lower-y"]);
      }
    }
    for(const outer of"QRS")for(const inner of"QRS")if(outer!==inner&&inside(kn,"EF"+outer,inner)){
      const fanWords=["F"+outer+inner,"E"+outer+inner,"EF"+inner];
      const costs=fanWords.map(w=>cost(Array.from(labels).filter(t=>inside(kn,w,t)).length));
      const M=div(mul(sub(one,alpha),sub(one,alpha)),s),[ce,cf,cu]=costs;
      if(cmp(sum(costs),M)>0)return{lo,hi,factors:[],steps,contradiction:{kind:"weighted-barycentric",outer,inner,costs:costs.map(str),M:str(M)}};
      const oi=6+2*"PQRS".indexOf(outer),ii=6+2*"PQRS".indexOf(inner);
      const polys=[
        radd(rscale(rv[ii],M),rconst(neg(ce)),rscale(rv[4],neg(sub(sub(M,ce),cu))),rscale(rv[oi],neg(cu))),
        radd(rconst(sub(sub(M,cf),cu)),rscale(rv[4],cf),rscale(rv[oi],cu),rscale(rv[ii],neg(M))),
        radd(rscale(rv[ii+1],M),rconst(neg(cf)),rscale(rv[3],neg(sub(sub(M,cf),cu))),rscale(rv[oi+1],neg(cu))),
        radd(rconst(sub(sub(M,ce),cu)),rscale(rv[3],ce),rscale(rv[oi+1],cu),rscale(rv[ii+1],neg(M)))
      ];
      polys.forEach((pp,axis)=>addFactor("WBARY_"+outer+inner+"_"+axis,pp,["weighted-barycentric",outer,inner,costs.map(str),str(M),axis]));
    }
    function factorRecord(fac){return{name:fac.name,why:fac.why,terms:fac.terms.map(t=>[t.mon,str(t.co)])};}
    for(const row of external){const sign=sg(kn,row.triangle);if(!sign)throw Error("unsigned inherited area");const physical=rscale(rfrom(det(row.triangle)),F(sign)),value=parse(row.value);addFactor("AREA_"+row.direction+"_"+row.triangle,row.direction==="lo"?radd(physical,rconst(neg(value))):radd(rconst(value),rscale(physical,F(-1))),["earlier-area",row]);}
    const serializeFactors=()=>factors.map(factorRecord);
    for(let round=0;round<roundLimit;round++){
      let changed=false;
      for(let fi=0;fi<factors.length;fi++){
        const fac=factors[fi];
        for(const target of fac.support){
          const others=fac.support.filter(i=>i!==target),lines=new Map();let leftOK=false,rightOK=false,skip=false;
          for(let bits=0;bits<2**others.length;bits++){
            const at={};others.forEach((i,j)=>at[i]=bits&(1<<j)?hi[i]:lo[i]);
            let A=zero,B=zero;
            for(const t of fac.terms){let value=t.co;for(const i of t.mon)if(i!==target)value=mul(value,at[i]);if(t.mon.includes(target))A=add(A,value);else B=add(B,value);}
            lines.set(str(A)+","+str(B),[A,B]);
            if(cmp(add(mul(A,lo[target]),B),zero)>=0)leftOK=true;
            if(cmp(add(mul(A,hi[target]),B),zero)>=0)rightOK=true;
            if(leftOK&&rightOK){skip=true;break;}
          }
          if(skip)continue;
          const feasible=[];
          for(const[A,B]of lines.values()){
            let L=lo[target],H=hi[target];const sign=cmp(A,zero);
            if(sign>0)L=max(L,div(neg(B),A));else if(sign<0)H=min(H,div(neg(B),A));else if(cmp(B,zero)<0)continue;
            if(cmp(L,H)<=0)feasible.push([L,H]);
          }
          const record={factor:fi,target:names[target],old:[str(lo[target]),str(hi[target])],lines:Array.from(lines.values(),pair=>pair.map(str))};
          if(!feasible.length)return{lo,hi,factors:serializeFactors(),steps,contradiction:record};
          const rawL=min(...feasible.map(t=>t[0])),rawH=max(...feasible.map(t=>t[1]));
          const L=max(lo[target],floorR(rawL)),H=min(hi[target],ceilR(rawH));
          if(cmp(L,lo[target])===0&&cmp(H,hi[target])===0)continue;
          record.raw=[str(rawL),str(rawH)];record.new=[str(L),str(H)];steps.push(record);lo[target]=L;hi[target]=H;changed=true;
          if(steps.length>=maxSteps)return{lo,hi,factors:serializeFactors(),steps,truncated:true};
        }
      }
      if(!changed)break;
    }
    return{lo,hi,factors:serializeFactors(),steps};
  }

  function areaSetup(loc,word,kn,box) {
    const{lo,hi}=box,vars={},initial=[],relations=[],seen=new Set();
    function key(w){return canon(w)[0];}
    for(const w of triples)if(sg(kn,w)){
      const occupants=Array.from(labels).filter(p=>inside(kn,w,p)),cap=triangleCap(w,kn,lo,hi),floor=mul(cost(occupants.length),s);
      vars[w]={lo:floor,hi:cap.value,li:initial.length,ui:initial.length+1};
      initial.push({id:initial.length,triangle:w,direction:"lo",value:str(floor),source:["occupants",occupants]});
      initial.push({id:initial.length,triangle:w,direction:"hi",value:str(cap.value),source:cap.source});
      for(const p of occupants)relations.push({kind:"fan",outer:w,parts:edges(w).map(ed=>key(ed+p)),point:p});
    }
    for(const cw of circuitWords){const ps=circuits(cw),vs=ps.map(([x,y,e])=>e*sg(kn,x)*sg(kn,y));if(vs.some(x=>!x)||new Set(vs).size!==2)continue;const i=vs.findIndex(x=>vs.filter(y=>y===x).length===1);const iso=ps[i].slice(0,2).map(key),rhs=ps.filter((_,j)=>j!==i).map(p=>p.slice(0,2).map(key));const signature=JSON.stringify([iso.slice().sort(),rhs.map(p=>p.slice().sort()).sort()]);if(seen.has(signature))continue;seen.add(signature);relations.push({kind:"plu",witness:cw,iso,rhs});}
    for(const set of comb(labels,4))for(const tail of perm(set.slice(1))){
      const hull=set[0]+tail.join("");if(!convex(kn,hull))continue;
      const occupants=Array.from(labels).filter(p=>!hull.includes(p)&&inside(kn,hull,p));if(!occupants.length)break;
      for(let rotation=0;rotation<4;rotation++){
        const cyc=hull.slice(rotation)+hull.slice(0,rotation),[a,b,c,d]=cyc;
        relations.push({kind:"quad",parts:[key(a+b+c),key(a+c+d)],floor:quadCost(occupants.length),hull:cyc,occupants});
        if(occupants.length<=2){
          const n1=occupants.filter(p=>inside(kn,a+c+d,p)).length,n2=occupants.filter(p=>inside(kn,b+c+d,p)).length,nn=[n1,n2].sort().join("");
          let rate=occupants.length===1?{"00":F(29,5),"01":K,"11":F(12)}[nn]:{"00":F(1142,125),"01":F(1142,125),"02":F(139,10),"11":F(12),"12":F(199,10),"22":F(149,5)}[nn];
          if(occupants.length===2&&occupants.every(p=>inside(kn,a+b+c,p)&&inside(kn,a+b+d,p)))rate=max(rate,F(299,31));
          relations.push({kind:"support",X:key(a+b+d),Y:key(a+b+c),Z:key(a+c+d),constant:mul(rate,s),source:["quad",cyc,occupants,str(rate)]});
        }
      }
      break;
    }
    for(const set of comb(labels,5))for(const tail of perm(set.slice(1))){
      const hull=set[0]+tail.join("");if(!convex(kn,hull))continue;
      for(let rotation=0;rotation<5;rotation++){const cyc=hull.slice(rotation)+hull.slice(0,rotation),[a,b,c,d,e]=cyc;relations.push({kind:"support",X:key(a+b+e),Y:key(a+d+e),Z:key(a+b+d),constant:mul(F(11),s),source:["pentagon",cyc]});}
      break;
    }

    for(const hull of triples)for(const inner of labels)if(inside(kn,hull,inner)){
      const vertices=Array.from(hull),outerKey=key(hull),fanKeys=[key(hull[1]+hull[2]+inner),key(hull[0]+hull[2]+inner),key(hull[0]+hull[1]+inner)];
      for(const pairArray of comb(labels,2)){
        const pair=pairArray.join(""),target=pair.includes(inner)?null:key(pair+inner),targetSign=target?sg(kn,pair+inner):0;
        if(target&&!targetSign)continue;
        const terms=vertices.map(vertex=>pair.includes(vertex)?{name:null,sign:0}:{name:key(pair+vertex),sign:sg(kn,pair+vertex)});
        if(terms.some(t=>t.name&&!t.sign))continue;
        relations.push({kind:"bary",outer:outerKey,fans:fanKeys,target,targetSign,vertices:terms,witness:{container:hull,inner,line:pair}});
      }
    }

    return{vars,initial,relations};
  }
  function propagate(state,rounds=30,maxSteps=10000) {
    const{vars,initial,relations}=state,updates=[];
    function upd(name,direction,raw,why,refs){
      const vv=vars[name],value=direction==="lo"?floorR(raw):ceilR(raw);
      if(direction==="lo"?cmp(value,vv.lo)<=0:cmp(value,vv.hi)>=0)return false;
      const id=initial.length+updates.length;updates.push({id,triangle:name,direction,value:str(value),raw:str(raw),why,refs});
      vv[direction]=value;vv[direction==="lo"?"li":"ui"]=id;
      if(cmp(vv.lo,vv.hi)>0)throw{scalar:true,triangle:name,lower:str(vv.lo),upper:str(vv.hi),ids:[vv.li,vv.ui],updates};
      return true;
    }
    for(const[name,v]of Object.entries(vars))if(cmp(v.lo,v.hi)>0)return{closed:true,reason:{initial:true,triangle:name,ids:[v.li,v.ui]},updates:[]};
    try{
      for(let round=0;round<rounds;round++){
        let changed=false;
        for(let ri=0;ri<relations.length;ri++){
          const R=relations[ri],why=[R.kind,ri];
          if(R.kind==="fan"){
            const T=vars[R.outer],pp=R.parts.map(x=>vars[x]);
            changed=upd(R.outer,"lo",sum(pp.map(x=>x.lo)),why,pp.map(x=>x.li))||changed;
            changed=upd(R.outer,"hi",sum(pp.map(x=>x.hi)),why,pp.map(x=>x.ui))||changed;
            for(let i=0;i<3;i++){const other=pp.filter((_,j)=>i!==j);changed=upd(R.parts[i],"lo",sub(T.lo,sum(other.map(x=>x.hi))),why,[T.li,...other.map(x=>x.ui)])||changed;changed=upd(R.parts[i],"hi",sub(T.hi,sum(other.map(x=>x.lo))),why,[T.ui,...other.map(x=>x.li)])||changed;}
          }else if(R.kind==="quad"){
            const[A,B]=R.parts.map(x=>vars[x]);changed=upd(R.parts[0],"lo",sub(R.floor,B.hi),why,[B.ui])||changed;changed=upd(R.parts[1],"lo",sub(R.floor,A.hi),why,[A.ui])||changed;
          }else if(R.kind==="plu"){
            const[X,Y]=R.iso.map(x=>vars[x]),[[U,V],[W,Z]]=R.rhs.map(p=>p.map(x=>vars[x]));
            for(let i=0;i<2;i++){const other=[X,Y][1-i];changed=upd(R.iso[i],"lo",div(add(mul(U.lo,V.lo),mul(W.lo,Z.lo)),other.hi),why,[U.li,V.li,W.li,Z.li,other.ui])||changed;changed=upd(R.iso[i],"hi",div(add(mul(U.hi,V.hi),mul(W.hi,Z.hi)),other.lo),why,[U.ui,V.ui,W.ui,Z.ui,other.li])||changed;}
            for(let i=0;i<2;i++)for(let j=0;j<2;j++){
              const name=R.rhs[i][j],other=vars[R.rhs[i][1-j]],[A,B]=R.rhs[1-i].map(x=>vars[x]);
              changed=upd(name,"lo",div(sub(mul(X.lo,Y.lo),mul(A.hi,B.hi)),other.hi),why,[X.li,Y.li,A.ui,B.ui,other.ui])||changed;
              changed=upd(name,"hi",max(zero,div(sub(mul(X.hi,Y.hi),mul(A.lo,B.lo)),other.lo)),why,[X.ui,Y.ui,A.li,B.li,other.li])||changed;
            }

          }else if(R.kind==="bary"){
            const outer=vars[R.outer],fans=R.fans.map(w=>vars[w]);
            const N=outer.hi,weights=fans.map(v=>v.lo),residual=sub(N,sum(weights));
            if(cmp(residual,zero)<0){changed=upd(R.outer,"lo",sum(weights),["bary-fan",ri],fans.map(v=>v.li))||changed;throw Error("unreached barycentric inconsistency");}
            const baseRefs=[outer.ui,...fans.map(v=>v.li)];
            const signedLower=R.vertices.map(t=>!t.name?zero:t.sign>0?vars[t.name].lo:neg(vars[t.name].hi));
            const signedUpper=R.vertices.map(t=>!t.name?zero:t.sign>0?vars[t.name].hi:neg(vars[t.name].lo));
            const lowerRefs=baseRefs.concat(R.vertices.filter(t=>t.name).map(t=>vars[t.name][t.sign>0?"li":"ui"]));
            const upperRefs=baseRefs.concat(R.vertices.filter(t=>t.name).map(t=>vars[t.name][t.sign>0?"ui":"li"]));
            const lower=div(add(sum(weights.map((b,i)=>mul(b,signedLower[i]))),mul(residual,min(...signedLower))),N);
            const upper=div(add(sum(weights.map((b,i)=>mul(b,signedUpper[i]))),mul(residual,max(...signedUpper))),N);
            if(R.target===null){
              if(cmp(lower,zero)>0||cmp(upper,zero)<0)throw{scalar:true,baryZero:true,relation:ri,refs:[lowerRefs,upperRefs],lower:str(lower),upper:str(upper),updates};
            }else if(R.targetSign>0){
              changed=upd(R.target,"lo",lower,["bary",ri,"lo"],lowerRefs)||changed;
              changed=upd(R.target,"hi",upper,["bary",ri,"hi"],upperRefs)||changed;
            }else{
              changed=upd(R.target,"lo",neg(upper),["bary",ri,"neg-hi"],upperRefs)||changed;
              changed=upd(R.target,"hi",neg(lower),["bary",ri,"neg-lo"],lowerRefs)||changed;
            }

          }else if(R.kind==="support"){
            const X=vars[R.X],Y=vars[R.Y],Z=vars[R.Z],kk=R.constant;
            changed=upd(R.Y,"lo",mul(kk,sub(one,div(Z.hi,X.lo))),why,[Z.ui,X.li])||changed;
            changed=upd(R.Z,"lo",mul(X.lo,sub(one,div(Y.hi,kk))),why,[X.li,Y.ui])||changed;
            if(cmp(Y.hi,kk)<0)changed=upd(R.X,"hi",div(mul(kk,Z.hi),sub(kk,Y.hi)),why,[Z.ui,Y.ui])||changed;
          }
          if(updates.length>=maxSteps)return{closed:false,truncated:true,updates};
        }
        if(!changed)return{closed:false,rounds:round+1,updates};
      }
      return{closed:false,rounds,updates};
    }catch(e){if(e.scalar)return{closed:true,reason:e,updates};throw e;}
  }
  function run(loc,word,extra=[],options={}) {
    const{kn,trace}=initial(loc,word);
    try{
      for(const t of extra)put(kn,t.slice(0,3),t[3]==="+"?1:-1,trace,["branch"]);
      geometry(loc,word,kn,trace);
      const initialBox=coarseBox(loc,word,kn);if(options.box){initialBox.lo=initialBox.lo.map((v,i)=>max(v,parse(options.box.low[i])));initialBox.hi=initialBox.hi.map((v,i)=>min(v,parse(options.box.high[i])));}const refinement=refinePhysical(loc,word,kn,initialBox,6,1000,options.areaBounds||[]);const box={...initialBox,lo:refinement.lo,hi:refinement.hi};if(refinement.contradiction)return{loc,word,extra,known:kn,trace,closed:true,box:{low:box.lo.map(str),high:box.hi.map(str)},initialBox:{low:initialBox.lo.map(str),high:initialBox.hi.map(str)},refinement:{...refinement,lo:undefined,hi:undefined},reason:{interval:refinement.contradiction}};const state=areaSetup(loc,word,kn,box);for(const row of options.areaBounds||[]){const target=state.vars[row.triangle];if(!target)throw Error('missing prior triangle');const value=parse(row.value),dir=row.direction;if(dir==='lo'?cmp(value,target.lo)>0:cmp(value,target.hi)<0){target[dir]=value;const id=target[dir==='lo'?'li':'ui'];state.initial[id]={...state.initial[id],value:str(value),source:['earlier-area',row]};}}const result=propagate(state,200,30000);
      return{loc,word,extra,known:kn,trace,box:{low:box.lo.map(str),high:box.hi.map(str)},initialBox:{low:initialBox.lo.map(str),high:initialBox.hi.map(str)},refinement:{...refinement,lo:undefined,hi:undefined},initial:state.initial,relations:state.relations.map(r=>JSON.parse(JSON.stringify(r,(_,v)=>typeof v==="bigint"?v.toString():v))),...result};
    }catch(e){if(e.geometry)return{loc,word,extra,closed:true,geometric:e,known:kn,trace};throw e;}
  }
  return{run,F,str,parse,geometry,initial,coarseBox,areaSetup,propagate,sg,inside,edges,canon,cost,mul,cmp,s,labels};
})()
