"""Exact factors for the fixed N6 top-triple proof; standard library only."""
from fractions import Fraction as F
from functools import lru_cache
from itertools import product
from math import prod
import re
import n6_top_triple_geometry as geometry
from n6_top_triple_geometry import LABELS,get,inside,convex

N=14;S=F(93,1000);K=F(149,20);J=F(4427,500);G5=F(1457,250)
ALPHA=F(1037,10000)
VARIABLES='a b c e f h p q u v r w j k'.split()
def C(value):
    value=F(value);return {():value} if value else {}
def V(index):return {(index,):F(1)}
def add(*polys):
    result={}
    for poly in polys:
        for mon,cc in poly.items():result[mon]=result.get(mon,F(0))+cc
    return {mon:cc for mon,cc in result.items() if cc}
def scale(poly,cc):return {mon:val*cc for mon,val in poly.items() if val*cc}
def sub(first,second):return add(first,scale(second,-1))
def mul(*polys):
    result=C(1)
    for poly in polys:
        nxt={}
        for aa,x in result.items():
            for bb,y in poly.items():
                mon=tuple(sorted(aa+bb));nxt[mon]=nxt.get(mon,F(0))+x*y
        result={mon:cc for mon,cc in nxt.items() if cc}
    return result
VS=[V(i) for i in range(N)]
a,b,c,e,f,h,p,q,u,v,r,w,j,k=VS
POINTS=dict(zip(LABELS,[(C(0),a),(b,C(0)),(c,C(0)),(C(1),e),(f,C(1)),(C(0),h),(p,q),(u,v),(r,w),(j,k)]))
@lru_cache(None)
def det(word):
    aa,bb,cc=(POINTS[ch] for ch in word)
    return sub(mul(sub(bb[0],aa[0]),sub(cc[1],aa[1])),mul(sub(bb[1],aa[1]),sub(cc[0],aa[0])))
def area(word):return add(*(det(word[0]+word[i]+word[i+1]) for i in range(1,len(word)-1)))
TRIANGLE_BOUNDS={frozenset('HCE'):h,frozenset('HCF'):c,frozenset('CEF'):sub(C(1),f),frozenset('EFH'):sub(C(1),e),
    frozenset('ABC'):a,frozenset('ABH'):b,frozenset('ACH'):sub(h,a),frozenset('BCH'):sub(c,b)}
ANCHOR_CAPS={
    'ABC':{'a':a,'cb':sub(c,b)},'ABE':{'e':e},'ABF':{'f':f},'ABH':{'b':b,'ha':sub(h,a)},
    'ACE':{'e':e},'ACF':{'c':c},'ACH':{'ha':sub(h,a),'c':c},'AEF':{'1a':sub(C(1),a)},
    'AEH':{'ha':sub(h,a)},'AFH':{'f':f,'ha':sub(h,a)},'BCE':{'e':e,'cb':sub(c,b)},
    'BCF':{'cb':sub(c,b)},'BCH':{'h':h,'cb':sub(c,b)},'BEF':{'1b':sub(C(1),b)},
    'BEH':{'h':h},'BFH':{'f':f},'CEF':{'1f':sub(C(1),f)},'CEH':{'h':h},
    'CFH':{'c':c},'EFH':{'1e':sub(C(1),e)}}
TCOST={0:F(1),1:F(3),2:K,3:J}

def top_model(known):
    word=''.join('+' if get(known,tr)>0 else '-' for tr in ['FQR','FQS','FRS','QRS'])
    models={'----':('triangle','Q'),'---+':('triangle','Q'),'--+-':('triangle','Q'),
       '-++-':('quad','EQSF','R','I'),'+--+':('quad','EQRF','S','II'),'++-+':('quad','EQRF','S','III')}
    assert word in models,('nonviable top model',word)
    model=models[word]
    if model[0]=='triangle':
        assert all(inside(known,'EQF',pt) for pt in 'RS')
    else:
        _,hull,point,cell=model;assert convex(known,hull) and inside(known,hull,point)
        aa,bb=hull[1:3];first=inside(known,'E'+aa+bb,point);second=inside(known,'F'+aa+bb,point)
        assert (first,second)=={'I':(True,False),'II':(False,False),'III':(False,True)}[cell]
    return model

