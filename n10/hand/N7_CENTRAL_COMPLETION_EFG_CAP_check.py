"""Source-complete exact reader for the literal central EFG-cap tables.

Uses Fraction and the established scalar rule reader. Imports no discovery
module, optimizer, numerical coefficient, or saved solver record.
"""
from pathlib import Path
from fractions import Fraction as F
from itertools import combinations, product
from collections import defaultdict
import json,re,sys
import scalar_area_intervals as SAI
HERE=Path(__file__).resolve().parent
S=F(93,1000);T=F(13857,20000)
N=9;COORD='a b c d e f g h z'.split()
def c(a):return {():F(a)} if a else {}
def v(i):return {(i,):F(1)}
def add(*ps):
    out=defaultdict(F)
    for p in ps:
        for m,a in p.items():out[m]+=a
    return {m:a for m,a in out.items() if a}
def sc(p,a):return {m:a*b for m,b in p.items() if a*b}
def mul(*ps):
    out=c(1)
    for p in ps:
        nxt=defaultdict(F)
        for m,a in out.items():
            for n,b in p.items():nxt[tuple(sorted(m+n))]+=a*b
        out={m:a for m,a in nxt.items() if a}
    return out
def sub(p,q):return add(p,sc(q,-1))
a,b,cc,d,e,f,g,h,z=map(v,range(9));one=c(1)
POINT={'A':({},a),'B':(b,{}),'C':(cc,{}),'D':(one,d),'E':(one,e),'F':(f,one),'G':(g,z),'H':({},h)}
def det(t):
    A,B,C=[POINT[q] for q in t]
    return sub(mul(sub(B[0],A[0]),sub(C[1],A[1])),mul(sub(B[1],A[1]),sub(C[0],A[0])))
def key(t):return ''.join(sorted(t))
def parity(t):return (-1)**sum(x>y for i,x in enumerate(t) for y in t[i+1:])
def poly(terms):
    out={tuple(m):F(a) for m,a in terms};assert len(out)==len(terms)
    assert all(tuple(sorted(m))==m and all(type(i)is int and 0<=i<N for i in m) for m in out)
    return {m:a for m,a in out.items() if a}
def value(p,at):
    return sum(a*prod(at[i] for i in m) for m,a in p.items())
def prod(xs):
    out=F(1)
    for x in xs:out*=x
    return out

def setup(name,cell):
    table={'overlap_bf':sub(f,b),'overlap_fc':sub(cc,f),'overlap_eh':sub(h,e),'overlap_ae':sub(e,a),
      'span_BC':add(cc,sc(b,-1),c(-F(117,1000))),
      'span_BC_hi':add(c(F(79,100)),b,sc(cc,-1)),
      'span_AH_hi':add(c(F(697,790)),a,sc(h,-1)),
      'span_DE_hi':add(c(F(697,790)),d,sc(e,-1)),
      'Gsum':add(c(F(790,883)),sc(g,-1),sc(z,-1)),
      'PAIR_BL':add(mul(h,cc),sc(det('ABC'),-1),sc(det('ABH'),-1),c(-2*S)),
      'Central_z':add(mul(cc,sub(h,a),z),sc(add(h,a),-S)),
      'Central_order':sub(mul(a,cc),mul(b,h)) if cell=='CA' else sub(mul(b,h),mul(a,cc))}
    if name.startswith('Central_endpoint_tangent_'):
        n=int(name.rsplit('_',1)[1]);assert n in (1,2);t=F(n,10)
        return add(mul(cc,a,h),sc(mul(cc,a),-2*t),sc(cc,t*t),sc(add(h,a),-S)) if cell=='CA' else add(mul(h,b,cc),sc(mul(h,b),-2*t),sc(h,t*t),sc(add(cc,b),-S))
    assert name in table,name
    return table[name]

