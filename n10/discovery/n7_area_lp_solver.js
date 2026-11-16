(function createAreaViolationLP(){
"use strict";
/*
Discovery-only floating simplex for F_i(A)>=0 on a fixed area box.
The tableau uses the standard dictionary pivot (background reference:
KACTL content/numerical/Simplex.h, marked MIT, author Stanford).
This implementation is specialized to the always-feasible minimax
violation problem and uses no artificial-variable phase.
A numeric result is NEVER a proof. Exact rational reconstruction is required.
*/
function solve(factors,bounds,{maxPivots=6000,maxMilliseconds=25000,eps=1e-9,returnSession=false}={}){
 const names=Object.keys(bounds).sort(),nArea=names.length,n=nArea+1,m=factors.length+nArea;
 const index=Object.fromEntries(names.map((t,i)=>[t,i]));
 const number=x=>{if(typeof x==="number")return x;const a=String(x).split("/");return Number(a[0])/(a[1]?Number(a[1]):1);};
 const lo=names.map(t=>number(bounds[t].lo.value??bounds[t].lo)),hi=names.map(t=>number(bounds[t].hi.value??bounds[t].hi)),width=hi.map((v,i)=>v-lo[i]);
 if(width.some(v=>v<0))return{status:"inconsistent_box"};
 const D=Array.from({length:m+1},()=>new Float64Array(n+1));
 const basic=Int32Array.from({length:m},(_,i)=>n+i),nonbasic=Int32Array.from({length:n},(_,j)=>j);
 const normalizers=[];
 for(let i=0;i<factors.length;i++){
  const f=factors[i],row=D[i];let b=number(f.constant||"0"),norm=0;
  for(const[t,cs]of Object.entries(f.coefficients)){const j=index[t];if(j===undefined)throw Error("Unknown area "+t);const a=number(cs);b+=a*lo[j];row[j]=-a*width[j];norm=Math.max(norm,Math.abs(row[j]));}
  norm=Math.max(norm,Math.abs(b),1e-12);normalizers.push(norm);
  for(let j=0;j<nArea;j++)row[j]/=norm;
  row[nArea]=-1;row[n]=b/norm;
 }
 for(let i=0;i<nArea;i++){D[factors.length+i][i]=1;D[factors.length+i][n]=1;}
 D[m][nArea]=1;
 let pivots=0,initial=0;const started=Date.now();
 function pivot(r,s){
  const p=D[r][s];if(!Number.isFinite(p)||Math.abs(p)<1e-16)throw Error("Unstable pivot");
  const inv=1/p,row=D[r];
  for(let i=0;i<=m;i++)if(i!==r){
   const out=D[i],old=out[s];if(old!==0){const v=old*inv;for(let j=0;j<=n;j++)if(j!==s)out[j]-=v*row[j];out[s]=-v;}
  }
  for(let j=0;j<=n;j++)if(j!==s)row[j]*=inv;
  row[s]=inv;const b=basic[r];basic[r]=nonbasic[s];nonbasic[s]=b;pivots++;
 }
 let r=-1;
 for(let i=0;i<factors.length;i++)if(r<0||D[i][n]<D[r][n])r=i;
 if(r>=0&&D[r][n]<-eps){pivot(r,nArea);initial++;}
 function iterate(fixed=null){
 let status="optimal";const from=pivots,clock=Date.now();
 for(;;){
  if(pivots-from>=maxPivots||Date.now()-clock>maxMilliseconds){status="limit";break;}
  let s=-1;
  for(let j=0;j<n;j++)if(nonbasic[j]!==fixed&&D[m][j]<-eps&&(s<0||D[m][j]<D[m][s]-eps||(Math.abs(D[m][j]-D[m][s])<=eps&&nonbasic[j]<nonbasic[s])))s=j;
  if(s<0)break;
  let row=-1;
  for(let i=0;i<m;i++)if(D[i][s]>eps){
   const ratio=D[i][n]/D[i][s];
   if(row<0||ratio<D[row][n]/D[row][s]-eps||(Math.abs(ratio-D[row][n]/D[row][s])<=eps&&basic[i]<basic[row]))row=i;
  }
  if(row<0){status="unexpected_unbounded";break;}
  pivot(row,s);
 }
 return status;
 }
 let status=iterate();
 function collect(status){
 const solution=new Float64Array(n);
 for(let i=0;i<m;i++)if(basic[i]<n)solution[basic[i]]=D[i][n];
 const dual=new Float64Array(m);
 for(let j=0;j<n;j++)if(nonbasic[j]>=n)dual[nonbasic[j]-n]=D[m][j];
 const area=Object.fromEntries(names.map((t,j)=>[t,lo[j]+width[j]*solution[j]]));
 let minFactor=Infinity;
 for(const f of factors){let v=number(f.constant||0);for(const[t,a]of Object.entries(f.coefficients))v+=number(a)*area[t];minFactor=Math.min(minFactor,v);}
 return{status,pivots,initial,elapsed_ms:Date.now()-started,objective:D[m][n],delta:solution[nArea],area,minFactor,
        weights:factors.map((_,i)=>dual[i]/normalizers[i]),normalizers,
        numeric_dual_negativity:Math.min(0,...Array.from(dual)),dimensions:[m,n]};
 }
 const first=collect(status);
 if(!returnSession)return first;
 let fixedReady=false;
 function optimize(coefficients){
  if(first.status!=="optimal"||first.delta>1e-7)throw Error("Cannot optimize an unresolved feasibility problem");
  if(!fixedReady){
   const row=Array.from(basic).indexOf(nArea);
   if(row>=0){let col=-1;for(let j=0;j<n;j++)if(col<0||Math.abs(D[row][j])>Math.abs(D[row][col]))col=j;
    if(col>=0&&Math.abs(D[row][col])>eps)pivot(row,col);else throw Error("Cannot remove zero violation variable from basis");
   }
   fixedReady=true;
  }
  const cost=new Float64Array(n);let constant=0;
  for(const[t,v]of Object.entries(coefficients)){const j=index[t],a=number(v);if(j===undefined)throw Error("Unknown objective area");cost[j]=a*width[j];constant+=a*lo[j];}
  D[m].fill(0);D[m][n]=constant;
  for(let j=0;j<n;j++)D[m][j]=nonbasic[j]<n?-cost[nonbasic[j]]:0;
  for(let i=0;i<m;i++)if(basic[i]<n&&cost[basic[i]]!==0){const a=cost[basic[i]];for(let j=0;j<=n;j++)D[m][j]+=a*D[i][j];}
  const before=pivots,clock=Date.now(),status=iterate(nArea),answer=collect(status);
  answer.objective_pivots=pivots-before;answer.objective_elapsed_ms=Date.now()-clock;return answer;
 }
 return{result:first,optimize};
}
return{solve};
})()
