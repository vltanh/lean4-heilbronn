"""Exact reader for the complete literal central E-only tables.

No discovery module, solver, or saved solver packet is imported. Polynomial
arithmetic and the immutable scalar rule reader are shared with the accepted
hand EFG-cap reader. All new geometric sources are reconstructed below.
"""
from pathlib import Path
from fractions import Fraction as F
from itertools import combinations,permutations,product
from collections import defaultdict
import json,re,sys
import N7_CENTRAL_COMPLETION_EFG_CAP_check as C
import scalar_area_intervals as SAI

HERE=Path(__file__).resolve().parent
LABELS='ABCDEFGHOP';FREE='GOP';COORD='a b c d e f g h z x y u v'.split()
S=F(93,1000);T=F(13857,20000);J=F(4427,500)*S
QUADCOST=(F(0),F(449,1000),8*S,F(93,91));COST=(S,3*S,T,J)
C.N=13
C.POINT.update({'O':(C.v(9),C.v(10)),'P':(C.v(11),C.v(12))})
c,v,add,sc,mul,sub,det,key,parity,poly,value=C.c,C.v,C.add,C.sc,C.mul,C.sub,C.det,C.key,C.parity,C.poly,C.value
a,b,cc,d,e,f,g,h,z,x,y,u,ve=map(v,range(13));one=c(1)
COUNTS=defaultdict(int)

def rootbox(cell):
    lo=('139/1000 108/1000 541/1000 120/1000 57/100 108/1000 118/1000 613/1000 139/1000 108/1000 120/1000 108/1000 120/1000'
        if cell=='CA' else '122/1000 123/1000 541/1000 122/1000 57/100 123/1000 123/1000 613/1000 134/1000 7347/69700 122/1000 7347/69700 122/1000')
    hi='685/1000 279/1000 883/1000 705/1000 907/1000 279/1000 685/1000 1 '+('773/1000' if cell=='CA' else '775/1000')+' 883/1000 907/1000 883/1000 907/1000'
    return list(map(F,lo.split())),list(map(F,hi.split()))

def setup(name,cell):
    pp=mul(sub(h,a),sub(cc,b))
    ww=add(sc(mul(h,cc),3),sc(mul(a,cc),-1),sc(mul(b,h),-1),sc(mul(a,b),-1))
    table={'span_AH':add(h,sc(a,-1),c(-S)),'span_DE':add(e,sc(d,-1),c(-S)),
      'span_BC':add(cc,sc(b,-1),c(-F(117,1000))),
      'span_BC_hi':add(c(F(79,100)),b,sc(cc,-1)),
      'span_AH_hi':add(c(F(697,790)),a,sc(h,-1)),
      'span_DE_hi':add(c(F(697,790)),d,sc(e,-1)),
      'overlap_bf':sub(f,b),'overlap_fc':sub(cc,f),'overlap_eh':sub(h,e),'overlap_ae':sub(e,a),
      'EL':add(mul(h,cc),c(-F(2911,500)*S)),
      'ER':add(mul(e,sub(one,b)),c(-4*S)),
      'PAIR_BL':add(mul(h,cc),sc(det('ABC'),-1),sc(det('ABH'),-1),c(-2*S)),
      'PAIR_BR':add(mul(e,sub(one,b)),sc(det('BCD'),-1),sc(det('CDE'),-1),c(-2*S)),
      'Gsum':add(c(F(790,883)),sc(g,-1),sc(z,-1)),
      'Central_g':add(mul(h,sub(cc,b),g),sc(add(cc,b),-S)),
      'Central_z':add(mul(cc,sub(h,a),z),sc(add(h,a),-S)),
      'Central_strip':add(sc(pp,F(883,1000)),sc(ww,-S)),
      'Central_order':sub(mul(a,cc),mul(b,h)) if cell=='CA' else sub(mul(b,h),mul(a,cc))}
    if name.startswith('Central_endpoint_tangent_'):
        n=int(name.rsplit('_',1)[1]);assert 0<=n<=10;t=F(n,10)
        return add(mul(cc,a,h),sc(mul(cc,a),-2*t),sc(cc,t*t),sc(add(h,a),-S)) if cell=='CA' else add(mul(h,b,cc),sc(mul(h,b),-2*t),sc(h,t*t),sc(add(cc,b),-S))
    assert name in table,name
    return table[name]

