#!/usr/bin/env python3
"""Exact fixed-table arithmetic and signed-area eligibility; no search."""
from fractions import Fraction as F
from collections import defaultdict
from itertools import combinations
import re
S=F(93,1000);K=F(933,125);J=F(4427,500)
LABELS='DEBCPXYZ'
def canon(word):
 ids=[LABELS.index(ch) for ch in word]
 sg=(-1)**sum(ids[i]>ids[j] for i in range(3) for j in range(i+1,3))
 return ''.join(sorted(word,key=LABELS.index)),sg
def put(known,word,sg):
 key,eps=canon(word);value=eps*sg
 assert key not in known or known[key]==value,(word,sg)
 known[key]=value
def get(known,word):
 key,eps=canon(word);return eps*known.get(key,0)
def signs(row):
 number=int(row[1]);ec=-1 if number<=2 else 1;cp=-1 if number%2 else 1
 xi=1 if row[2]=='p' else -1;delta=1 if row[3]=='p' else -1
 known={}
 for tri in combinations('DEPBC',3):put(known,''.join(tri),1)
 for T in 'XYZ':
  for edge,sg in [('DE',1),('DB',1),('DC',-1),('DP',1),('EB',1),('EP',1),('BC',1),('BP',-1)]:put(known,edge+T,sg)
 for word,sg in [('ECX',-1),('ECY',1),('ECZ',ec),('CPX',cp),('CPY',-1),('CPZ',-1)]:put(known,word,sg)
 pair_table={'D':(1,-1,-1),'E':(1,xi if ec<0 else 1,-1 if ec<0 else xi),
             'B':(1,1,1),'C':(-1,-1,1),'P':(1,1,delta)}
 for vertex,vals in pair_table.items():
  for pair,sg in zip(['XY','XZ','YZ'],vals):put(known,vertex+pair,sg)
 put(known,'XYZ',1);assert len(known)==56
 return known

def inside(known,hull,point):
 sg=get(known,hull[:3]);return bool(sg) and all(get(known,a+b+point)==sg for a,b in zip(hull,hull[1:]+hull[:1]))
def convex(known,hull):return all(get(known,''.join(hull[i] for i in ids))==1 for ids in combinations(range(len(hull)),3))
def const(c):return {():F(c)} if c else {}
def var(i):return {(i,):F(1)}
def add(*args):
 ans=defaultdict(F)
 for poly in args:
  for e,c in poly.items():ans[e]+=c
 return {e:c for e,c in ans.items() if c}
def scale(poly,k):return {e:c*k for e,c in poly.items() if c*k}
def sub(a,b):return add(a,scale(b,-1))
def mul(a,b):
 ans=defaultdict(F)
 for e,c in a.items():
  for f,d in b.items():ans[tuple(sorted(e+f))]+=c*d
 return {e:c for e,c in ans.items() if c}
def det(a,b,c):return sub(mul(sub(b[0],a[0]),sub(c[1],a[1])),mul(sub(b[1],a[1]),sub(c[0],a[0])))
def box(row):
 if int(row[1])<=2:
  return [(F(372,1000),F(1,2)),(2*K*S-1,F(753,1000)),(F(152,1000),F(377,1000)),(F(0),F(138,1000)),(F(382,1000),F(768,1000)),(F(372,1000),F(721,1000)),(F(313,1000),F(675,1000)),(F(73,100),1-S),(F(196,1000),F(582,1000)),(F(372,1000),F(721,1000))]
 return [(F(438,1000),F(1,2)),(F(247,1000),1-K*S),(F(123,1000),F(196,1000)),(F(0),F(45,1000)),(F(401,1000),F(768,1000)),(F(372,1000),F(721,1000)),(F(319,1000),F(675,1000)),(F(73,100),1-S),(F(215,1000),F(582,1000)),(F(372,1000),F(721,1000))]

