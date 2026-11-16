"""Exact manuscript replay for the complete N6 one-lower/all-three-caps count."""
from pathlib import Path
from fractions import Fraction as F
from functools import lru_cache
from itertools import combinations, product
from math import prod
import re
from n6_top_triple_algebra import C,V,VS,add,sub,scale,mul,det,area,TRIANGLE_BOUNDS
from n6_top_triple_geometry import LABELS,canonical,get,put,inside,convex,replay
from multiaffine_box import replay_trace
S=F(93,1000);K=F(149,20);G5=F(1457,250);ALPHA=F(1037,10000)
N=14;VARIABLES='a b c e f h p q u v r w j k'.split()
a,b,c,e,f,h,p,q,u,v,r,w,j,k=VS
U=1-S/(1-ALPHA);V0=1-S/U;L=4*S/(1-ALPHA)

def initial(case):
    assert case in('ear','central');kn={}
    for tr in combinations('ABCEFH',3):put(kn,''.join(tr),1)
    for point,loc in zip('PQRS','BRTL'):
        for x,y in zip('ABCEFH','BCEFHA'):
            put(kn,x+y+point,-1 if(loc,x+y)in[('R','CE'),('T','EF'),('L','FH')]else 1)
        put(kn,'HC'+point,-1 if loc=='B'else 1)
        if loc!='B':put(kn,'HE'+point,-1 if loc=='R'else 1);put(kn,'CF'+point,1 if loc=='L'else -1)
    put(kn,'ACP',-1 if case=='ear'else 1);put(kn,'HBP',1)
    for pt in'QRS':put(kn,'HP'+pt,1);put(kn,'CP'+pt,-1)
    for word,sg in [('EQR',-1),('FRS',-1),('EQS',-1),('FQS',-1),('CQS',1),('HQS',1)]:put(kn,word,sg)
    return kn

def initial_box(case):
    rho=(K if case=='ear'else G5)*S
    lo=[ALPHA,ALPHA,rho,L,L,rho];hi=[U,U,V0,U,U,V0]
    if case=='ear':
        d=S/(1-ALPHA)
        lo +=[d,d,rho+S,d,L+S,L+S,d,rho+S];hi +=[F(1)]*8
    else:
        d=S/(V0-ALPHA);dc=S*(V0+ALPHA)/(V0*(V0-ALPHA))
        pc=min(V0-S/V0,1-S/V0**2-dc)
        lo +=[dc,dc,rho+S/U,d,L+S/(1-L),L+S/(1-L),d,rho+S/U]
        hi +=[pc,pc,F(1),U-S/(1-rho),F(1),F(1),U-S/(1-rho),F(1)]
    return lo,hi

def shifted(poly,low):
    out={}
    for mon,cc in poly.items():
        term=C(cc)
        for i in mon:term=mul(term,add(C(low[i]),V(i)))
        out=add(out,term)
    return out

def upper(poly,low,high):
    pp=shifted(poly,low)
    return pp.get((),F(0))+sum(cc*prod(high[i]-low[i]for i in mon)for mon,cc in pp.items()if mon and cc>0)

def exponents(poly):
    return {tuple(mon.count(i)for i in range(N)):cc for mon,cc in poly.items()}

