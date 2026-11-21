"use strict";
function auditN6ITTTTopPacket(packet){
const EXACT=(() => {
 const gcd=(a,b)=>{a=a<0n?-a:a;b=b<0n?-b:b;while(b){const t=a%b;a=b;b=t;}return a;};
 class Q {
  constructor(n,d=1n){n=BigInt(n);d=BigInt(d);if(d===0n)throw Error("zero denominator");if(d<0n){n=-n;d=-d;}const g=gcd(n,d);this.n=n/g;this.d=d/g;}
  static of(v){if(v instanceof Q)return v;if(typeof v==="string"&&v.includes("/")){const [n,d]=v.split("/");return new Q(n,d);}return new Q(v);}
  add(y){y=Q.of(y);return new Q(this.n*y.d+y.n*this.d,this.d*y.d);}
  neg(){return new Q(-this.n,this.d);}
  sub(y){return this.add(Q.of(y).neg());}
  mul(y){y=Q.of(y);return new Q(this.n*y.n,this.d*y.d);}
  div(y){y=Q.of(y);return new Q(this.n*y.d,this.d*y.n);}
  pow(k){if(k<0)return new Q(this.d**BigInt(-k),this.n**BigInt(-k));return new Q(this.n**BigInt(k),this.d**BigInt(k));}
  cmp(y){y=Q.of(y);const z=this.n*y.d-y.n*this.d;return z<0n?-1:z>0n?1:0;}
  toString(){return this.d===1n?String(this.n):this.n+"/"+this.d;}
 }
 const q=x=>Q.of(x);
 const constant=x=>new Map(q(x).n===0n?[]:[["",q(x)]]);
 const variable=name=>new Map([[name,q(1)]]);
 const add=(...ps)=>{const out=new Map();for(const p of ps){for(const [m,c]of p){const z=(out.get(m)||q(0)).add(c);if(z.n===0n)out.delete(m);else out.set(m,z);}}return out;};
 const scale=(p,c)=>{c=q(c);return new Map([...p].map(([m,v])=>[m,v.mul(c)]).filter(([,v])=>v.n!==0n));};
 const neg=p=>scale(p,-1);
 const sub=(p,r)=>add(p,neg(r));
 const mul=(...ps)=>{let out=constant(1);for(const p of ps){const terms=[];for(const [m,c]of out)for(const [n,d]of p){const mon=[...m.split("*").filter(Boolean),...n.split("*").filter(Boolean)].sort().join("*");terms.push(new Map([[mon,c.mul(d)]]));}out=add(...terms);}return out;};
 const eq=(p,r)=>sub(p,r).size===0;
 const assert=(x,msg)=>{if(!x)throw Error(msg||"assertion failed");};
 return {Q,q,constant,variable,add,scale,neg,sub,mul,eq,assert};
})();

const {Q,q,constant:C,variable:V,add:Padd,scale:Pscale,sub:Psub,mul:Pmul,eq:Peq,assert:check}=EXACT;
const labels="ABCEFHPQRS",variables="a b c e f h p q u v r w j k".split(" "),zero=q(0),one=q(1),sigma=q("93/1000"),alpha=q("1037/10000"),costs=["1","3","149/20","4427/500"].map(q);
const stats={contexts:0,geometry:0,physical_factors:0,polynomial_identities:0,interval_steps:0,endpoint_lines:0,scalar_initial:0,scalar_updates:0,relations:0,capacity:0,terminals:0,sign_splits:0,coordinate_splits:0};
function rq(x){return Array.isArray(x)?new Q(x[0],x[1]):q(x);}
const equal=(a,b)=>rq(a).cmp(rq(b))===0;
const minQ=(...xs)=>xs.reduce((x,y)=>x.cmp(y)<0?x:y),maxQ=(...xs)=>xs.reduce((x,y)=>x.cmp(y)>0?x:y);
const total=xs=>xs.reduce((x,y)=>x.add(y),zero);
function sameSet(a,b){return a.length===b.length&&new Set(a).size===a.length&&a.every(x=>b.includes(x));}
function choose(a,n){a=[...a];const out=[];function visit(v,i){if(v.length===n){out.push(v);return;}for(let j=i;j<=a.length-n+v.length;j++)visit([...v,a[j]],j+1);}visit([],0);return out;}
function perms(a){a=[...a];return a.length?a.flatMap((x,i)=>perms(a.filter((_,j)=>i!==j)).map(v=>[x,...v])):[[]];}
function canon(t){check(t.length===3&&new Set(t).size===3&&[...t].every(x=>labels.includes(x)),"bad triple");const chars=[...t];let parity=1;for(let i=0;i<3;i++)for(let j=i+1;j<3;j++)if(labels.indexOf(chars[i])>labels.indexOf(chars[j]))parity=-parity;return [chars.sort((a,b)=>labels.indexOf(a)-labels.indexOf(b)).join(""),parity];}
const key=t=>canon(t)[0];
function sg(kn,t){if(new Set(t).size<3)return 0;const[k,e]=canon(t);return (kn[k]||0)*e;}
function setSign(kn,t,s){const[k,e]=canon(t);check(s===1||s===-1,"invalid sign");check(!kn[k]||kn[k]===e*s,"sign conflict");kn[k]=e*s;}
const edges=h=>[...h].map((x,i)=>x+h[(i+1)%h.length]);
function interior(kn,h,p){if(h.includes(p))return false;const s=sg(kn,h.slice(0,3));return !!s&&edges(h).every(e=>sg(kn,e+p)===s);}
function convex(kn,h){return new Set(h).size===h.length&&choose(h,3).every(t=>sg(kn,t.join(""))===1);}
const occupants=(kn,t)=>[...labels].filter(p=>interior(kn,t,p));
function cost(n){check(Number.isInteger(n)&&n>=0&&n<=3,"unsupported occupancy");return costs[n].mul(sigma);}
const coord=Object.fromEntries(variables.map(v=>[v,V(v)])),O=C(0),I=C(1);
const points={A:[O,coord.a],B:[coord.b,O],C:[coord.c,O],E:[I,coord.e],F:[coord.f,I],H:[O,coord.h],P:[coord.p,coord.q],Q:[coord.u,coord.v],R:[coord.r,coord.w],S:[coord.j,coord.k]};
const detCache=new Map();
function det(t){if(detCache.has(t))return detCache.get(t);const[a,b,c]=[...t].map(p=>points[p]);const r=Psub(Pmul(Psub(b[0],a[0]),Psub(c[1],a[1])),Pmul(Psub(b[1],a[1]),Psub(c[0],a[0])));detCache.set(t,r);return r;}
function identity(p,message){check(!p.size,message);stats.polynomial_identities++;}
function area(kn,t){const e=sg(kn,t);check(e,"unproved area sign");return Pscale(det(t),e);}
function products(w){check(w.length===5&&new Set(w).size===5,"circuit labels");const[a,b,c,d,e]=w;return [[a+b+c,a+d+e,1],[a+b+d,a+c+e,-1],[a+b+e,a+c+d,1]];}
const checkedCircuits=new Set();
function circuitIdentity(w){if(checkedCircuits.has(w))return;identity(Padd(...products(w).map(([a,b,e])=>Pscale(Pmul(det(a),det(b)),e))),"circuit expansion");checkedCircuits.add(w);}
function initialSigns(){const kn={};for(const t of choose("ABCEFH",3))setSign(kn,t.join(""),1);
 for(const t of "PQRS"){for(const e of edges("ABCEFH"))setSign(kn,e+t,t!=="P"&&e==="EF"?-1:1);setSign(kn,"HC"+t,1);
 if(t!=="P")for(const[w,e]of [["HE",1],["CF",-1]])setSign(kn,w+t,e);}
 for(const t of ["EQR","EQS","ERS","FRS"])setSign(kn,t,1);
 for(const t of ["FQR","FQS","QRS"])setSign(kn,t,-1);return kn;
}
const nodeBy=new Map(packet.signTree.map(n=>[n.id,n])),plans=new Map(),terminalStages=new Set(),forceAt=new Map(),visited=new Set();
check(nodeBy.size===packet.signTree.length,"duplicate case");
function claim(id,info){check(Number.isSafeInteger(id)&&id>=0&&id<packet.stages.length&&!plans.has(id),"stage reuse");plans.set(id,info);}
function metric(m,scope,allowed,cuts,parent=null,cut=null){
 check(m&&m.stages.length,"empty coordinate node");for(let i=0;i<m.stages.length;i++)claim(m.stages[i],{scope,allowed:[...allowed],cuts:[...cuts],parent:i?m.stages[i-1]:parent,cut:i?null:cut,packet:m.packet,index:i});
 const last=m.stages.at(-1);check(!(m.split&&m.continuation),"two continuations");
 if(m.split){stats.coordinate_splits++;const sp=m.split;check(variables.includes(sp.variable),"cut coordinate");rq(sp.value);
  for(const side of ["low","high"]){check(sp[side],"missing weak coordinate half");const c={variable:sp.variable,value:sp.value,side};metric(sp[side],scope,allowed,[...cuts,c],last,c);}
 }else if(m.continuation){const f=m.continuation.forcedSource,n=nodeBy.get(scope);check(f&&n&&f.id===scope&&f.forest==="top_scalar_forest_ITTT_--+-"&&n.forces.some(x=>x.token===f.token&&n.stages[f.stage]===x.stage)&&allowed.includes(f.token),"unsupported metric sign");metric(m.continuation,scope,allowed,cuts,last,null);}
 else{check(!terminalStages.has(last),"duplicate terminal");terminalStages.add(last);}
}
function visit(id,allowed,depth){
 const n=nodeBy.get(id);check(n&&!visited.has(id)&&n.depth===depth&&sameSet(n.given,allowed),"case ancestry");visited.add(id);
 const current=[...allowed];check(n.stages.length,"empty sign node");
 for(let i=0;i<n.stages.length;i++){const sid=n.stages[i];claim(sid,{scope:id,allowed:[...current],cuts:[],parent:i?n.stages[i-1]:null,cut:null,packet:"forest:"+id,index:i});
 const fs=n.forces.filter(f=>f.stage===sid);forceAt.set(sid,fs);for(const f of fs){check(!current.includes(f.token),"repeated forced premise");current.push(f.token);}}
 check(n.forces.every(f=>n.stages.includes(f.stage)),"unused capacity");
 if(n.split){canon(n.split);stats.sign_splits++;const wanted=[id+"/"+n.split+"-",id+"/"+n.split+"+"];check(sameSet(n.children,wanted),"missing determinant half");for(const ch of wanted)visit(ch,[...current,ch.slice(ch.lastIndexOf("/")+1)],depth+1);}
 else if(n.metric){check(n.metric===id&&packet.metrics[id],"metric scope");metric(packet.metrics[id],id,current,[]);}
 else{check(n.terminal===n.stages.at(-1),"missing sign terminal");terminalStages.add(n.terminal);}
}
check(packet.format==="n6-ittt-triangle-split-proof-v1"&&packet.hypotheses.locations==="ITTT"&&packet.hypotheses.word==="--+-"&&packet.hypotheses.normalized===true&&equal(packet.hypotheses.s,sigma)&&packet.hypotheses.labels===labels&&JSON.stringify(packet.hypotheses.variables)===JSON.stringify(variables),"wrong theorem");
visit("root",[],0);check(visited.size===nodeBy.size&&plans.size===packet.stages.length,"uncovered stages");
const terminals=new Map(packet.terminals.map(t=>[t.stage,t]));check(terminals.size===packet.terminals.length&&sameSet([...terminalStages],[...terminals.keys()]),"terminal ledger");
const contexts=new Map(),bounds=new Map(),boxes=new Map();
function inherits(source,target){check(source<target,"future source");const a=plans.get(source),b=plans.get(target);check(a&&b&&(a.scope===b.scope||b.scope.startsWith(a.scope+"/")),"sibling sign source");
 const cutId=c=>c.variable+":"+rq(c.value)+":"+c.side,tc=b.cuts.map(cutId);check(a.cuts.every(c=>tc.includes(cutId(c))),"sibling coordinate source");}
function previous(ref,stage){const b=bounds.get(ref);check(b,"missing earlier bound");inherits(b.stage,stage.id);return b;}
function geometry(ctx,allowed){
 check(ctx.locations==="ITTT"&&ctx.word==="--+-"&&ctx.given.every(t=>allowed.includes(t)),"context case");
 const kn=initialSigns(),used=[];
 for(const row of ctx.trace){const w=row.word,e=row.sign,[rule,...witness]=row.why;check(!sg(kn,w),"repeated geometry");
 if(rule==="branch"){const token=w+(e===1?"+":"-");check(allowed.includes(token),"unproved case sign");used.push(token);}
 else if(rule==="fixed-top-cross"){check("QRS".includes(w[2])&&((w.slice(0,2)==="EP"&&e===-1)||(w.slice(0,2)==="FP"&&e===1)),"cross sign");
 const t=w[2],[tx,ty]=points[t];
 if(w[0]==="E")identity(Psub(Pmul(Psub(I,coord.f),det("EP"+t)),Psub(Pmul(Psub(I,coord.p),det("EF"+t)),Pmul(Psub(I,tx),det("EFP")))),"E cross identity");
 else identity(Psub(Pmul(Psub(I,coord.e),det("FP"+t)),Psub(Pmul(Psub(I,ty),det("EFP")),Pmul(Psub(I,coord.q),det("EF"+t)))),"F cross identity");
 }else if(rule==="plu"){const c=witness[0];circuitIdentity(c);const hypothetical={...kn};setSign(hypothetical,w,-e);const vals=products(c).map(([a,b,k])=>k*sg(hypothetical,a)*sg(hypothetical,b));check(vals.every(x=>x!==0)&&vals.every(x=>x===vals[0]),"opposite sign is not impossible");}
 else if(rule==="empty"){const[h,p]=witness;check(["ABC","ABE","ACE","BCE","ABF","ABH","AFH","BFH"].includes(h)&&!h.includes(p),"empty source");const hsg=sg(kn,h),opposite={...kn};setSign(opposite,w,-e);check(hsg&&edges(h).every(a=>sg(opposite,a+p)===hsg)&&edges(h).some(a=>key(a+p)===key(w)),"empty exclusion");}
 else if(rule==="via"){const[h,p,line]=witness;check((h==="ABCEFH"&&p==="P")||(h==="HCEF"&&p==="P")||(h.length===3&&interior(kn,h,p)),"affinity source");const signs=[...h].map(t=>line.includes(t)?0:sg(kn,line+t));check(signs.some(Boolean)&&[...h].every((t,i)=>line.includes(t)||signs[i]!==0),"affinity missing vertex");const nz=signs.filter(Boolean);check(nz.every(s=>s===nz[0]),"affinity mixed signs");const[a,b]=canon(w),[c,d]=canon(line+p);check(a===c&&e*b===nz[0]*d,"affinity conclusion");}
 else if(rule==="mesh"){const[h,ps]=witness;check(h.length===3&&sg(kn,h)===1&&ps.length===3&&new Set(ps).size===3&&ps.every(p=>interior(kn,h,p)),"mesh occupants");
 const candidates=[];for(const perm of perms(ps)){const map=Object.fromEntries([..."ABCXYZ"].map((x,i)=>[x,[...h,...perm][i]])),assignment={};
 for(const t of "ABZ BCX CAY AZY BXZ CYX ZXY AZX BXY CYZ AXY BYZ CZX".split(" "))setSign(assignment,[...t].map(x=>map[x]).join(""),1);
 if(Object.entries(assignment).every(([t,v])=>!kn[t]||kn[t]===v))candidates.push(assignment);}
 check(candidates.length&&candidates.every(c=>sg(c,w)===e),"mesh noncommon conclusion");}
 else throw Error("unsupported geometry "+rule);
 setSign(kn,w,e);stats.geometry++;
 }
 check(sameSet(used,ctx.given),"given/trace mismatch");check(JSON.stringify(Object.entries(kn).sort())===JSON.stringify(Object.entries(ctx.known).sort()),"final geometry table");stats.contexts++;return kn;
}

function rounded(v,side){const scale=1000000n,n=v.n*scale;let floor=n/v.d;if(n<0n&&n%v.d)floor--;const lower=new Q(floor,scale);return side==="lo"?lower:(lower.cmp(v)===0?lower:new Q(floor+1n,scale));}
function evaluate(p,values){let result=zero;for(const[m,c]of p){let value=c;for(const v of m.split("*").filter(Boolean))value=value.mul(values[v]);result=result.add(value);}return result;}
function usedVariables(p){return [...new Set([...p.keys()].flatMap(m=>m.split("*").filter(Boolean)))];}
function extrema(p,low,high){const vs=usedVariables(p),at={...low};let smallest=null,largest=null;for(let mask=0;mask<2**vs.length;mask++){vs.forEach((v,i)=>at[v]=(mask&(1<<i))?high[v]:low[v]);const x=evaluate(p,at);smallest=smallest===null?x:minQ(smallest,x);largest=largest===null?x:maxQ(largest,x);}return [smallest,largest];}
function parsePolynomial(terms){let out=C(0);const seen=new Set();for(const[indices,c]of terms){check(indices.every(i=>Number.isSafeInteger(i)&&i>=0&&i<variables.length)&&new Set(indices).size===indices.length,"non-multiaffine term");const names=indices.map(i=>variables[i]).sort(),mon=names.join("*");check(!seen.has(mon),"duplicate monomial");seen.add(mon);out=Padd(out,Pmul(C(rq(c)),...names.map(V)));}return out;}
function coarse(kn){
 const rho=sigma.mul(4),delta=sigma.div(one.sub(alpha)),cap=one.sub(cost(2).div(one.sub(alpha))),small=minQ(cap,q("21/125")),lowerCentral=delta;
 const lo=[alpha,alpha,maxQ(rho,alpha.add(sigma.div(small))),alpha,alpha,maxQ(rho,alpha.add(sigma.div(cap))),lowerCentral,lowerCentral,zero,zero,zero,zero,zero,zero];
 const hi=[small,cap,one,small,cap,one,one.sub(sigma),one.sub(sigma),one,one,one,one,one,one];
 for(const t of "QRS"){const contained=[..."QRS"].filter(x=>x!==t&&interior(kn,"E"+t+"F",x)),i=6+2*"PQRS".indexOf(t);lo[i]=lo[i+1]=alpha.add(cost(contained.length).div(one.sub(alpha)));for(const inner of contained){const j=6+2*"PQRS".indexOf(inner);hi[j]=minQ(hi[j],one.sub(delta));hi[j+1]=minQ(hi[j+1],one.sub(delta));}}
 return {lo:Object.fromEntries(variables.map((v,i)=>[v,lo[i]])),hi:Object.fromEntries(variables.map((v,i)=>[v,hi[i]])),rho};
}
function factor(f,kn,stage){
 const [kind,...args]=f.why;let expected;
 if(kind==="actual-area"){const[t,occ]=args;check(sameSet(occ,occupants(kn,t)),"physical occupancy");expected=Psub(area(kn,t),C(cost(occ.length)));}
 else if(kind==="contact-order"){const pair={ha:["h","a"],ea:["e","a"],he:["h","e"],fb:["f","b"],cf:["c","f"],sym:["f","e"]}[args[0]];check(pair,"contact order");expected=Psub(coord[pair[0]],coord[pair[1]]);}
 else if(kind==="endpoint-lower"){const floor=coarse(kn).rho;check(equal(args[0],floor),"endpoint cost");expected=Psub(Pmul(coord.h,coord.c),C(floor));}
 else if(kind==="earlier-area"){const witness=args[0],bound=previous(witness.ref,stage);check(witness.triangle===bound.triangle&&witness.direction===bound.direction&&equal(witness.value,bound.value),"physical scalar source");expected=bound.direction==="lo"?Psub(area(kn,bound.triangle),C(bound.value)):Psub(C(bound.value),area(kn,bound.triangle));}
 else if(kind==="weighted-barycentric"){
 const[outer,inner,weights,M0,axis]=args;check("QRS".includes(outer)&&"QRS".includes(inner)&&outer!==inner&&interior(kn,"EF"+outer,inner),"weighted fan");const fan=["F"+outer+inner,"E"+outer+inner,"EF"+inner],ks=fan.map(t=>cost(occupants(kn,t).length).div(sigma));
 check(weights.length===3&&weights.every((x,i)=>equal(x,ks[i])),"weighted costs");const M=one.sub(alpha).pow(2).div(sigma);check(equal(M0,M)&&total(ks).cmp(M)<=0,"weighted budget");
 const[Ew,Fw,Uw]=ks,[ux,uy]=points[outer],[vx,vy]=points[inner];
 const lowerX=Padd(C(Ew),Pscale(coord.f,M.sub(Ew).sub(Uw)),Pscale(ux,Uw));
 const upperX=Padd(C(M.sub(Fw).sub(Uw)),Pscale(coord.f,Fw),Pscale(ux,Uw));
 const lowerY=Padd(C(Fw),Pscale(coord.e,M.sub(Fw).sub(Uw)),Pscale(uy,Uw));
 const upperY=Padd(C(M.sub(Ew).sub(Uw)),Pscale(coord.e,Ew),Pscale(uy,Uw));
 const possible=[Psub(Pscale(vx,M),lowerX),Psub(upperX,Pscale(vx,M)),Psub(Pscale(vy,M),lowerY),Psub(upperY,Pscale(vy,M))];check(Number.isInteger(axis)&&axis>=0&&axis<4,"weighted coordinate");expected=possible[axis];
 }else throw Error("unknown factor source "+kind);
 const actual=parsePolynomial(f.terms);identity(Psub(actual,expected),"physical factor mismatch "+f.name);stats.physical_factors++;return actual;
}
function linesAt(p,target,low,high){
 const vs=usedVariables(p).filter(v=>v!==target),at={...low},distinct=new Map();
 for(let mask=0;mask<2**vs.length;mask++){vs.forEach((v,i)=>at[v]=(mask&(1<<i))?high[v]:low[v]);at[target]=zero;const intercept=evaluate(p,at);at[target]=one;const slope=evaluate(p,at).sub(intercept);distinct.set(slope.toString()+","+intercept.toString(),[slope,intercept]);}return [...distinct.values()];
}
function intervalStep(row,factors,lo,hi,terminal=false){
 const p=factors.get(String(row.factor)),v=row.target;check(p&&variables.includes(v)&&usedVariables(p).includes(v),"interval factor/variable");check(row.old.length===2&&equal(row.old[0],lo[v])&&equal(row.old[1],hi[v]),"interval old endpoints");
 const actual=linesAt(p,v,lo,hi),encode=a=>a.map(([m,b])=>m.toString()+","+b.toString()).sort(),printed=row.lines.map(r=>r.map(rq));check(JSON.stringify(encode(actual))===JSON.stringify(encode(printed)),"endpoint affine lines");stats.endpoint_lines+=actual.length;
 const domains=[];for(const[A,B]of actual){let left=lo[v],right=hi[v];if(A.cmp(0)>0)left=maxQ(left,B.neg().div(A));else if(A.cmp(0)<0)right=minQ(right,B.neg().div(A));else if(B.cmp(0)<0)continue;if(left.cmp(right)<=0)domains.push([left,right]);}
 if(terminal){check(domains.length===0,"nonempty claimed contradiction");return;}
 check(domains.length>0,"unrecorded interval contradiction");const exact=[minQ(...domains.map(x=>x[0])),maxQ(...domains.map(x=>x[1]))];check(row.raw.length===2&&row.raw.every((x,i)=>equal(x,exact[i])),"exact interval hull");
 const update=[maxQ(lo[v],rounded(exact[0],"lo")),minQ(hi[v],rounded(exact[1],"hi"))];check(row.new.length===2&&row.new.every((x,i)=>equal(x,update[i]))&&update[0].cmp(update[1])<=0,"outward coordinate rounding");[lo[v],hi[v]]=update;stats.interval_steps++;
}
function boxStage(stage,kn,terminal){
 const b=stage.box,plan=plans.get(stage.id);check(b.parent===plan.parent&&JSON.stringify(b.cut)===JSON.stringify(plan.cut),"box proof ancestry");const fresh=coarse(kn),lo={...fresh.lo},hi={...fresh.hi};
 if(b.parent!==null){inherits(b.parent,stage.id);const prior=boxes.get(b.parent);check(prior,"unproved parent box");for(const v of variables){lo[v]=maxQ(lo[v],prior.lo[v]);hi[v]=minQ(hi[v],prior.hi[v]);}}
 if(b.cut){const v=b.cut.variable,x=rq(b.cut.value);if(b.cut.side==="low")hi[v]=minQ(hi[v],x);else{check(b.cut.side==="high","cut side");lo[v]=maxQ(lo[v],x);}}
 check(b.initial.low.length===variables.length&&b.initial.high.length===variables.length,"box dimension");variables.forEach((v,i)=>check(equal(b.initial.low[i],lo[v])&&equal(b.initial.high[i],hi[v])&&lo[v].cmp(hi[v])<=0,"box initial bound"));
 const polys=new Map(Object.entries(b.factors).map(([id,f])=>[id,factor(f,kn,stage)]));
 for(const row of b.steps)intervalStep(row,polys,lo,hi);
 check(b.final.low.length===variables.length&&b.final.high.length===variables.length,"final box dimension");variables.forEach((v,i)=>check(equal(b.final.low[i],lo[v])&&equal(b.final.high[i],hi[v]),"box final bound"));boxes.set(stage.id,{lo,hi});
 if(terminal?.kind==="interval")intervalStep(terminal.reason,polys,lo,hi,true);
}

function relation(r,kn){
 if(r.kind==="fan"){check(interior(kn,r.outer,r.point),"fan containment");const expected=edges(r.outer).map(e=>key(e+r.point));check(sameSet(r.parts,expected),"fan diagonal");identity(Psub(area(kn,r.outer),Padd(...r.parts.map(t=>area(kn,t)))),"actual fan expansion");}
 else if(r.kind==="plu"){circuitIdentity(r.witness);const named=products(r.witness).map(([a,b])=>[key(a),key(b)].sort().join("*")).sort(),used=[r.iso,...r.rhs].map(a=>a.slice().sort().join("*")).sort();check(JSON.stringify(named)===JSON.stringify(used),"Plucker actual factors");check(r.iso.length===2&&r.rhs.length===2&&r.rhs.every(a=>a.length===2),"Plucker form");identity(Psub(Pmul(...r.iso.map(t=>area(kn,t))),Padd(...r.rhs.map(a=>Pmul(...a.map(t=>area(kn,t)))))),"unsigned product identity");}
 else if(r.kind==="quad"){check(r.hull.length===4&&convex(kn,r.hull)&&r.occupants.length>=1&&r.occupants.length<=3&&new Set(r.occupants).size===r.occupants.length&&r.occupants.every(x=>interior(kn,r.hull,x)),"retained quadrilateral witness");const[a,b,c,d]=r.hull;check(sameSet(r.parts,[key(a+b+c),key(a+c+d)])&&equal(r.floor,r.occupants.length===1?sigma.mul("24/5"):r.occupants.length===2?sigma.mul(8):q("93/91")),"quadrilateral sum rate");}
 else if(r.kind==="support"){
 const source=r.source,h=source[1];check(convex(kn,h),"support convexity");let expected,rate;
 if(source[0]==="pentagon"){check(h.length===5,"pentagon length");const[a,b,c,d,e]=h;expected=[key(a+b+e),key(a+d+e),key(a+b+d)];rate=q(11);}
 else{check(source[0]==="quad"&&h.length===4,"support quadrilateral");const[a,b,c,d]=h,occ=source[2];check(new Set(occ).size===occ.length&&occ.every(p=>interior(kn,h,p)),"support occupants");
 expected=[key(a+b+d),key(a+b+c),key(a+c+d)];
 if(occ.length===1){rate=q("29/5");check(equal(source[3],rate),"unused single-occupant support variant");}
 else{check(occ.length===2,"support pair size");
 const first=occ.filter(p=>interior(kn,a+c+d,p)).length,second=occ.filter(p=>interior(kn,b+c+d,p)).length;
 const shape=[first,second].sort().join("");
 if(shape==="02")rate=q("139/10");
 else {check(shape==="00"||shape==="01","unretained support allocation");rate=q("1142/125");}
 check(equal(source[3],rate),"two-occupant support rate");}}
 check(JSON.stringify([r.X,r.Y,r.Z])===JSON.stringify(expected)&&equal(r.constant,rate.mul(sigma)),"support names/constant");
 }else throw Error("unexpected relation "+r.kind);
 stats.relations++;
}
function insertBound(row,value,stage){check(typeof row.id==="string"&&/^[0-9]+:[0-9]+$/.test(row.id)&&Number(row.id.split(":")[0])===stage.id&&!bounds.has(row.id),"bound identifier");check(["lo","hi"].includes(row.direction)&&equal(row.value,value),"bound direction/value");bounds.set(row.id,{triangle:row.triangle,direction:row.direction,value,stage:stage.id});}
function initialBound(row,stage,kn){check(sg(kn,row.triangle),"initial actual sign");let expected;const[type,w]=row.source;
 if(type==="occupants"){check(row.direction==="lo"&&sameSet(w,occupants(kn,row.triangle)),"initial occupancy");expected=cost(w.length);}
 else if(type==="vertices"){const box=boxes.get(stage.id);check(box&&row.direction==="hi","initial box source");expected=minQ(one,extrema(area(kn,row.triangle),box.lo,box.hi)[1]);check(equal(w,expected),"printed vertex maximum");}
 else if(type==="square"){check(row.direction==="hi","square direction");expected=one;}
 else if(type==="earlier-area"){const b=previous(w.ref,stage);check(w.triangle===b.triangle&&w.direction===b.direction&&equal(w.value,b.value)&&row.triangle===b.triangle&&row.direction===b.direction,"initial inherited source");expected=b.value;}
 else throw Error("unknown bound source "+type);
 insertBound(row,expected,stage);stats.scalar_initial++;
}
function update(row,stage,r){
 const remaining=row.refs.map(id=>{const b=bounds.get(id);check(b&&b.stage===stage.id&&Number(id.split(":")[1])<Number(row.id.split(":")[1]),"future scalar source");return {...b,id};});
 function take(t,d){const i=remaining.findIndex(b=>b.triangle===t&&b.direction===d);check(i>=0,"incorrect scalar input");return remaining.splice(i,1)[0].value;}
 const side=row.direction,opposite=side==="lo"?"hi":"lo",target=row.triangle;check(side==="lo"||side==="hi","scalar direction");let raw;
 function positive(x){check(x.cmp(0)>0,"scalar divisor");return x;}
 if(r.kind==="fan"){if(target===r.outer)raw=total(r.parts.map(t=>take(t,side)));else{check(r.parts.includes(target),"fan target");raw=take(r.outer,side).sub(total(r.parts.filter(t=>t!==target).map(t=>take(t,opposite))));}}
 else if(r.kind==="quad"){check(side==="lo"&&r.parts.includes(target),"quad direction");raw=rq(r.floor).sub(take(r.parts.find(t=>t!==target),"hi"));}
 else if(r.kind==="plu"){
 if(r.iso.includes(target)){const numerator=total(r.rhs.map(pair=>take(pair[0],side).mul(take(pair[1],side)))),denom=take(r.iso.find(t=>t!==target),opposite);raw=numerator.div(positive(denom));}
 else{const pair=r.rhs.find(p=>p.includes(target)),other=r.rhs.find(p=>!p.includes(target));check(pair&&other,"product target");const numerator=take(r.iso[0],side).mul(take(r.iso[1],side)).sub(take(other[0],opposite).mul(take(other[1],opposite))),denom=take(pair.find(t=>t!==target),opposite);raw=numerator.div(positive(denom));if(side==="hi"&&raw.cmp(0)<0)raw=zero;}
 }else if(r.kind==="support"){
 const k=rq(r.constant);check(k.cmp(0)>0,"support positivity");
 if(target===r.Y&&side==="lo"){const upper=take(r.Z,"hi"),lower=take(r.X,"lo");raw=k.mul(one.sub(upper.div(positive(lower))));}
 else if(target===r.Z&&side==="lo"){const lower=take(r.X,"lo"),upper=take(r.Y,"hi");raw=lower.mul(one.sub(upper.div(k)));}
 else if(target===r.X&&side==="hi"){const z=take(r.Z,"hi"),y=take(r.Y,"hi");raw=k.mul(z).div(positive(k.sub(y)));}
 else throw Error("unsupported isolated support variable");
 }else throw Error("unknown scalar relation");
 check(remaining.length===0&&equal(row.raw,raw),"unconsumed inputs/wrong exact result");const value=rounded(raw,side);insertBound(row,value,stage);stats.scalar_updates++;
}
function capacity(f,stage,kn){
 const upper=bounds.get(f.upperRef);check(upper&&upper.stage===stage.id&&upper.direction==="hi"&&upper.triangle===key(f.outer)&&equal(f.upper,upper.value),"capacity bound");
 check(new Set(f.occupants).size===f.occupants.length&&f.occupants.every(p=>interior(kn,f.outer,p))&&!f.outer.includes(f.point)&&!f.occupants.includes(f.point),"capacity occupants");const threshold=cost(f.occupants.length+1);check(equal(f.nextCost,threshold)&&upper.value.cmp(threshold)<0,"capacity cost gap");
 check(f.token.length===4&&["-","+"].includes(f.token[3]),"capacity token");const w=f.token.slice(0,3),e=f.token[3]==="+"?1:-1;check(!sg(kn,w),"capacity target already signed");const opposite={...kn};setSign(opposite,w,-e);check(interior(opposite,f.outer,f.point),"capacity opposite not interior");stats.capacity++;
}
for(const stage of packet.stages){
 const plan=plans.get(stage.id);check(stage.id>=0&&stage.scope===plan.scope&&stage.packet===plan.packet&&stage.index===plan.index,"stage ledger");
 const ctx=packet.contexts[stage.context];check(ctx&&ctx.given.every(t=>plan.allowed.includes(t)),"unproved context");
 let kn=contexts.get(stage.context);if(!kn){kn=geometry(ctx,plan.allowed);contexts.set(stage.context,kn);}
 const terminal=terminals.get(stage.id);if(stage.box)boxStage(stage,kn,terminal);else check(terminal?.kind!=="interval","missing terminal box");
 let last=-1;function idOrder(row){const id=Number(row.id.split(":")[1]);check(Number.isSafeInteger(id)&&id>last,"bound chronology");last=id;}
 for(const row of stage.areaInitial){idOrder(row);initialBound(row,stage,kn);}
 for(const r of Object.values(stage.relations))relation(r,kn);
 for(const row of stage.areaUpdates){idOrder(row);const r=stage.relations[String(row.why[1])];check(r&&row.why[0]===r.kind,"relation reference");update(row,stage,r);}
 for(const f of forceAt.get(stage.id)||[])capacity(f,stage,kn);
 if(terminal){check(["area","interval","geometry"].includes(terminal.kind),"terminal type");if(terminal.kind==="geometry"){const[kind,h,pivot,fan,others]=terminal.reason;check(kind==="cluster"&&h.length===3&&sg(kn,h)===1&&interior(kn,h,pivot)&&others.length===2&&new Set([pivot,...others]).size===3&&others.every(x=>interior(kn,h,x)&&interior(kn,fan,x))&&edges(h).some(e=>e+pivot===fan),"clustered triple witness");}if(terminal.kind==="area"){const[l,u]=terminal.ids.map(id=>bounds.get(id));check(l&&u&&l.stage===stage.id&&u.stage===stage.id&&l.triangle===u.triangle&&l.triangle===terminal.triangle&&l.direction==="lo"&&u.direction==="hi"&&l.value.cmp(u.value)>0,"area contradiction");check(equal(terminal.lower,l.value)&&equal(terminal.upper,u.value),"terminal scalar values");}stats.terminals++;}
}
check(contexts.size===packet.contexts.length,"unused context");
const wanted=packet.totals;
check(stats.sign_splits===wanted.signSplits&&stats.coordinate_splits===wanted.coordinateSplits&&stats.terminals===wanted.terminals&&stats.geometry===2084&&stats.contexts===wanted.contexts&&stats.interval_steps===wanted.intervalSteps&&stats.physical_factors===wanted.physicalFactors&&stats.scalar_updates===wanted.areaUpdates&&stats.scalar_initial+stats.scalar_updates===wanted.areaBounds&&stats.relations===wanted.scalarRelations,"audit totals");
return {status:"PASS",...stats,box_stages:boxes.size,stages:packet.stages.length,complete:true};

}

if (typeof module !== "undefined" && module.exports) {
  module.exports = auditN6ITTTTopPacket;
  if (typeof require === "function" && require.main === module) {
    const fs = require("fs"), path = require("path");
    const syntax = require("./check_n6_ittt_top_triangle_word.js")();
    const indexPath = process.argv[2] || path.join(__dirname, "n6_ittt_top_triangle_word_tables", "INDEX.md");
    const index = fs.readFileSync(indexPath, "utf8"), files = {};
    for (const entry of syntax.printedFiles(index)) files[entry.file] = fs.readFileSync(path.join(path.dirname(indexPath), entry.file), "utf8");
    process.stdout.write("PASS: " + JSON.stringify(auditN6ITTTTopPacket(syntax.parsePrinted(index, files))) + "\n");
  }
}