def factors(row):
 known=signs(row);bounds=box(row);vv=[var(i) for i in range(10)]
 b,lam,p,y,x,v,u,t,z,w=vv
 pts={'D':({},const(1)),'E':({},lam),'B':(b,{}),'C':(const(1),const(1)),
      'P':(p,y),'X':(x,v),'Y':(u,t),'Z':(z,w)}
 def area(word):return det(*(pts[ch] for ch in word))
 cache={}
 for i,(lo,hi) in enumerate(bounds):cache['L'+str(2*i)]=sub(vv[i],const(lo));cache['L'+str(2*i+1)]=sub(const(hi),vv[i])
 cache['L20']=add(t,scale(v,-1),const(-2*S));cache['L21']=add(t,scale(w,-1),const(-2*S))
 def factor(nm):
  if nm in cache:return cache[nm]
  if nm[0] in '+-':
   match=re.fullmatch(r'([+-])([A-Z]{3})(?:o(.+))?',nm);assert match,nm
   sg=1 if match[1]=='+' else -1;word=match[2];cost=F(match[3]) if match[3] else F(1)
   assert get(known,word)==sg,(row,nm)
   if cost>1:
    required=1 if cost==3 else 2 if cost==K else 3 if cost==J else None
    assert required is not None,nm
    ins=[a for a in LABELS if a not in word and inside(known,word,a)]
    assert len(ins)>=required,(row,nm,ins)
   out=add(scale(area(word),sg),const(-cost*S))
  elif nm.startswith('quad_'):
   _,hull,points=nm.split('_');assert convex(known,hull),(row,nm)
   assert all(pt not in hull and inside(known,hull,pt) for pt in points),(row,nm)
   cost=F(449,1000) if len(points)==1 else 8*S if len(points)==2 else F(93,91)
   out=add(area(hull[:3]),area(hull[0]+hull[2:]),const(-cost))
  elif nm=='ear_DBC_DBZ':out=add(area('DBC'),scale(area('DBZ'),-1),const(-F(3927,500)*S))
  elif nm=='connect_DBC_XYZ':out=add(area('DZY'),area('BXZ'),area('CYX'),const(-F(2427,500)*S))
  elif nm=='center_ZXY':out=add(const(F(8,5)*S),scale(area('ZXY'),-1))
  else:raise AssertionError(('unknown factor',nm))
  cache[nm]=out;return out
 return bounds,factor