class Geometry:
    def __init__(self,packet,stage,earlier):
        self.packet=packet;self.earlier=earlier;self.k={}
        for tr in combinations('ABCDEFH',3):self.put(''.join(tr),1)
        for pt,region in (('G','HABC'),('O','HCEF'),('P','HCEF')):
            for hull in ('ABCDEFH',region):
                for i,q in enumerate(hull):self.put(q+hull[(i+1)%len(hull)]+pt,1)
        for tr,sn in (('HOP',-1),('EHP',1),('ACG',1),('BGH',1),('DGO',-1),('COP',-1),('EOP',1),('FOP',-1)):
            self.put(tr,sn)
        for token in packet['given']:self.put(token[:3],1 if token[-1]=='+' else -1)
        for row in stage['trace']:self.step(row)
        assert all(self.k.get(t)==sn for t,sn in stage['known'].items())
    def sg(self,t,omit=None):return 0 if len(set(t))<3 or key(t)==omit else self.k.get(key(t),0)*parity(t)
    def put(self,t,sn):
        sn*=parity(t);t=key(t);assert t not in self.k or self.k[t]==sn,(t,sn,self.k.get(t));self.k[t]=sn
    def inside(self,p,q):return q not in p and all(self.sg(p[i]+p[(i+1)%len(p)]+q)>0 for i in range(len(p)))
    def cap(self,source,poly,row):
        assert self.sg(poly)>0
        typ=source[0]
        if typ=='area':
            sid=row['area_stage'];assert sid is not None and 0<=sid<len(self.earlier)
            b0=self.earlier[sid].bounds[source[2]]
            assert (b0['triangle'],b0['side'],b0['value'])==(source[1],'hi',F(source[3]))
            assert key(poly)==source[1] and self.sg(poly)>0
            return 0 if b0['value']<3*S else 1 if b0['value']<=T else 2 if b0['value']<=J else None
        if typ=='fixed':assert key(poly)==source[1] and source[1] in('HEF','BCE','DEF');return 1
        if typ=='central-ACD':assert poly=='ACD';return 1
        if typ=='central-fixed':assert key(poly)==source[1] and source[1] in('ADG','BDG','CDG');return 1
        table={'CEF2-AEF-cap2':('AEF',2),'CEF2-HEF-empty':('EFH',0),
          'CEF2-AFH-empty':('AFH',0),'CEF2-BFH-empty':('BFH',0),
          'CEF2-ABF-empty':('ABF',0),'CEF2-ABE-cap':('ABE',1),'CEF2-EFG-cap1':('EFG',1)}
        assert typ in table and key(poly)==table[typ][0] and self.sg(poly)>0
        return table[typ][1]
    def step(self,row):
        rule=row['rule'];target=row['target'];sn=row['sign'];typ=rule[0]
        assert sn in(-1,1) and len(target)==3 and key(target)==target
        if typ=='plu':
            I,B,C0,D,E=rule[1]
            terms=[(I+B+C0,I+D+E,1),(I+B+D,I+C0+E,-1),(I+B+E,I+C0+D,1)]
            vals=[co*self.sg(q,target)*self.sg(r,target) for q,r,co in terms]
            assert vals.count(0)==1
            nz=[q for q in vals if q];assert len(set(nz))==1
            q,r,co=terms[vals.index(0)];other=self.sg(r) if key(q)==target else self.sg(q)
            tr=q if key(q)==target else r
            assert key(tr)==target and sn*parity(tr)==-nz[0]*co*other
            # Independently expand every signed five-point identity used.
            assert not add(*(sc(mul(det(q),det(r)),co) for q,r,co in terms))
        elif typ=='cap':
            _,p,occupants,pt,source=rule;n=self.cap(source,p,row)
            assert n is not None and len(occupants)==n and len(set(occupants))==n
            assert all(q in FREE and self.inside(p,q) for q in occupants)
            assert pt in FREE and pt not in p and pt not in occupants
            tests=[p[i]+p[(i+1)%3]+pt for i in range(3)]
            assert sum(key(q)==target for q in tests)==1
            assert all(self.sg(q)>0 for q in tests if key(q)!=target)
            tr=next(q for q in tests if key(q)==target);assert sn*parity(tr)==-1
        elif typ=='ray':
            _,p,pair,rot,source=rule;assert self.cap(source,p,row)==1
            assert rot in(p,p[1:]+p[:1],p[2:]+p[:2])
            I,B,C0=rot;U,V=pair
            assert all(self.sg(q)>0 for q in (B+C0+U,C0+I+U,B+C0+V,C0+I+V))
            q=self.sg(I+U+V);assert q
            pt=V if q<0 else U;tr=I+B+pt;assert key(tr)==target and sn*parity(tr)==-1
        elif typ=='CEF2-AEF2':
            assert target=='AEG' and sn==-1 and self.sg('AGO')>0 and self.sg('AGP')>0
        elif typ=='CEF2-E-only-AE-transfer':
            assert target=='AEO' and sn==1 and self.sg('AEG')<0
        elif typ=='CEF2-E-only-AEP-transfer':assert target=='AEP' and sn==-1
        elif typ=='CEF2-E-only-ABEF-quad-transfer':assert target=='BEP' and sn==-1
        else:raise AssertionError(('unsupported geometry',rule))
        self.put(target,sn);COUNTS['sign_deductions']+=1