class Context:
    def __init__(self,case,known,low,high,source_low,source_high,witnesses=None,caps=None):
        self.case=case;self.kn=known;self.low=low;self.high=high;self.slo=source_low;self.shi=source_high
        self.rho=(K if case=='ear'else G5)*S;self.witnesses=witnesses;self.caps=caps;self.used_witnesses={};self.used_caps={}
    def occupants(self,name,hull,count):
        if self.witnesses is None:pts=''.join(pt for pt in LABELS if pt not in hull and inside(self.kn,hull,pt))[:count]
        else:pts=self.witnesses[name]
        assert len(pts)==count and len(set(pts))==count and all(pt not in hull and inside(self.kn,hull,pt)for pt in pts),(name,hull,pts)
        self.used_witnesses[name]=pts;return pts
    def cap(self,word):
        assert get(self.kn,word)==1
        scalar={frozenset('HCE'):V0,frozenset('HCF'):V0,frozenset('CEF'):1-L,frozenset('EFH'):1-L,
            frozenset('ABC'):U,frozenset('ABH'):U,frozenset('ACH'):V0-ALPHA,frozenset('BCH'):V0-ALPHA}
        bound=min(F(1),upper(det(word),self.slo,self.shi),scalar.get(frozenset(word),F(1)))
        if self.caps is not None:assert self.caps[word]==bound,(word,self.caps[word],bound)
        self.used_caps[word]=bound;return C(bound)
    @lru_cache(None)
    def atom(self,name):
        kn=self.kn;rho=self.rho
        if re.fullmatch(r'L\d+',name):
            i=int(name[1:]);assert i<28
            return sub(VS[i//2],C(self.low[i//2]))if i%2==0 else sub(C(self.high[i//2]),VS[i//2])
        basic={'ha':sub(h,a),'ea':sub(e,a),'he':sub(h,e),'fb':sub(f,b),'cf':sub(c,f),
            'Vlow':sub(mul(h,c),C(rho)),'TopCount':sub(mul(sub(C(1),e),sub(C(1),f)),C(S)),
            'Right_support':sub(mul(e,sub(C(1),b)),C(4*S)),
            'Left_support':sub(mul(f,sub(C(1),a)),C(4*S)),
            'low_P':sub(C((1-S)/rho),add(p,q)), 'low_sum_P':sub(C(1-S/V0**2),add(p,q))}
        if name in basic:return basic[name]
        if name in('Order_bh','Central_bh','AH_relative','BC_relative','AnchorCap_ACH_0','AnchorCap_BCH_0'):
            assert self.case=='central'and get(kn,'ACP')==get(kn,'HBP')==1
            if name=='Order_bh':return sub(mul(b,h),mul(a,c))
            if name=='Central_bh':return sub(mul(h,b,sub(c,b)),scale(add(c,b),S))
            tri='ACH'if name in('AH_relative','AnchorCap_ACH_0')else'BCH';self.occupants(name,tri,1)
            if name=='AH_relative':return sub(scale(h,1-3*S/V0**2),a)
            if name=='BC_relative':return sub(scale(c,1-3*S/V0**2),b)
            return sub(sub(h,a)if tri=='ACH'else sub(c,b),C(3*S))
        if name.startswith('T_'):
            word=name[2:5];sg=1 if name[-1]=='+'else-1;assert get(kn,word)==sg
            return sub(scale(det(word),sg),C(S))
        if name.startswith(('up_','up_weighted_')):
            pt=name[-1];assert pt in'QRS';i=6+2*'PQRS'.index(pt);xx,yy=VS[i:i+2]
            return sub(scale(add(xx,yy),V0 if name.startswith('up_weighted_')else 1),C(rho+S))
        if name.startswith(('right_','left_','top_')):
            kind,axis,pt=name.split('_');assert(kind,pt)in[('right','Q'),('top','R'),('left','S')]
            i=6+2*'PQRS'.index(pt);xx,yy=VS[i:i+2]
            vals={'right':{'x':sub(xx,c),'y':sub(e,yy),'px':mul(e,sub(xx,c)),'py':mul(sub(C(1),c),sub(e,yy))},
                'left':{'x':sub(f,xx),'y':sub(yy,h),'px':mul(sub(C(1),h),sub(f,xx)),'py':mul(f,sub(yy,h))},
                'top':{'x':sub(xx,f),'y':sub(yy,e),'px':mul(sub(C(1),e),sub(xx,f)),'py':mul(sub(C(1),f),sub(yy,e))}}
            return sub(vals[kind][axis],C(S))
        if name.startswith(('C_','Q_')):
            kind,word,count=name.split('_');count=int(count);self.occupants(name,word,count)
            if kind=='C':assert count==1;return sub(scale(det(word),get(kn,word)),C(3*S))
            assert count==1 and convex(kn,word);return sub(area(word),C(F(24,5)*S))
        if name.startswith('QS_'):
            _,word,pts,which=name.split('_');assert len(pts)==1 and convex(kn,word)
            assert all(pt not in word and inside(kn,word,pt)for pt in pts)
            aa,bb,cc,dd=word;X=det(aa+bb+cc);Y=det(aa+bb+dd);delta=sub(Y,det(aa+cc+dd))
            n1=sum(inside(kn,aa+cc+dd,pt)for pt in pts);n2=sum(inside(kn,bb+cc+dd,pt)for pt in pts)
            rate={(0,0):F(29,5),(0,1):K,(1,1):F(12)}[tuple(sorted((n1,n2)))]
            boundword=aa+bb+(cc if which.startswith('X')else dd)
            bound=self.cap(boundword)if which.endswith('box')else TRIANGLE_BOUNDS.get(frozenset(boundword),C(1))
            return sub(mul(bound,Y if which.startswith('X')else X),scale(delta,rate*S))
        assert name.startswith('F5_'),name
        _,word,which=name.split('_');assert convex(kn,word),word
        aa,bb,cc,dd,ee=word;X=det(aa+bb+ee);Y=det(aa+dd+ee);delta=sub(X,det(aa+bb+dd))
        assert which in('X','Xbox','Ybox')
        bound=C(1)if which=='X'else self.cap(aa+(bb if which=='Xbox'else dd)+ee)
        return sub(mul(bound,X if which=='Ybox'else Y),scale(delta,11*S))

def block(text,name):
    found=re.findall(r'^```n6-three-caps-'+re.escape(name)+r'\n(.*?)^```$',text,re.M|re.S);assert len(found)==1,name
    lines=found[0].strip().splitlines();return []if lines==['none']else lines

def main():
    text=Path(__file__).with_name('N6_ONE_LOWER_THREE_CAPS.md').read_text();totals=[0,0,0]
    for case,count,steps in [('ear',324,0),('central',418,158)]:
        kn=initial(case);trace=block(text,case+'-geometry')
        for line in trace:
            word,target,sg=line.split();replay(kn,['plu',word,target,int(sg)])
        def box(name):
            rows=[line.split()for line in block(text,case+'-'+name)];assert [row[0]for row in rows]==VARIABLES
            return [F(row[1])for row in rows],[F(row[2])for row in rows]
        slo,shi=box('initial');assert(slo,shi)==initial_box(case)
        low,high=box('box');witnesses={nm:pts for nm,pts in map(str.split,block(text,case+'-occupants'))}
        caps={word:F(val)for word,val in map(str.split,block(text,case+'-caps'))}
        context=Context(case,kn,low,high,slo,shi,witnesses,caps)
        interval=[]
        for line in block(text,case+'-intervals'):
            head,tail=line.split(' ; ');name,target,ol,oh,rl,rh,nl,nh=head.split()
            interval.append({'factor':name,'target':VARIABLES.index(target),'old':[ol,oh],'raw':[rl,rh],'new':[nl,nh],'lines':[pair.split()for pair in tail.split(' | ')]})
        assert len(interval)==steps
        allowed={'ha','ea','he','fb','cf','Vlow','Left_support','Right_support','right_x_Q','right_px_Q','right_py_Q','left_px_S','left_py_S'}
        source=Context(case,kn,slo,shi,slo,shi,witnesses,caps);factors={}
        for row in interval:
            nm=row['factor'];assert nm in allowed or nm.startswith(('T_','C_'))
            factors[nm]=exponents(source.atom(nm));assert source.atom(nm)==context.atom(nm)
        assert replay_trace(factors,slo,shi,interval)==(low,high)
        W={};rows=block(text,case+'-sum');assert len(rows)==count
        for line in rows:
            weight,word=line.split();weight=int(weight);assert weight>0
            pp=C(weight)
            for nm in word.split('*'):pp=mul(pp,context.atom(nm))
            assert max(map(len,pp),default=0)<=3;W=add(W,pp)
        assert set(witnesses)==set(context.used_witnesses)|set(source.used_witnesses)
        assert caps==context.used_caps|source.used_caps
        bound=upper(W,low,high);assert bound==F(block(text,case+'-bound')[0])<0
        print('PASS N6 one-lower/all-three-caps',case,len(trace),'deductions',steps,'intervals',count,'terms; bound',bound)
        totals[0]+=len(trace);totals[1]+=steps;totals[2]+=count
    assert totals==[89,158,742]
    print('PASS complete N6 count (1,0,1,1,1), both reflected lower alternatives; 742 exact positive terms')
if __name__=='__main__':main()