def box(version,loc,known,floor,top_cost,central_box=False):
    floor=F(floor);top_cost=F(top_cost);assert version in(1,2) and loc in('BTTT','ITTT')
    model=top_model(known);proved_top=(G5 if model[-1]=='II' else K)*S
    assert top_cost in(F(29,5)*S,K*S) and top_cost<=proved_top
    lower_max=4*S if loc=='ITTT' else (K if get(known,'ACP')<0 or get(known,'HBP')<0 else G5)*S
    assert floor in(4*S,F(29,5)*S,K*S) and floor<=lower_max
    delta=S/(1-ALPHA);cap=1-top_cost/(1-S)
    low=[ALPHA,ALPHA,floor,ALPHA,ALPHA,floor]+[delta]*2+[ALPHA+S]*6
    high=[cap,cap,F(1),cap,cap,F(1)]+[1-S]*2+[F(1)]*6
    if version==2:
        top_strong=max(top_cost,G5*S);contact=1-top_strong/(1-ALPHA)
        lower_strong=max(floor,G5*S) if loc=='BTTT' else floor
        for i in[0,1,3,4]:high[i]=contact
        for i in[2,5]:low[i]=max(lower_strong,ALPHA+S/contact)
        if loc=='BTTT':
            if central_box:
                assert get(known,'ACP')==get(known,'HBP')==1
                low[6]=low[7]=S*(1+ALPHA)/(1-ALPHA)
            high[6]=1-S-low[7];high[7]=1-S-low[6]
        else:assert not central_box
        for pt in'QRS':
            others=[tt for tt in'QRS' if tt!=pt and inside(known,'E'+pt+'F',tt)]
            cost=TCOST[len(others)]*S;idx=6+2*'PQRS'.index(pt)
            low[idx]=low[idx+1]=ALPHA+cost/(1-ALPHA)
            for tt in others:
                jj=6+2*'PQRS'.index(tt)
                high[jj]=min(high[jj],1-delta);high[jj+1]=min(high[jj+1],1-delta)
    assert all(0<ll<hh<=1 for ll,hh in zip(low,high))
    return low,high