TABLES={
'R1mp': [
    (45, 'L2*L15'),
    (51, 'L4*L15'),
    (33, 'L6*L9'),
    (30, 'L6*L11'),
    (45, 'L6*L21'),
    (1, 'L0*L1*L6'),
    (2, 'L0*L4*L15'),
    (31, 'L0*L11*L16'),
    (2, 'L0*L11*L20'),
    (2, 'L0*L16*L20'),
    (1, 'L1*L1*L18'),
    (1, 'L1*L4*L18'),
    (7, 'L1*L5*L19'),
    (71, 'L1*L6*L10'),
    (79, 'L1*L18*L19'),
    (138, 'L2*L9*L20'),
    (179, 'L2*L11*L16'),
    (8, 'L4*L5*L11'),
    (2, 'L4*L5*L15'),
    (8, 'L4*L6*L9'),
    (2, 'L4*L6*L13'),
    (22, 'L4*L9*L11'),
    (18, 'L4*L9*L20'),
    (88, 'L4*L10*L15'),
    (2, 'L4*L15*L16'),
    (49, 'L5*L19*L19'),
    (40, 'L6*L8*L9'),
    (229, 'L8*L11*L15'),
    (60, 'L9*L15*L18'),
    (229, 'L11*L11*L13'),
    (29, 'L11*L12*L18'),
    (30, 'L11*L13*L19'),
    (65, 'L13*L18*L18'),
    (65, 'L15*L17*L18'),
    (7, '-DCP*L9*L15'),
    (172, '-EBP*L11'),
    (3, '-EBP*L16'),
    (159, '-EBP*L19'),
    (2, '-BPX*L20'),
    (35, '+BCX*L6'),
    (21, '+DEZ*L12'),
    (24, '+DEZ*L16'),
    (23, '+DEZ*L21'),
    (20, '+EPZ*L15'),
    (35, '-BPZ'),
    (21, '-BPZ*L2'),
    (2, '-BPZ*L4'),
    (9, '-BPZ*L8'),
    (68, '-BPZ*L10'),
    (2, '-BPZ*L13'),
    (65, '-BPZ*L19'),
    (49, '-BPZ*L21'),
    (24, '+BCZ*L15'),
    (50, '+DBZ'),
    (1, '+DBZ*L1'),
    (139, '+DBZ*L2'),
    (8, '+DBZ*L4'),
    (233, '+DBZ*L7'),
    (24, '+DBZ*L8'),
    (142, '+DBZ*L11'),
    (35, '+DBZ*L18'),
    (7, '+DBZ*L20'),
    (45, '-CXY*L6'),
    (80, '+BXY*L18'),
    (24, '+CYZ*L6'),
    (229, '+DXY*L11'),
    (18, '+DXY*L16'),
    (41, '+BYZ*L6'),
    (84, '-CXZ'),
    (23, '-CXZ*L2'),
    (37, '-CXZ*L7'),
    (142, '-CXZ*L8'),
    (156, '-CXZ*L10'),
    (16, '-CXZ*L15'),
    (24, '-CXZ*L16'),
    (23, '-CXZ*L19'),
    (72, '+ECY'),
    (199, '+ECY*L7'),
    (46, '+ECY*L8'),
    (8, '+ECY*L10'),
    (38, '+ECY*L16'),
    (128, '+ECY*L18'),
    (4, '-CPZ*L15'),
    (19, '-CPX'),
    (172, '-CPX*L2'),
    (8, '-CPX*L4'),
    (40, '-CPX*L8'),
    (2, '-CPX*L10'),
    (27, '-CPX*L17'),
    (159, '-CPX*L19'),
    (50, '-CPX*L21'),
    (178, '-EXZ'),
    (33, '-EXZ*L0'),
    (27, '-EXZ*L5'),
    (172, '-EXZ*L7'),
    (142, '-EXZ*L9'),
    (18, '-EXZ*L12'),
    (24, '-EXZ*L17'),
    (23, '-EXZ*L18'),
    (156, '-EXZ*L20'),
    (21, '+PYZ'),
    (2, '+PYZ*L0'),
    (199, '+PYZ*L3'),
    (2, '+PYZ*L5'),
    (18, '+PYZ*L8'),
    (140, '+PYZ*L10'),
    (65, '+PYZ*L18'),
    (158, '+DECo3*L0*L11'),
    (33, '+DECo3*L1*L9'),
    (14, '+DECo3*L1*L10'),
    (30, '+DECo3*L1*L16'),
    (27, '+DECo3*L5*L8'),
    (23, '+DECo3*L5*L17'),
    (159, '+DECo3*L5*L19'),
    (179, '+DECo3*L5*L21'),
    (142, '+DECo3*L8*L9'),
    (63, '+DECo3*L8*L12'),
    (118, '+DECo3*L8*L16'),
    (18, '+DECo3*L8*L20'),
    (8, '+DECo3*L10*L12'),
    (71, '+DECo3*L12*L19'),
    (93, 'quad_DEZC_Y*L6'),
    (1, 'quad_BCZP_X*L1'),
],
'R1pp': [
    (3, 'L1*L2'),
    (1, 'L1*L10'),
    (1, 'L6*L9'),
    (1, 'L1*L2*L10'),
    (3, 'L1*L10*L18'),
    (3, 'L2*L2*L17'),
    (4, '-EBP'),
    (3, '-BPX'),
    (1, '+BCX*L3'),
    (7, '+DEZ*L9'),
    (4, '+DEZ*L10'),
    (3, '+DBZ*L10'),
    (10, '-DXZ'),
    (7, '-DXZ*L2'),
    (1, '-ECZ'),
    (2, '-ECZ*L3'),
    (11, '-ECZ*L8'),
    (2, '-ECZ*L10'),
    (6, '-ECZ*L17'),
    (6, '-CPX'),
    (2, '-CPX*L3'),
    (21, '+EXZ'),
    (1, '+EXZ*L2'),
    (2, '+DECo3*L5*L11'),
    (1, '-ECPo933/125*L2'),
    (9, '-ECPo933/125*L8'),
    (5, '-ECXo3*L17'),
    (9, 'quad_DEXC_YZ*L5'),
    (6, 'quad_DEZC_Y*L16'),
],
'R2mm': [
    (10, 'L2*L9'),
    (8, 'L4*L20'),
    (4, 'L2*L4*L19'),
    (1, 'L6*L6*L13'),
    (7, 'L6*L7*L12'),
    (2, 'L7*L12*L16'),
    (29, '+DEP'),
    (1, '+DEC*L1'),
    (6, '-DCP*L1'),
    (4, '-DCP*L1*L3'),
    (5, '-DCP*L1*L19'),
    (2, '-DCP*L2*L9'),
    (17, '+BCP*L15'),
    (12, '+BCX'),
    (18, '+BCX*L7'),
    (6, '-DCX*L1*L7'),
    (12, '-BPZ*L15'),
    (7, '-DCZ*L1*L3'),
    (2, '-DCZ*L1*L13'),
    (10, '+DBZ'),
    (7, '+DBZ*L2'),
    (1, '+DBZ*L7'),
    (2, '+DBZ*L12'),
    (1, '+DBZ*L15'),
    (2, '+BXY*L6'),
    (1, '+CYZ*L4'),
    (6, '+DXY*L7'),
    (26, '+BYZ'),
    (15, '+BYZ*L7'),
    (14, '-CPZ*L11'),
    (2, '-CPZ*L12'),
    (1, '-CPZ*L20'),
    (9, '+CPX'),
    (2, '+CPX*L19'),
    (11, '-EXZ'),
    (2, '-EXZ*L7'),
    (30, '-PYZ'),
    (13, '+PXZ'),
    (4, 'center_ZXY*L7'),
    (2, '+DBYo3*L7'),
    (11, '-BPYo3*L7'),
    (11, '-BPYo3*L18'),
    (20, 'quad_BCYP_XZ*L6'),
    (4, 'quad_BCZP_X*L3'),
    (13, 'quad_BCZP_X*L10'),
],
'R2mp': [
    (3, 'L1*L18'),
    (2, 'L2*L13'),
    (10, 'L4*L11'),
    (10, 'L7*L9'),
    (3, 'L10*L15'),
    (7, 'L1*L2*L11'),
    (1, 'L2*L2*L11'),
    (1, 'L2*L2*L13'),
    (3, '+DEP'),
    (4, '+DEP*L2'),
    (15, '+DEP*L18'),
    (8, '-EBP*L19'),
    (8, '+BCX'),
    (8, '+BCX*L2'),
    (7, '+BCX*L7'),
    (3, '-DCX*L1'),
    (3, '-DCX*L2*L13'),
    (3, '-DCZ*L1*L3'),
    (3, '+DBZ'),
    (12, '+DBZ*L2'),
    (11, '+DBZ*L7'),
    (1, '+CYZ*L7'),
    (4, '+ECY'),
    (12, '+ECY*L5'),
    (12, '+ECY*L8'),
    (3, '+ECY*L10'),
    (1, '+ECY*L18'),
    (12, '+CPX'),
    (12, '+CPX*L12'),
    (12, '-EXZ'),
    (12, '+PYZ'),
    (1, '+PYZ*L3'),
    (1, '-EYZ*L7'),
    (1, '+DECo3*L1*L10'),
    (1, '+DECo3*L3*L10'),
    (1, '+DECo3*L3*L12'),
    (6, '+DECo3*L10*L12'),
    (12, 'center_ZXY'),
    (12, '+EPXo3*L13'),
    (7, '+BCPo3*L10'),
],
'R2pm': [
    (3, 'L2*L17'),
    (15, 'L4*L21'),
    (12, 'L7*L12'),
    (4, 'L15*L16'),
    (3, 'L2*L12*L17'),
    (3, '+DEP'),
    (8, '+DEC*L1*L11'),
    (1, '-DCP*L1'),
    (4, '-DCP*L1*L21'),
    (1, '+BCX'),
    (8, '+BCX*L3'),
    (11, '+BCX*L18'),
    (2, '-BPZ*L15'),
    (9, '-DCZ*L1*L7'),
    (2, '-DCZ*L1*L13'),
    (9, '+DBZ*L6'),
    (1, '+DBZ*L10'),
    (2, '+DBZ*L12'),
    (3, '-DYZ*L7'),
    (7, '-DXZ'),
    (4, '-DXZ*L2'),
    (1, '+CYZ*L6'),
    (13, '+BYZ'),
    (5, '+BYZ*L7'),
    (5, '-CPZ*L2'),
    (5, '-ECZ*L6'),
    (7, '-ECZ*L10'),
    (3, '-ECZ*L13'),
    (17, '+EXZ'),
    (17, '-PYZ'),
    (4, 'ear_DBC_DBZ*L2'),
    (2, '-BPYo3*L18'),
    (3, 'quad_DZXC_Y*L2'),
    (1, 'quad_BCYP_XZ*L6'),
],
'R2pp': [
    (4, 'L1*L16'),
    (6, 'L1*L18'),
    (8, 'L2*L2*L17'),
    (10, 'L2*L9*L17'),
    (29, '+DEC*L1*L11'),
    (3, '+BCX'),
    (25, '+BCX*L3'),
    (6, '+BCX*L16'),
    (10, '+BCX*L18'),
    (8, '+DBZ*L3'),
    (10, '+DBZ*L10'),
    (4, '+BXZ*L2'),
    (19, '-DXZ'),
    (3, '-DXZ*L0'),
    (15, '-DXZ*L2'),
    (3, '-CXZ*L1'),
    (9, '-ECZ'),
    (8, '-ECZ*L3'),
    (10, '-ECZ*L8'),
    (10, '-ECZ*L10'),
    (40, '+EXZ'),
    (1, '+BCZo3*L2'),
],
'R3mp': [
    (8, 'L3*L12'),
    (10, 'L5*L19'),
    (1, 'L5*L21'),
    (2, 'L6*L17'),
    (5, '-EBP'),
    (2, '+DBZ'),
    (9, '+DBZ*L7'),
    (2, '+ECZ'),
    (4, '+ECZ*L12'),
    (15, '-EYZ'),
    (11, '+PYZ'),
    (4, '+ECYo3*L17'),
    (5, 'quad_DPBY_Z*L3'),
    (2, 'quad_EPCY_XZ'),
    (2, 'quad_EPCY_XZ*L2'),
],
'R3pp': [
    (9, 'L0*L3'),
    (3, 'L0*L19'),
    (7, 'L0*L20'),
    (14, 'L0*L21'),
    (17, 'L3*L13'),
    (17, 'L3*L16'),
    (7, 'L5*L11'),
    (14, 'L6*L9'),
    (6, 'L8*L15'),
    (6, 'L15*L17'),
    (1, 'L6*L9*L10'),
    (5, '+DEC*L0*L19'),
    (21, '-EBP'),
    (5, '-DCX*L5*L11'),
    (8, '+DBZ'),
    (48, '+DBZ*L14'),
    (2, '+DBZ*L20'),
    (5, '-DXZ*L2'),
    (2, '-DXZ*L4'),
    (6, '-DXZ*L12'),
    (18, '+BXY*L18'),
    (27, '+CYZ'),
    (2, '+CYZ*L3'),
    (2, '+DXY*L19'),
    (6, '-CXZ*L13'),
    (11, '-ECX'),
    (1, '-ECX*L10'),
    (15, '-CPX'),
    (1, '-CPX*L10'),
    (29, '+EYZ'),
    (8, '+EYZ*L2'),
    (5, 'connect_DBC_XYZ*L2'),
    (32, '+DBYo3*L19'),
    (5, '+BCYo3*L3'),
    (5, 'quad_DBXY_Z*L2'),
    (16, 'quad_DBXY_Z*L19'),
    (2, 'quad_DZXC_Y*L5'),
],
'R4mm': [
    (5, 'L1*L21'),
    (5, 'L2*L17'),
    (18, 'L4*L21'),
    (18, 'L7*L12'),
    (2, 'L15*L16'),
    (4, '-EBP'),
    (8, '-DCZ*L1'),
    (2, '+DBZ'),
    (16, '+BYZ'),
    (5, '+ECZ'),
    (18, '-PYZ'),
],
'R4mp': [
    (3, 'L2*L13'),
    (7, 'L5*L19'),
    (3, 'L5*L21'),
    (1, 'L6*L17'),
    (3, '-EBP'),
    (2, '+DBZ'),
    (12, '+DBZ*L7'),
    (3, '+ECZ'),
    (6, '+ECZ*L12'),
    (19, '-EYZ'),
    (13, '+PYZ'),
    (6, '+ECYo3*L17'),
    (3, '+BCPo3*L19'),
],
'R4pp': [
    (3, 'L0*L19'),
    (11, 'L1*L2'),
    (34, 'L3*L16'),
    (7, 'L4*L11'),
    (32, 'L12*L15'),
    (47, 'L15*L17'),
    (1, 'L16*L21'),
    (1, 'L0*L13*L21'),
    (2, 'L10*L13*L16'),
    (71, 'L12*L12*L19'),
    (29, 'L13*L13*L18'),
    (3, '+DEC*L0*L19'),
    (10, '-EBP'),
    (9, '+BCX'),
    (2, '+BCX*L13'),
    (1, '+BCX*L16'),
    (13, '+DBZ'),
    (3, '+DBZ*L1'),
    (3, '+DBZ*L3'),
    (10, '+DBZ*L13'),
    (14, '+DBZ*L14'),
    (3, '+DBZ*L20'),
    (2, '-DYZ*L19'),
    (4, '-DXZ'),
    (6, '-DXZ*L0'),
    (2, '+BXY*L13'),
    (3, '+BXY*L18'),
    (33, '+CYZ'),
    (9, '+CYZ*L0'),
    (2, '+CYZ*L3'),
    (2, '+CYZ*L8'),
    (40, '+CYZ*L12'),
    (3, '+DXY*L19'),
    (5, '-CXZ*L1'),
    (2, '+ECZ*L15'),
    (7, '+CPX'),
    (36, '+EYZ'),
    (2, '+EYZ*L19'),
    (2, 'center_ZXY'),
    (2, 'center_ZXY*L13'),
    (10, '+DBYo3*L19'),
],
}
BOUNDS={
'R1mp': F('-26774992501/31250000000'),
'R1pp': F('-801491869419/1562500000000'),
'R2mm': F('-38527458167/125000000000'),
'R2mp': F('-586428795483/1562500000000'),
'R2pm': F('-29829420009/62500000000'),
'R2pp': F('-4342668494471/7812500000000'),
'R3mp': F('-6275519433853/7812500000000'),
'R3pp': F('-8728343015229/15625000000000'),
'R4mm': F('-1729183/1953125'),
'R4mp': F('-5384705823/6250000000'),
'R4pp': F('-42303900513/125000000000'),
}