class Reader:
    def __init__(self,p):
        self.p=p;self.cell=p['cell'];assert self.cell in ('CA','CB')
        base={t:1 for t in map(''.join,combinations('ABCDEFH',3))}
        base.update({t:1 for t in 'ABG ACG AGH BCG BGH CDG CEG CFG DEG DFG EFG'.split()})
        base.update({t:-1 for t in 'AFG BFG CGH DGH EGH FGH'.split()})
        assert set(p['sign_word'])==set(('ADG','AEG','BDG','BEG'))
        base.update({t:{'+':1,'-':-1}[sn] for t,sn in p['sign_word'].items()});assert len(base)==56
        bits=sum(1<<i for i,t in enumerate(('ADG','AEG','BDG','BEG')) if p['sign_word'][t]=='+');assert bits in(0,4,5,12,13,15) and p['id']==f'{self.cell}_{bits:02d}'
        self.signs=base
        low='139/1000 108/1000 541/1000 120/1000 57/100 108/1000 118/1000 613/1000 139/1000' if self.cell=='CA' else '122/1000 123/1000 541/1000 122/1000 57/100 123/1000 123/1000 613/1000 134/1000'
        high='685/1000 279/1000 883/1000 705/1000 907/1000 279/1000 685/1000 1 '+('773/1000' if self.cell=='CA' else '775/1000')
        self.low=list(map(F,p['box']['low']));self.high=list(map(F,p['box']['high']))
        assert self.low==list(map(F,low.split())) and self.high==list(map(F,high.split()))
        self.bounds={}
        for name,r in p['initial'].items():
            self.initial(name,r);self.bounds[name]=SAI._bound(r)
        for rid,r in p['relations'].items():self.relation(rid,r)
        for u in p['updates']:self.update(u)
        for name,r in p['factors'].items():self.factor(name,r)
    def sg(self,t):return self.signs[key(t)]*parity(t)
    def ar(self,t):return sc(det(key(t)),self.signs[key(t)])
    def convex(self,t):return all(self.sg(''.join(q))>0 for q in combinations(t,3))
    def inside(self,t,x):return x not in t and all(self.sg(t[i]+t[(i+1)%len(t)]+x)>0 for i in range(len(t)))
    def rowpoly(self,row):
        kind=row[0]
        if kind=='fan':return add(self.ar(row[1]),*(sc(self.ar(t),-1) for t in row[2:]))
        if kind=='plu':return sub(mul(self.ar(row[1]),self.ar(row[2])),add(mul(self.ar(row[3]),self.ar(row[4])),mul(self.ar(row[5]),self.ar(row[6]))))
        if kind=='balance':return add(*(sc(mul(self.ar(X),self.ar(Y)),F(co)) for co,X,Y in row[1]))
        if kind=='quad':return add(self.ar(row[1]),self.ar(row[2]),c(-F(row[3])))
        if kind=='linear':return add(*(sc(self.ar(t),F(co)) for t,co in row[1].items()),c(-F(row[2])))
        raise AssertionError(kind)
    def initial(self,name,r):
        t,side,n,w=r['triangle'],r['side'],F(r['value']),r['witness'];assert t in self.signs and n>0
        k=w['kind']
        if k=='occupants':
            orient=w['triangle'];assert key(orient)==t and self.sg(orient)>0
            pts=w['points'];assert pts in ([],['G']) and all(self.inside(orient,q) for q in pts)
            assert side=='lo' and n==(3*S if pts else S)
        elif k=='occupied_upper_ear':assert side=='lo' and t in ('CEF','CEH') and n==T and w['triangle']==t
        elif k=='contrary_EFG_cap':assert side=='lo' and t=='EFG' and n==T
        elif k=='fixed_central_cap':
            assert side=='hi' and w['triangle']==t and t=='ABE' and n==F(167879,245720) and self.inside('ACH','G')
        elif k=='vertices':
            assert side=='hi' and key(w['signed'])==t and self.sg(w['signed'])>0 and w['cell']==self.cell
            pol=self.ar(t);used=sorted({i for x in t for coordinate in POINT[x] for mon in coordinate for i in mon});assert used==w['used']
            values=set()
            for bits in product((0,1),repeat=len(used)):
                at=self.low.copy()
                for i,bit in zip(used,bits):at[i]=self.high[i] if bit else self.low[i]
                values.add(value(pol,at))
            assert sorted(values)==list(map(F,w['values'])) and max(values)==n
        elif k=='cap':
            assert side=='hi';cap=w['cap'];assert self.sg(cap)>0
            caps={'BCD':F(357,1000),'CDE':F(357,1000),'BCE':T,'DEF':T}
            assert key(cap) in caps and n==F(w['value'])==caps[key(cap)]
            assert all(q in cap or self.inside(cap,q) for q in t)
        elif k=='square':assert side=='hi' and n==1
        else:raise AssertionError(k)
    def boundref(self,r,side=None,t=None):
        b=self.bounds[r];assert side is None or b['side']==side;assert t is None or b['triangle']==t;return b['value']
    def relation(self,rid,r):
        row,w=r['row'],r['witness'];kind=w['kind']
        if kind=='fan':
            out,pt=w['outer'],w['point'];assert pt=='G' and self.sg(out)>0 and self.inside(out,pt)
            assert row==['fan',key(out),*[key(out[i]+out[(i+1)%3]+pt) for i in range(3)]]
            assert not self.rowpoly(row)
        elif kind=='plu':assert row[0]=='plu' and not self.rowpoly(row)
        elif kind=='six_label':
            assert row[0]=='balance' and len(row[1])==4 and all(co in(-1,1) for co,X,Y in row[1]) and not self.rowpoly(row)
        elif kind=='quad':
            q=w['poly'];assert len(q)==4 and self.convex(q) and w['occupants']==['G'] and self.inside(q,'G')
            assert row==['quad',key(q[:3]),key(q[0]+q[2:]),'449/1000']
        elif kind in ('quad_support','five_support'):
            q=w['poly'];assert self.convex(q)
            if kind=='quad_support':
                assert len(q)==4 and w['occupants']==['G'] and self.inside(q,'G')
                A,B,C,D=q;n=tuple(sorted((int(self.inside(A+C+D,'G')),int(self.inside(B+C+D,'G')))))
                rate={(0,0):F(29,5),(0,1):F(149,20),(1,1):F(12)}[n]
                assert F(w['rate'])==rate
                assert row==['support',key(A+B+D),key(A+B+C),key(A+C+D),str(rate*S)]
            else:
                assert len(q)==5;A,B,C,D,E=q
                assert row==['support',key(A+B+E),key(A+D+E),key(A+B+D),str(11*S)]
        elif kind=='quad_container':
            q=w['poly'];container=w['container'];assert len(q)==4 and self.convex(q) and container in('HABC','HCEF','ABEF')
            assert all(x in container or self.inside(container,x) for x in q)
            cap=self.high[7]*self.high[2]-self.low[0]*self.low[1] if container=='HABC' else F(1)
            assert F(w['cap'])==cap and row==['linear',{key(q[:3]):'-1',key(q[0]+q[2:]):'-1'},str(-cap)]
        elif kind=='bary_sign':
            out,pt,line=w['outer'],w['point'],w['line'];assert self.sg(out)>0 and pt=='G' and self.inside(out,pt)
            up=w['outer_upper'];N0=self.boundref(up['ref'],'hi',key(out));assert N0==F(up['value'])
            floors=w['fan_lower'];assert len(floors)==3
            ls=[]
            for i,b0 in enumerate(floors):
                ti=key(out[(i+1)%3]+out[(i+2)%3]+pt);assert b0['triangle']==ti
                li=self.boundref(b0['ref'],'lo',ti);assert li==F(b0['value']);ls.append(li)
            R=N0-sum(ls);assert R==F(w['residual']) and R>=0 and w['side'] in('upper','lower')
            coef=defaultdict(F);upper=w['side']=='upper'
            for i,x in enumerate(out):
                if x in line:continue
                word=line+x;sn=self.sg(word);use=(upper and sn>0)or(not upper and sn<0)
                coef[key(word)]+=(sn if upper else -sn)*(ls[i]+(R if use else 0))
            if pt not in line:coef[key(line+pt)]+=(-self.sg(line+pt) if upper else self.sg(line+pt))*N0
            co={t:a for t,a in coef.items() if a};assert row[0]=='linear' and F(row[2])==0 and {t:F(a) for t,a in row[1].items()}==co
        else:raise AssertionError(kind)
    def update(self,u):
        rid=u['relation'];row=self.p['relations'][rid]['row'];out=SAI._bound(u);t,side=out['triangle'],out['side']
        assert u['id'] not in self.bounds and (out['value']*10**6).denominator==1
        if row[0]!='balance':roles,calc=SAI._rule(SAI._relation(row),u['rule'],t,side)
        else:
            assert u['rule']==('balance_lo' if side=='lo' else 'balance_hi')
            hits=[(i,co,X,Y) for i,(co,X,Y) in enumerate(row[1]) if t in(X,Y)];assert len(hits)==1
            j,co,X,Y=hits[0];partner=Y if X==t else X
            rest=[(-F(d0,co),A,B) for i,(d0,A,B) in enumerate(row[1]) if i!=j]
            roles=[]
            for a0,A,B in rest:
                use=side if a0>0 else ('hi' if side=='lo' else 'lo');roles.extend([(A,use),(B,use)])
            roles.append((partner,'hi' if side=='lo' else 'lo'))
            def calc(vals):
                numerator=sum(a0*vals[2*i]*vals[2*i+1] for i,(a0,A,B) in enumerate(rest));q=numerator/vals[-1]
                return max(F(),q) if side=='hi' else q
        bs=[self.bounds[name] for name in u['sources']]
        assert [(b0['triangle'],b0['side']) for b0 in bs]==roles
        vals=[b0['value'] for b0 in bs]
        if row[0] in('plu','support','balance'):assert all(a0>0 for a0 in vals)
        exact=calc(vals)
        assert (out['value']<=exact if side=='lo' else out['value']>=exact),(self.p['id'],u,exact)
        self.bounds[u['id']]=out
    def factor(self,name,r):
        w=r['why'];kind=w['kind'];pol=poly(r['terms'])
        if kind=='area':
            t=w['triangle'];side=w['side'];val=self.boundref(w['reference'],side,t);assert val==F(w['value'])
            expected=add(self.ar(t),c(-val)) if side=='lo' else add(c(val),sc(self.ar(t),-1))
        elif kind in('setup','central_order','central_endpoint_tangent'):
            if kind=='setup':assert w['name']==name
            elif kind=='central_order':assert w['cell']==self.cell and name=='Central_order'
            else:
                assert w['cell']==self.cell and F(w['t'])==F(int(name.rsplit('_',1)[1]),10)
            expected=setup(name,self.cell)
        elif kind=='relation':expected=self.rowpoly(self.p['relations'][w['index']]['row'])
        elif kind=='support_cap':
            _,X,Y,Z,k=self.p['relations'][w['relation']]['row'];k=F(k);paired=X if w['which']=='X' else Y
            assert w['which'] in('X','Y');val=self.boundref(w['reference'],'hi',paired);assert val==F(w['value'])
            expected=add(sc(self.ar(Y if paired==X else X),val),sc(sub(self.ar(X),self.ar(Z)),-k))
        elif kind=='natural_contact_support':
            assert not w['relax'] and w['scheme']['tag']=='SUPPORT' and F(w['scheme']['constant'])==0 and w['paired']=='ACE'
            _,X,Y,Z,k=self.p['relations'][w['relation']]['row'];assert F(w['scheme']['rate'])==F(k)
            paired=w['paired'];target=w['target'];assert (paired,target) in((X,Y),(Y,X))
            assert not sub(sub(e,det('ACE')),mul(sub(e,a),sub(one,cc)))
            expected=add(mul(e,self.ar(target)),sc(sub(self.ar(X),self.ar(Z)),-F(k)));assert poly(w['raw'])==expected
            assert {k:list(map(F,vals)) for k,vals in w['box'].items()}=={'low':self.low,'high':self.high}
        else:raise AssertionError(kind)
        assert pol==expected,(self.p['id'],name,kind)
    def translated(self,p):
        out={}
        for m,a0 in p.items():
            term=c(a0)
            for i in m:term=mul(term,add(c(self.low[i]),sc(v(i),self.high[i]-self.low[i])))
            out=add(out,term)
        return out
    def finish(self):
        p=self.p
        if 'contradiction'in p:
            end=p['contradiction'];lo=self.boundref(end['lower'],'lo',end['triangle']);hi=self.boundref(end['upper'],'hi',end['triangle']);assert lo>hi
            return 0,lo-hi
        total={};used=set()
        for r in p['sum']['factors']:
            assert type(r['weight']) is int and r['weight']>0 and r['atoms']
            term=c(r['weight'])
            for name in r['atoms']:
                if re.fullmatch(r'L\d+',name):
                    j=int(name[1:]);i=j//2;assert 0<=i<N
                    atom=add(c(self.high[i]),sc(v(i),-1)) if j%2 else add(v(i),c(-self.low[i]))
                else:assert name in p['factors'];used.add(name);atom=poly(p['factors'][name]['terms'])
                term=mul(term,atom)
            assert max(map(len,term),default=0)<=3;total=add(total,term)
        assert used==set(p['factors'])
        trans=self.translated(total);literal={tuple(map(int,k.split(','))) if k else ():F(a0) for k,a0 in p['sum']['sum'].items()}
        assert trans==literal
        upper=trans.get((),F())+sum(a0 for m,a0 in trans.items() if m and a0>0)
        assert upper==F(p['sum']['upper'])<0
        return len(p['sum']['factors']),upper

