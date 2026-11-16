"""Exact certificates for all-three-in-the-opposite-cap N configurations.

The sole sharp word is reduced to the simultaneous C/D sharp theorem.
Only fixed rational identities and finite word comparisons are checked here.
"""
from fractions import Fraction as F
from itertools import combinations, combinations_with_replacement, product as tuples
from pathlib import Path
import json
from check_seven_boundary_exterior_certificates import const, add, sub, mul, scale, product, area, cube_upper

VARIABLES='a h b c d f ex ey gx gy ox oy'.split()
S=F(7,64)
a,h,b,c,d,f,ex,ey,gx,gy,ox,oy=[{(i,):F(1)} for i in range(12)]
Z,U=const(0),const(1)
FACTORS=[
 sub(a,const(S)),sub(b,const(S)),sub(h,const(4*S)),sub(c,const(4*S)),
 sub(U,h),sub(U,c),sub(d,a),sub(h,d),sub(f,b),sub(c,f),sub(d,f),
 sub(sub(h,a),const(S)),sub(sub(c,b),const(S)),
 sub(U,ex),sub(U,ey),sub(U,gx),sub(U,gy),sub(U,ox),sub(U,oy),
 sub(sub(ex,f),const(S)),sub(sub(ey,d),const(S)),
 sub(sub(gx,f),const(S)),sub(sub(gy,d),const(S)),
 sub(sub(ox,f),const(S)),sub(sub(oy,d),const(S)),
 sub(ex,gx),sub(gy,ey),sub(const(F(179,627)),d),sub(const(F(13,64)),f),
]
VERTICES=[(Z,a),(b,Z),(c,Z),(U,d),(ex,ey),(gx,gy),(f,U),(Z,h),(ox,oy)]
TRIPLES=list(combinations(range(9),3))
AREAS=[area(*(VERTICES[i] for i in tr)) for tr in TRIPLES]
WORDS=[w for w in tuples(range(1,7),repeat=8)
       if w[3]==2 and w[4]>=2
       and all((j<=w[i])==(8-j>w[(i+j)%8]) for i in range(8) for j in range(1,8))]
SHARP=(4,3,3,2,3,4,5,4)

def inside(w,tr):
 return all(((tr[(i+1)%3]-tr[i])%8)<=w[tr[i]] for i in range(3))

def costs(w):
 out=[]
 for (i,j,k),p in zip(TRIPLES,AREAS):
  sign=1 if k<8 or j-i<=w[i] else -1
  threshold=3*S if k<8 and inside(w,(i,j,k)) else S
  out.append(sub(scale(p,sign),const(threshold)))
 out.append(sub(mul(sub(U,d),sub(U,f)),const(F(7,11))))
 return out

def factors(branch):
 assert branch in ('whole','left','low')
 return FACTORS+([sub(c,ex)] if branch=='left' else [sub(h,gy)] if branch=='low' else [])

def residual(cert):
 w=tuple(cert['word']);fs=factors(cert['branch']);qs=costs(w);out={}
 for term in cert['terms']:
  if term[0]=='f':
   _,ids,weight=term
   assert ids==sorted(ids) and 1<=len(ids)<=3
   assert all(type(i) is int and 0<=i<len(fs) for i in ids)
   p=product(fs[i] for i in ids)
  else:
   assert term[0]=='q'
   _,qi,fi,weight=term
   assert type(qi) is int and 0<=qi<len(qs)
   assert type(fi) is int and -1<=fi<len(fs)
   p=qs[qi] if fi==-1 else mul(qs[qi],fs[fi])
  assert type(weight) is int and weight>0
  out=add(out,scale(p,F(weight,cert['scale'])))
 assert all(len(m)<=3 for m in out)
 return out

def verify():
 data=json.loads(Path(__file__).with_name('six_boundary_opposite_cap_certificates.json').read_text())
 assert data['version']==1 and data['variables']==VARIABLES
 assert data['vertices']==['A','B','C','D','E','G','F','H','O']
 assert len(FACTORS)==29 and len(WORDS)==15 and SHARP in WORDS
 expected={(w,'whole') for w in WORDS if w!=SHARP}|{(SHARP,'left'),(SHARP,'low')}
 seen=set();terms=0;worst=None
 for cert in data['certificates']:
  key=(tuple(cert['word']),cert['branch'])
  assert key in expected and key not in seen and cert['scale']==4096
  seen.add(key);bound=cube_upper(residual(cert))
  assert bound==F(cert['upper_bound']) and bound<=-F(3,4),(key,bound)
  terms+=len(cert['terms']);worst=bound if worst is None else max(worst,bound)
  print('PASS:',key,len(cert['terms']),'positive terms; exact upper bound <= -3/4')
 assert seen==expected
 # All eleven transformed sharp-chamber signs are consequences of the sole word.
 transformed=[(2,3,1),(2,3,4),(2,0,1),(5,6,7),(0,1,7),(0,6,7),
              (2,5,8),(5,1,8),(3,8,6),(0,4,8),(8,4,7)]
 for tr in transformed:
  canonical=sorted(tr);sg=(-1)**sum(tr[i]>tr[j] for i in range(3) for j in range(i+1,3))
  i,j,k=canonical
  assert sg*(1 if k<8 or j-i<=SHARP[i] else -1)==1,tr
 print('PASS:14 complete words and both height obstructions for the sharp word')
 print('PASS:all11 signs in the explicit C/D-moving coordinate map')
 print('Total positive terms:',terms,'; maximum exact residual bound:',worst)

if __name__=='__main__':verify()