class Context:
    def __init__(self,loc,known,low,high,floor,top_cost,order=None,squares=None,witnesses=None,rates=None):
        self.loc=loc;self.known=known;self.low=list(map(F,low));self.high=list(map(F,high))
        self.floor=F(floor);self.top_cost=F(top_cost);self.order=order
        self.squares=squares or {};self.witnesses=witnesses;self.rates=rates if rates is not None else {};self.cache={}
    def witnesses_for(self,name,hull,count=None):
        if self.witnesses is None:
            found=''.join(ch for ch in LABELS if ch not in hull and inside(self.known,hull,ch))
            if count is not None:found=found[:count]
        else:found=self.witnesses[name]
        assert len(found)==len(set(found)) and (count is None or len(found)==count)
        assert all(pt not in hull and inside(self.known,hull,pt) for pt in found),(name,found)
        return found
    def triangle_box_cap(self,word):
        pp=det(word);used=sorted(set(i for mon in pp for i in mon));best=None
        assert all(len(mon)==len(set(mon)) for mon in pp)
        for bits in product((0,1),repeat=len(used)):
            at={i:(self.high[i] if bit else self.low[i]) for i,bit in zip(used,bits)}
            value=sum(cc*prod(at[i] for i in mon) for mon,cc in pp.items())
            best=value if best is None else max(best,value)
        return min(F(1),best)
    def plucker_cap(self,word):
        sg=get(self.known,word);assert sg
        oriented=word if sg>0 else word[1]+word[0]+word[2]
        answer=self.triangle_box_cap(oriented)
        for hull,uppers in ANCHOR_CAPS.items():
            if not all(pt in hull or inside(self.known,hull,pt) for pt in word):continue
            for upper in uppers.values():
                value=sum(cc*prod(self.high[ii] if cc>0 else self.low[ii] for ii in mon) for mon,cc in upper.items())
                answer=min(answer,value)
        return answer
    def atom(self,name):
        if name in self.cache:return self.cache[name]
        result=self._atom(name);self.cache[name]=result;return result
    def _atom(self,name):
        known=self.known;low=self.low;high=self.high;floor=self.floor;top_cost=self.top_cost
        if re.fullmatch(r'L\d+',name):
            ii=int(name[1:]);assert 0<=ii<2*N
            return sub(VS[ii//2],C(low[ii//2])) if ii%2==0 else sub(C(high[ii//2]),VS[ii//2])
        if name in('ha','ea','he','fb','cf'):
            return {'ha':sub(h,a),'ea':sub(e,a),'he':sub(h,e),'fb':sub(f,b),'cf':sub(c,f)}[name]
        if name.startswith('T_'):
            word=name[2:5];sg=1 if name[-1]=='+' else -1
            assert len(name)==6 and name[-1] in'+-' and get(known,word)==sg
            return add(scale(det(word),sg),C(-S))
        if name=='Vlow':return add(mul(h,c),C(-floor))
        if name=='Qlow':return add(mul(h,c),scale(mul(a,b),-1),C(-(F(24,5) if self.loc=='BTTT' else 2)*S))
        if name=='Qup':return add(C(1-(F(24,5) if self.loc=='ITTT' else 2)*S),scale(mul(sub(h,e),sub(c,f)),-1))
        if name in('TopTriple','Top_pair','Top5Strong'):
            cost={'TopTriple':top_cost,'Top_pair':3*S,'Top5Strong':max(top_cost,G5*S)}[name]
            return add(mul(sub(C(1),e),sub(C(1),f)),C(-cost))
        if name.startswith('TopContact_'):
            ch=name.split('_')[1];assert ch in'a b e f'.split()
            return sub(C(1-max(top_cost,G5*S)/(1-ALPHA)),VS[VARIABLES.index(ch)])
        if name=='Lower5Strong':
            assert self.loc=='BTTT';return add(mul(h,c),C(-max(floor,G5*S)))
        if name in('Order_ac','Order_bh','Central_ac','Central_bh'):
            assert self.loc=='BTTT' and get(known,'ACP')==get(known,'HBP')==1
            assert self.order in('+','-')
            if name.endswith('ac'):
                assert self.order=='+'
                return sub(mul(a,c),mul(b,h)) if name=='Order_ac' else sub(mul(c,a,sub(h,a)),scale(add(h,a),S))
            assert self.order=='-'
            return sub(mul(b,h),mul(a,c)) if name=='Order_bh' else sub(mul(h,b,sub(c,b)),scale(add(c,b),S))
        if name in('Central_x','Central_y','Central_strip_h','Central_strip_c'):
            assert self.loc=='BTTT' and get(known,'ACP')==get(known,'HBP')==1
            if name=='Central_x':return sub(mul(h,sub(c,b),p),scale(add(c,b),S))
            if name=='Central_y':return sub(mul(c,sub(h,a),q),scale(add(h,a),S))
            core=add(scale(mul(h,c),3),scale(mul(a,c),-1),scale(mul(b,h),-1),scale(mul(a,b),-1))
            return sub(mul(h if name.endswith('h') else c,sub(h,a),sub(c,b)),scale(core,S))
        if name.startswith('low_') or name=='Lower_simple_sum':
            assert self.loc=='BTTT' and name in('low_P','Lower_simple_sum')
            return add(C(1-S if name=='Lower_simple_sum' else (1-S)/floor),scale(p,-1),scale(q,-1))
        if name.startswith('up_'):
            pt=name[-1];assert pt in'QRS' or pt=='P' and self.loc=='ITTT'
            return add(*POINTS[pt],C(-floor-S))
        if name.startswith(('DX_','DY_')):
            pair=name[3:];assert len(pair)==len(set(pair))==2 and set(pair)<=set('PQRS')
            uu,vv=[POINTS[pt] for pt in pair]
            if name.startswith('DX_'):
                sg=get(known,'A'+pair);assert sg and get(known,'H'+pair)==-sg
                return add(scale(sub(uu[0],vv[0]),sg),C(-2*S/(high[5]-low[0])))
            sg=get(known,'B'+pair);assert sg and get(known,'C'+pair)==-sg
            return add(scale(sub(vv[1],uu[1]),sg),C(-2*S/(high[2]-low[1])))
        if name.startswith('top_'):
            parts=name.split('_');pt=parts[-1];mode='_'.join(parts[1:-1]);assert pt in'QRS'
            hull='EF'+pt;assert get(known,hull)==-1
            points=self.witnesses_for(name,hull);assert len(points)<=3;cost=TCOST[len(points)]*S
            xx,yy=POINTS[pt];dx=sub(xx,f);dy=sub(yy,e)
            if mode=='gap_x':return add(dx,C(-cost/(1-ALPHA)))
            if mode=='gap_y':return add(dy,C(-cost/(1-ALPHA)))
            return add({'x':dx,'y':dy,'px':mul(sub(C(1),e),dx),'py':mul(sub(C(1),f),dy)}[mode],C(-cost))
        if name.startswith('C_'):
            _,word,count=name.split('_');count=int(count);assert count in(1,2,3)
            self.witnesses_for(name,word,count);sg=get(known,word);assert sg
            return add(scale(det(word),sg),C(-TCOST[count]*S))
        if name.startswith('ACAP_'):
            _,word,n,tag=name.split('_');count=int(n);assert count in TCOST and word in ANCHOR_CAPS
            assert get(known,word)==1
            self.witnesses_for(name,word,count)
            return add(ANCHOR_CAPS[word][tag],C(-TCOST[count]*S))
        if name.startswith('Q_'):
            _,word,count=name.split('_');count=int(count);assert convex(known,word)
            self.witnesses_for(name,word,count)
            cost={1:F(24,5)*S,2:8*S,3:F(93,91),4:(J+3)*S,5:(J+K)*S,6:2*J*S}[count]
            return add(area(word),C(-cost))
        if name.startswith('QS_'):
            _,word,points,axis=name.split('_');aa,bb,cc,dd=word
            assert convex(known,word) and len(points)==len(set(points)) in(1,2)
            assert all(inside(known,word,pt) for pt in points)
            n1=sum(inside(known,aa+cc+dd,pt) for pt in points);n2=sum(inside(known,bb+cc+dd,pt) for pt in points)
            pair=tuple(sorted((n1,n2)))
            if len(points)==1:maximum={(0,0):F(29,5),(0,1):K,(1,1):F(12)}[pair]
            else:
                maximum={(0,0):F(9),(0,1):F(9),(0,2):F(139,10),(1,1):F(12),(1,2):F(199,10),(2,2):F(149,5)}[pair]
                if all(inside(known,aa+bb+cc,pt) and inside(known,aa+bb+dd,pt) for pt in points):maximum=max(maximum,F(299,31))
            rate=F(self.rates[name]);assert 0<rate<=maximum
            xx=det(aa+bb+cc);yy=det(aa+bb+dd);delta=sub(yy,det(aa+cc+dd))
            assert axis in('X','Y');upper=TRIANGLE_BOUNDS.get(frozenset(aa+bb+(cc if axis=='X' else dd)),C(1))
            return sub(mul(upper,yy if axis=='X' else xx),scale(delta,rate*S))
        if name.startswith('S_'):
            _,word,pair,part=name.split('_');ii=int(part[0]);sg=1 if part[1]=='+' else -1
            assert convex(known,word) and len(pair)==len(set(pair))==2 and ii in(0,1) and part[1] in'+-'
            assert all(inside(known,word,pt) for pt in pair)
            assert all(get(known,word[t]+word[t+2]+pair[0])*get(known,word[t]+word[t+2]+pair[1])==-1 for t in(0,1))
            halves=['HABCP' if self.loc=='BTTT' else 'HABC','HCEFP' if self.loc=='ITTT' else 'HCEF']
            rate=F(6) if any(set(word)<=set(half) for half in halves) else F(29,5)
            return add(area(word),C(-rate*S),scale(sub(det(word[ii]+pair),det(word[ii+2]+pair)),sg))
        if name.startswith('M_'):
            _,outer,points,part=name.split('_');aa,bb,cc=outer;xx,yy,zz=points
            assert len(set(outer+points))==6 and get(known,outer)==get(known,zz+xx+yy)==1
            assert all(inside(known,outer,pt) for pt in points)
            pairs=[(aa+bb+yy,zz),(bb+cc+yy,xx),(cc+aa+zz,yy),(bb+cc+zz,xx),(cc+aa+xx,yy),(aa+bb+xx,zz)]
            assert all(inside(known,tr,pt) for tr,pt in pairs)
            if part=='con':return add(det(aa+zz+yy),det(bb+xx+zz),det(cc+yy+xx),C(-(J-4)*S))
            assert part in('ear0','ear1','ear2');ear=[aa+bb+zz,bb+cc+xx,cc+aa+yy][int(part[-1])]
            return add(det(outer),scale(det(ear),-1),C(-(J-1)*S))
        if name.startswith('F5_'):
            _,word,mode=name.split('_');assert len(word)==5 and convex(known,word)
            aa,bb,cc,dd,ee=word;xx=det(aa+bb+ee);yy=det(aa+dd+ee);delta=sub(xx,det(aa+bb+dd))
            if mode=='X':product0=yy
            elif mode=='Y':product0=xx
            elif mode=='BX':product0=mul(TRIANGLE_BOUNDS.get(frozenset(aa+bb+ee),C(1)),yy)
            elif mode=='BY':product0=mul(TRIANGLE_BOUNDS.get(frozenset(aa+dd+ee),C(1)),xx)
            elif mode=='Xbox':product0=scale(yy,self.triangle_box_cap(aa+bb+ee))
            else:assert mode=='Ybox';product0=scale(xx,self.triangle_box_cap(aa+dd+ee))
            return add(product0,scale(delta,-11*S))
        if name.startswith('PB_'):
            _,word,target,costword,capword=name.split('_');aa,bb,cc,dd,ee=word
            pairs=[(aa+bb+cc,aa+dd+ee,1),(aa+bb+dd,aa+cc+ee,-1),(aa+bb+ee,aa+cc+dd,1)]
            signs=[co*get(known,tt)*get(known,uu) for tt,uu,co in pairs]
            assert all(signs) and len(set(signs))==2
            isolated=next(ii for ii,ss in enumerate(signs) if signs.count(ss)==1)
            tt,uu,_=pairs[isolated];assert set(target) in (set(tt),set(uu))
            paired=uu if set(target)==set(tt) else tt
            cap=F(capword.replace('d','/'));assert cap>=self.plucker_cap(paired)>0
            source=[tr for ii,pair in enumerate(pairs) if ii!=isolated for tr in pair[:2]]
            costs=[F(cc.replace('d','/')) for cc in costword.split('x')];assert len(costs)==4
            for tr,cost in zip(source,costs):
                count=sum(pt not in tr and inside(known,tr,pt) for pt in LABELS)
                assert cost in TCOST.values() and cost<=TCOST[count]
            return add(scale(det(target),cap*get(known,target)),C(-(costs[0]*costs[1]+costs[2]*costs[3])*S*S))
        if name.startswith('SOS'):
            coefficients=self.squares[name];assert len(coefficients)==N+1 and all(type(cc)==int for cc in coefficients)
            linear=add(C(coefficients[0]),*(scale(sub(VS[i],C(low[i])),coefficients[i+1]) for i in range(N)))
            return mul(linear,linear)
        raise AssertionError(('undefined factor',name))

def shift(poly,low):
    cache={():C(1)}
    def translated(mon):
        if mon not in cache:cache[mon]=mul(translated(mon[:-1]),add(V(mon[-1]),C(low[mon[-1]])))
        return cache[mon]
    return add(*(scale(translated(mon),cc) for mon,cc in poly.items()))
def upper(poly,low,high):
    pp=shift(poly,low);widths=[hi-lo for lo,hi in zip(low,high)]
    return pp.get((),F(0))+sum(cc*prod(widths[i] for i in mon) for mon,cc in pp.items() if mon and cc>0)
def read_source_poly(rows):
    return {tuple(i for i,power in enumerate(ex) for _ in range(power)):F(cc) for ex,cc in rows if F(cc)}