def check(row):
 bounds,factor=factors(row);total={}
 for weight,word in TABLES[row]:
  assert isinstance(weight,int) and weight>0
  poly=const(weight)
  for atom in word.split('*'):poly=mul(poly,factor(atom))
  assert max(map(len,poly),default=0)<=3
  total=add(total,poly)
 shifted={}
 for ex,co in total.items():
  poly=const(co)
  for i in ex:poly=mul(poly,add(var(i),const(bounds[i][0])))
  shifted=add(shifted,poly)
 upper=shifted.get((),F(0));width=[hi-lo for lo,hi in bounds]
 for ex,co in shifted.items():
  if ex and co>0:
   for i in ex:co*=width[i]
   upper+=co
 assert upper==BOUNDS[row] and upper<0,(row,upper,BOUNDS[row])
 return upper

# All sixteen binary leaves, including the five non-polynomial exclusions.
covered=set(TABLES)
for number in range(1,5):
 for xi in 'mp':
  for delta in 'mp':
   row='R'+str(number)+xi+delta;known=signs(row)
   if number%2 and delta=='m':
    assert all(inside(known,'DPC',pt) for pt in 'XYZ')
    assert all(inside(known,'PCY',pt) for pt in 'XZ')
    covered.add(row)
   elif number==4 and xi=='p' and delta=='m':
    words=[('YDE','YPZ',1),('YDP','YEZ',-1),('YDZ','YEP',1)]
    assert all(coeff*get(known,a)*get(known,b)==1 for a,b,coeff in words)
    covered.add(row)
assert len(covered)==16
assert sum(map(len,TABLES.values()))==410
for row in TABLES:print(row,len(TABLES[row]),check(row))
assert F(247,1000)*F(753,1000)<2*S
assert F(431,1000)**2<2*S
assert S/F(753,1000)>F(123,1000)
assert F(1,2)-S/F(753,1000)<F(377,1000)
assert S/(2-2*K*S)>F(152,1000)
Lm=1-K*S
assert S/(Lm*(1-Lm))>F(438,1000)
assert F(1,2)-S/Lm<F(196,1000)
assert Lm*(1-2*F(123,1000))-2*S<F(45,1000)
assert 3+2*F(707,500)>F(29,5)
assert 2*(1+F(707,500))*S>F(449,1000)
print('PASS: 16 exhaustive leaves, 410 fixed terms, all signs and occupancy factors.')