class Stage(C.Reader):
    def __init__(self,packet,p,earlier):
        self.packet=packet;self.cell=packet['cell'];self.p={**p,'relations':{int(k):r for k,r in p['relations'].items()}}
        self.low=list(map(F,p['initial_box']['low']));self.high=list(map(F,p['initial_box']['high']))
        expected=rootbox(self.cell) if not earlier else earlier[-1].finalbox
        assert (self.low,self.high)==expected
        Geometry(packet,p,earlier);self.signs=p['known'];self.bounds={}
        for name,r in p['initial'].items():self.initial(name,r);self.bounds[name]=SAI._bound(r)
        for ri,r in self.p['relations'].items():self.relation(ri,r)
        for row in p['updates']:self.update(row);COUNTS['scalar_updates']+=1
        for name,r in p['physical'].items():self.factor(name,r);COUNTS['physical_factors']+=1
        self.finalbox=(self.low.copy(),self.high.copy())
        if 'coordinate'in p:self.coordinate(p['coordinate'])
    def sg(self,t):return self.signs.get(key(t),0)*parity(t)
    def initial(self,name,r):
        t,side,n,w=r['triangle'],r['side'],F(r['value']),r['witness'];assert t in self.signs and n>0
        typ=w['kind']
        if typ=='occupants':
            orient=w['triangle'];pts=w['points'];assert side=='lo' and key(orient)==t and self.sg(orient)>0
            assert len(set(pts))==len(pts)<=3 and all(q in FREE and self.inside(orient,q) for q in pts)
            assert n==COST[len(pts)]
        elif typ=='vertices':
            assert side=='hi' and key(w['signed'])==t and self.sg(w['signed'])>0 and w['cell']==self.cell
            used=sorted({i for q in t for co in C.POINT[q] for mon in co for i in mon});assert used==w['used']
            values=set()
            for bits in product((0,1),repeat=len(used)):
                at=self.low.copy()
                for i,bit in zip(used,bits):at[i]=self.high[i] if bit else self.low[i]
                values.add(value(self.ar(t),at))
            assert sorted(values)==list(map(F,w['values'])) and max(values)==n
            COUNTS['initial_endpoint_values']+=len(values)
        elif typ=='central_ACD_cap':assert t=='ACD' and side=='hi' and n==F(27,40)
        elif typ=='cap':
            cap=w['cap'];assert side=='hi' and self.sg(cap)>0
            caps={'ABC':F(403,1000),'ABH':F(403,1000),'BCD':F(357,1000),'CDE':F(357,1000),
              'BCE':T,'DEF':T,'ADG':F(131,200),'BDG':F(6913,10000),'CDG':F(32697,50000),
              'ABE':F(167879,245720),'ABF':F(279,1000),'EFG':T,
              'AEF':F(203613,250000) if self.cell=='CA' else F(51431,62500)}
            assert key(cap)in caps and n==F(w['value'])==caps[key(cap)]
            assert all(q in cap or self.inside(cap,q) for q in t)
        elif typ=='square':assert side=='hi' and n==1
        else:raise AssertionError(typ)
        COUNTS['initial_bounds']+=1
    def relation(self,rid,r):
        row,w=r['row'],r['witness'];typ=w['kind']
        if typ=='fan':
            out,pt=w['outer'],w['point'];assert pt in FREE and self.sg(out)>0 and self.inside(out,pt)
            assert row==['fan',key(out),*[key(out[i]+out[(i+1)%3]+pt) for i in range(3)]]
            assert not self.rowpoly(row)
        elif typ in('plu','six_label'):
            assert row[0]==('plu' if typ=='plu' else 'balance') and not self.rowpoly(row)
            if typ=='six_label':assert len(row[1])==4 and all(co in(-1,1) for co,X,Y in row[1])
        elif typ=='quad':
            q=w['poly'];pts=w['occupants'];assert len(q)==4 and self.convex(q)
            assert 1<=len(pts)<=3 and len(set(pts))==len(pts) and all(p in FREE and self.inside(q,p) for p in pts)
            assert row==['quad',key(q[:3]),key(q[0]+q[2:]),str(QUADCOST[len(pts)])]
        elif typ in('quad_support','five_support'):
            q=w['poly'];assert self.convex(q)
            if typ=='five_support':
                assert len(q)==5;A,B,C0,D,E=q
                assert row==['support',key(A+B+E),key(A+D+E),key(A+B+D),str(11*S)]
            else:
                assert len(q)==4;A,B,C0,D=q;pts=w['occupants']
                assert len(pts)in(1,2) and len(set(pts))==len(pts) and all(p in FREE and self.inside(q,p) for p in pts)
                counts=tuple(sorted(sum(self.inside(tr,p) for p in pts) for tr in(A+C0+D,B+C0+D)))
                if len(pts)==1:rate={(0,0):F(29,5),(0,1):F(149,20),(1,1):F(12)}[counts]
                else:
                    rate={(0,0):F(1142,125),(0,1):F(1142,125),(0,2):F(139,10),(1,1):F(12),(1,2):F(199,10),(2,2):F(149,5)}[counts]
                    if all(self.inside(A+B+C0,p) and self.inside(A+B+D,p) for p in pts):rate=max(rate,F(299,31))
                assert F(w['rate'])==rate
                assert row==['support',key(A+B+D),key(A+B+C0),key(A+C0+D),str(rate*S)]
        elif typ=='quad_container':
            q,container=w['poly'],w['container'];assert len(q)==4 and self.convex(q) and container in('HABC','HCEF','ABEF')
            assert all(p in container or self.inside(container,p) for p in q)
            cap=self.high[7]*self.high[2]-self.low[0]*self.low[1] if container=='HABC' else F(1)
            assert F(w['cap'])==cap and row==['linear',{key(q[:3]):'-1',key(q[0]+q[2:]):'-1'},str(-cap)]
        elif typ=='spread':
            q=w['poly'];U,V=w['pair'];assert len(q)==4 and self.convex(q) and U!=V
            assert all(p in FREE and self.inside(q,p) for p in(U,V))
            A,B,C0,D=q;assert all(self.sg(diag+U)*self.sg(diag+V)<0 for diag in(A+C0,B+D))
            edge=w['diagonal'];assert edge in(A+C0,B+D)
            container=w['container'];rate=F(6) if container else F(29,5)
            if container:assert container in('HABC','HCEF','ABEF') and all(p in container or self.inside(container,p) for p in q)
            co=defaultdict(F)
            for tr,n in((key(A+B+C0),1),(key(A+C0+D),1),(key(edge+U),-1),(key(edge+V),-1)):co[tr]+=n
            assert F(w['rate'])==rate and row[0]=='linear' and F(row[2])==rate*S and {t:F(a0) for t,a0 in row[1].items()}==dict(co)
        elif typ=='bary_sign':
            out,pt,line=w['outer'],w['point'],w['line'];assert self.sg(out)>0 and pt in FREE and self.inside(out,pt)
            up=w['outer_upper'];N0=self.boundref(up['ref'],'hi',key(out));assert N0==F(up['value'])
            floors=w['fan_lower'];assert len(floors)==3;ls=[]
            for i,b0 in enumerate(floors):
                tr=key(out[(i+1)%3]+out[(i+2)%3]+pt);assert b0['triangle']==tr
                lo=self.boundref(b0['ref'],'lo',tr);assert lo==F(b0['value']);ls.append(lo)
            R=N0-sum(ls);assert R==F(w['residual']) and R>=0 and w['side']in('upper','lower')
            upper=w['side']=='upper';co=defaultdict(F)
            for i,q in enumerate(out):
                if q in line:continue
                tr=line+q;sn=self.sg(tr);use=(upper and sn>0)or(not upper and sn<0)
                co[key(tr)]+=(sn if upper else -sn)*(ls[i]+(R if use else 0))
            if pt not in line:co[key(line+pt)]+=(-self.sg(line+pt) if upper else self.sg(line+pt))*N0
            co={t:n for t,n in co.items() if n}
            assert row[0]=='linear' and F(row[2])==0 and {t:F(n) for t,n in row[1].items()}==co
        else:raise AssertionError(typ)
        COUNTS['relations']+=1
    def factor(self,name,r):
        w=r['why'];typ=w['kind'];p=poly(r['terms'])
        if typ=='area':
            tr,side=w['triangle'],w['side'];n=self.boundref(w['reference'],side,tr);assert n==F(w['value'])
            expected=add(self.ar(tr),c(-n)) if side=='lo' else add(c(n),sc(self.ar(tr),-1))
        elif typ in('setup','central_order','central_endpoint_tangent'):
            expected=setup(r['name'],self.cell)
            if typ=='setup':assert w['name']==r['name']
            else:assert w['cell']==self.cell
            if typ=='central_endpoint_tangent':assert F(w['t'])==F(int(r['name'].rsplit('_',1)[1]),10)
        elif typ=='relation':expected=self.rowpoly(self.p['relations'][w['index']]['row'])
        elif typ=='support_cap':
            _,X,Y,Z,k=self.p['relations'][w['relation']]['row'];paired=X if w['which']=='X' else Y
            assert w['which']in('X','Y');n=self.boundref(w['reference'],'hi',paired);assert n==F(w['value'])
            expected=add(sc(self.ar(Y if paired==X else X),n),sc(sub(self.ar(X),self.ar(Z)),-F(k)))
        elif typ=='natural_contact_support':
            assert not w['relax'] and w['scheme']['tag']=='SUPPORT' and F(w['scheme']['constant'])==0
            caps={'ABC':a,'ACH':sub(h,a),'ACE':e};assert w['paired']in caps
            _,X,Y,Z,k=self.p['relations'][w['relation']]['row'];assert F(w['scheme']['rate'])==F(k)
            assert (w['paired'],w['target'])in((X,Y),(Y,X))
            cap=caps[w['paired']]
            complements={'ABC':mul(a,add(one,b,sc(cc,-1))),
              'ACH':mul(sub(h,a),sub(one,cc)),'ACE':mul(sub(e,a),sub(one,cc))}
            assert sub(cap,det(w['paired']))==complements[w['paired']]
            expected=add(mul(cap,self.ar(w['target'])),sc(sub(self.ar(X),self.ar(Z)),-F(k)))
            assert poly(w['raw'])==expected
            assert {k:list(map(F,vv)) for k,vv in w['box'].items()}=={'low':self.low,'high':self.high}
        else:raise AssertionError(typ)
        assert p==expected,(self.packet['id'],self.p['id'],name,typ)
    def endpoint_lines(self,p,target,low,high):
        assert all(len(set(m))==len(m) for m in p)
        support=sorted({i for m in p for i in m});assert target in support
        others=[i for i in support if i!=target];out=set()
        for bits in product((0,1),repeat=len(others)):
            at=low.copy()
            for i,bit in zip(others,bits):at[i]=high[i] if bit else low[i]
            A=B=F(0)
            for mon,co in p.items():
                n=co
                for i in mon:
                    if i!=target:n*=at[i]
                if target in mon:A+=n
                else:B+=n
            out.add((A,B))
        return out
    def coordinate(self,rec):
        low=self.low.copy();high=self.high.copy()
        def possible(row):
            p=poly(self.p['physical'][str(row['factor'])]['terms'])
            if row['target'] is None:
                assert not any(p.keys());assert F(row['constant'])==p.get((),F())<0
                return []
            i=COORD.index(row['target']);assert list(map(F,row['old']))==[low[i],high[i]]
            lines=self.endpoint_lines(p,i,low,high)
            assert len(lines)==len(row['lines']) and lines==set(tuple(map(F,q)) for q in row['lines'])
            COUNTS['coordinate_endpoint_lines']+=len(lines);ok=[]
            for A,B in lines:
                lo,hi=low[i],high[i]
                if A>0:lo=max(lo,-B/A)
                elif A<0:hi=min(hi,-B/A)
                elif B<0:continue
                if lo<=hi:ok.append((lo,hi))
            return ok
        for row in rec['steps']:
            ok=possible(row);assert ok
            raw=(min(q[0] for q in ok),max(q[1] for q in ok));assert list(raw)==list(map(F,row['raw']))
            i=COORD.index(row['target'])
            down=lambda q:F(q.numerator*10**6//q.denominator,10**6)
            lo=max(low[i],down(raw[0]));hi=min(high[i],-down(-raw[1]))
            assert [lo,hi]==list(map(F,row['new'])) and lo<=hi
            assert (lo,hi)!=(low[i],high[i]);low[i]=lo;high[i]=hi;COUNTS['coordinate_updates']+=1
        assert low==list(map(F,rec['low'])) and high==list(map(F,rec['high']))
        self.finalbox=(low,high)
        if rec.get('contradiction'):assert not possible(rec['contradiction'])

def envelope(stage,X,Y,typ,choice,bounds):
    assert typ in('lower','upper') and choice in(0,1)
    sides={('lower',0):('lo','lo'),('lower',1):('hi','hi'),('upper',0):('hi','lo'),('upper',1):('lo','hi')}[(typ,choice)]
    vals=[]
    for tr,side,r in zip((X,Y),sides,bounds):
        n=stage.boundref(r['ref'],side,tr);assert r['triangle']==tr and r['side']==side and n==F(r['value']);vals.append(n)
    xx,yy=vals;co=defaultdict(F);co[X]+=yy;co[Y]+=xx
    return dict(co),-xx*yy

def linear_terminal(stage,cert):
    factors={}
    for r in cert['factors']:
        o=r['origin'];typ=o['kind'];co=defaultdict(F);constant=F(0)
        if typ in('fan','linear','quad'):
            row=stage.p['relations'][o['relation']]['row']
            if typ=='fan':
                assert row[0]=='fan' and o['direction']in(-1,1)
                co[row[1]]+=o['direction']
                for tr in row[2:]:co[tr]-=o['direction']
            elif typ=='linear':assert row[0]=='linear';co.update({t:F(n) for t,n in row[1].items()});constant=-F(row[2])
            else:
                assert row[0]=='quad';co[row[1]]+=1;co[row[2]]+=1;constant=-F(row[3])
        elif typ=='four_point':
            A,B,C0,D=o['vertices'];direction=o['direction'];assert direction in(-1,1)
            for tr,n in((A+B+C0,1),(A+C0+D,1),(A+B+D,-1),(B+C0+D,-1)):co[key(tr)]+=direction*n*stage.sg(tr)
            assert not add(*(sc(stage.ar(t),n) for t,n in co.items()))
        elif typ=='product_linear_envelope':
            rel=stage.p['relations'][o['relation']]['row'];orientation=o['orientation'];assert orientation in(-1,1)
            if rel[0]=='plu':terms=[(1,rel[1],rel[2]),(-1,rel[3],rel[4]),(-1,rel[5],rel[6])]
            else:assert rel[0]=='balance';terms=rel[1]
            assert len(terms)==len(o['products'])
            for (sn,X,Y),q in zip(terms,o['products']):
                sn*=orientation;assert (q['sign'],q['X'],q['Y'],q['type'])==(sn,X,Y,'upper' if sn>0 else 'lower')
                dc,d0=envelope(stage,X,Y,q['type'],q['choice'],q['bounds'])
                for t,n in dc.items():co[t]+=sn*n
                constant+=sn*d0
        elif typ=='nested_fan_product':
            out,X,Y=o['outer'],o['first'],o['second'];assert stage.sg(out)>0 and stage.inside(out,X) and stage.inside(out[:2]+X,Y)
            A,B,C0=out;negative=stage.sg(C0+X+Y)<0;assert o['line_sign']==(-1 if negative else 1)
            TT,SS=key(A+B+X),key(out)
            face=key(C0+A+X if negative else B+C0+X)
            beta=key(X+A+Y if negative else B+X+Y);gamma=key(A+B+Y);dd=key(C0+X+Y)
            assert (o['T'],o['S'],o['face'],o['beta'],o['gamma'],o['d'])==(TT,SS,face,beta,gamma,dd)
            assert not sub(mul(stage.ar(TT),stage.ar(face)),add(mul(stage.ar(dd),stage.ar(TT)),mul(stage.ar(beta),sub(stage.ar(SS),stage.ar(TT))),mul(stage.ar(gamma),stage.ar(face))))
            ls=[]
            for tr,q in zip((dd,beta,gamma),o['lower']):
                n=stage.boundref(q['ref'],'lo',tr);assert q['triangle']==tr and q['side']=='lo' and n==F(q['value']);ls.append(n)
            en=o['envelope'];assert en['type']=='upper'
            dc,constant=envelope(stage,TT,face,'upper',en['choice'],en['bounds'])
            co.update(dc);d0,b0,g0=ls;co[TT]-=d0-b0;co[SS]-=b0;co[face]-=g0
        else:raise AssertionError(typ)
        co={t:n for t,n in co.items() if n}
        assert co=={t:F(n) for t,n in r['coefficients'].items()} and constant==F(r['constant'])
        assert r['index'] not in factors;factors[r['index']]=(co,constant);COUNTS['linear_factors']+=1
    total=defaultdict(F);constant=F(0);used=set()
    for i,weight in cert['weights']:
        w=int(weight);assert str(w)==weight and w>0 and i in factors;used.add(i)
        co,k=factors[i];constant+=w*k
        for tr,n in co.items():total[tr]+=w*n
        COUNTS['linear_terms']+=1
    total={t:n for t,n in total.items() if n};assert used==set(factors)
    assert constant==F(cert['sum']['constant']) and total=={t:F(n) for t,n in cert['sum']['coefficients'].items()}
    upper=constant
    assert set(total)==set(cert['box'])
    for tr,n in total.items():
        rows=cert['box'][tr]
        vals={}
        for side in('lo','hi'):
            q=rows[side];val=stage.boundref(q['ref'],side,tr);assert q['triangle']==tr and q['side']==side and val==F(q['value']);vals[side]=val
        upper+=n*vals['hi' if n>0 else 'lo']
    assert upper==F(cert['upper'])<0
    return upper

def polynomial_terminal(stage,cert):
    total={};used=set()
    for row in cert['factors']:
        w=row['weight'];assert type(w)is int and w>0;term=c(w)
        for name in row['atoms']:
            if re.fullmatch('L[0-9]+',name):
                j=int(name[1:]);i=j//2;assert 0<=i<13
                atom=add(c(stage.high[i]),sc(v(i),-1)) if j%2 else add(v(i),c(-stage.low[i]))
            else:assert name in stage.p['physical'];used.add(name);atom=poly(stage.p['physical'][name]['terms'])
            term=mul(term,atom)
        assert max(map(len,term),default=0)<=3;total=add(total,term);COUNTS['polynomial_products']+=1
    assert used==set(stage.p['physical']);translated=stage.translated(total)
    literal={tuple(map(int,k.split(','))) if k else ():F(n) for k,n in cert['sum'].items()}
    assert translated==literal
    upper=translated.get((),F())+sum(n for m,n in translated.items() if m and n>0)
    assert upper==F(cert['upper'])<0;return upper

def read_packet(path):
    fence=chr(96)*3
    found=re.findall('^'+fence+'n7-central-e-only-packet\\n(.*?)^'+fence+'$',path.read_text(),re.M|re.S)
    assert len(found)==1;return json.loads(found[0])

def main():
    root=Path(sys.argv[1]) if len(sys.argv)>1 else HERE/'N7_CENTRAL_COMPLETION_E_ONLY_TABLES'
    packets=[read_packet(p) for p in sorted(root.glob('*.md')) if p.name!='INDEX.md']
    expected={cell+'_'+word for cell in('CA','CB') for word in('---','--+','+--','++-')}
    expected|={cell+'_+-+_AEG'+sg for cell in('CA','CB') for sg in('-','+')}
    assert len(packets)==12 and {p['id'] for p in packets}==expected
    for p in packets:
        assert p['cell']in('CA','CB')
        word=''.join(t[-1] for t in p['given'][:3]);assert [t[:3] for t in p['given'][:3]]==['AGO','AGP','DGP']
        assert word in('---','--+','+--','+-+','++-')
        assert p['id']==p['cell']+'_'+word+('_'+p['given'][3] if word=='+-+' else '')
        assert len(p['given'])==(4 if word=='+-+' else 3)
        if word=='+-+':assert p['given'][3]in('AEG-','AEG+')
        stages=[]
        for i,s in enumerate(p['stages']):
            assert s['id']==i;stages.append(Stage(p,s,stages));COUNTS['stages']+=1
        end=p['terminal'];assert end['stage']==len(stages)-1;stage=stages[-1]
        if end['kind']=='scalar':
            q=end['contradiction'];lo=stage.boundref(q['lower'],'lo',q['triangle']);hi=stage.boundref(q['upper'],'hi',q['triangle']);assert lo>hi;bound=lo-hi
        elif end['kind']=='box':
            assert end['contradiction']==stage.p['coordinate']['contradiction'];bound='empty coordinate interval'
        elif end['kind']=='polynomial':bound=polynomial_terminal(stage,end['sum'])
        else:assert end['kind']=='area_linear';bound=linear_terminal(stage,end['sum'])
        COUNTS['leaves']+=1;print(p['id'],len(stages),'stages',end['kind'],bound,flush=True)
    totals=dict(COUNTS);print('PASS:',json.dumps(totals,sort_keys=True))

if __name__=='__main__':main()