def coverage():
    words=[{t:sn for t,sn in zip(('ADG','AEG','BDG','BEG'),bits)} for bits in product((-1,1),repeat=4)]
    kept=[]
    for w in words:
        bad=(w['ADG']<0<w['AEG'] or w['BDG']<0<w['ADG'] or w['BDG']<0<w['BEG'] or w['BEG']<0<w['AEG'])
        if not bad:kept.append(sum(1<<i for i,t in enumerate(('ADG','AEG','BDG','BEG')) if w[t]>0))
        else:
            # At least one displayed Pluecker identity has all terms of one sign.
            found=False
            common={t:1 for t in map(''.join,combinations('ABCDEFH',3))};common.update({t:1 for t in 'ABG ACG AGH BCG BGH CDG CEG CFG DEG DFG EFG'.split()});common.update({t:-1 for t in 'AFG BFG CGH DGH EGH FGH'.split()});common.update(w)
            sg=lambda t:common[key(t)]*parity(t)
            for pivot,others in [('A','BDEG'),('D','ABCG'),('B','ADEG'),('E','ABCG')]:
                B,C,D,E=others;terms=[sg(pivot+B+C)*sg(pivot+D+E),-sg(pivot+B+D)*sg(pivot+C+E),sg(pivot+B+E)*sg(pivot+C+D)]
                found|=len(set(terms))==1
            assert found
    assert sorted(kept)==[0,4,5,12,13,15]
    # Also expand the four literal signed identities independently.
    for pivot,others in [('A','BDEG'),('D','ABCG'),('B','ADEG'),('E','ABCG')]:
        B,C,D,E=others;assert not add(mul(det(pivot+B+C),det(pivot+D+E)),sc(mul(det(pivot+B+D),det(pivot+C+E)),-1),mul(det(pivot+B+E),det(pivot+C+D)))

def main():
    path=Path(sys.argv[1]) if len(sys.argv)>1 else HERE/'N7_CENTRAL_COMPLETION_EFG_CAP_TABLES.md'
    packets=[json.loads(x) for x in re.findall(r'^```n7-central-efg-packet\n(.*?)^```$',path.read_text(),re.M|re.S)]
    assert len(packets)==12 and len({p['id'] for p in packets})==12;coverage()
    expected={f'{cell}_{bits:02d}' for cell in('CA','CB') for bits in(0,4,5,12,13,15)};assert {p['id'] for p in packets}==expected
    terms=updates=0
    for p in packets:
        r=Reader(p);n,gap=r.finish();terms+=n;updates+=len(p['updates']);print(p['id'],len(p['initial']),'initial',len(p['relations']),'relations',len(p['updates']),'updates',n,'positive terms',gap)
    print('PASS:',len(packets),'complete leaves;',updates,'immutable scalar updates;',terms,'positive polynomial terms; all source geometry, identities, boxes, and sums checked.')
if __name__=='__main__':main()
