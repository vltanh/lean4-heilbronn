"""Exact checks for the top-triple transpose map and static empty caps."""
from fractions import Fraction as F
from itertools import combinations
import n6_top_triple_geometry as g
S=F(93,1000);K=F(149,20);G=F(1457,250);ALPHA=F(1037,10000)
TABLE={'----':('QRS','---+'),'---+':('QRS','----'),'--+-':('QSR','--+-'),
       '-++-':('SQR','++-+'),'+--+':('RQS','+--+'),'++-+':('RSQ','-++-')}
for loc in ('BTTT','ITTT'):
 for word,(permutation,target) in TABLE.items():
  g.set_locations(loc);old=g.initial('below' if loc=='BTTT' else 'above')
  for tri,sign in zip(('FQR','FQS','FRS','QRS'),word):g.put(old,tri,1 if sign=='+' else -1)
  mapping=dict(A='B',B='A',C='H',E='F',F='E',H='C',P='P',**dict(zip('QRS',permutation)))
  new={}
  for tt in combinations(g.LABELS,3):
   triangle=''.join(tt);sign=-g.get(old,''.join(mapping[ch] for ch in triangle))
   if sign:g.put(new,triangle,sign)
  assert all(g.get(new,'E'+pair)==1 for pair in ('QR','QS','RS'))
  assert ''.join('+' if g.get(new,t)>0 else '-' for t in ('FQR','FQS','FRS','QRS'))==target
  g.set_locations(loc,normalized=True)
  for cap,edge in [('ABC','CA'),('ACE','EA'),('BCE','EB')]:g.replay(old,['empty',cap,'P',edge])
  assert all(g.get(old,t)==1 for t in ('ACP','AEP','BEP'))
  if word!='+--+':
   for cap,edge in [('ABH','BH'),('AFH','AF'),('BFH','BF')]:g.replay(old,['empty',cap,'P',edge])
   assert g.get(old,'HBP')==1 and g.get(old,'AFP')==g.get(old,'BFP')==-1
assert K*S-(1-F(21,125))**2==F(313,500000)>0
assert G*S-(1-F(33,125))**2==F(77,250000)>0
cap=1-K*S/(1-ALPHA)
assert cap==F(4069,17926) and 3*S-cap==F(466177,8963000)>0
assert F(33,125)<3*S
print('PASS: all six transpose rows in both counts, exact ceilings, and all static empty-cap deductions')
