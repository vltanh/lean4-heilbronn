"""Exactly refute only a threshold-free endpoint-container shortcut.

This configuration is below A*. It is not a counterexample to the target
Heilbronn theorem or to a covering lemma assuming minimum area >= A*.
Every geometric computation below uses integers and fractions.Fraction.
"""

from fractions import Fraction as F
from itertools import combinations
from pathlib import Path
import json

# Integer coordinates, all divided by 1000.
pts=[(0,0),(0,1000),(1000,1000),(77,462),(402,562),(319,923),(1000,103),(915,368),(744,0),(275,194)]
def cross(a,b):return a[0]*b[1]-a[1]*b[0]
def sub(a,b):return(a[0]-b[0],a[1]-b[1])
def dot(a,b):return a[0]*b[0]+a[1]*b[1]

mins=min((abs(cross(sub(pts[b],pts[a]),sub(pts[c],pts[a]))),[a,b,c]) for a,b,c in combinations(range(10),3))
assert F(mins[0], 10**6) == F(2379, 31250) > 0
rows=[];globmin=None
for a,b in combinations(range(10),2):
 for sign in [-1,1]:
  v=sub(pts[b],pts[a]);L=dot(v,v);intervals=[];data=[]
  for i in range(10):
   if i in[a,b]:continue
   q=sub(pts[i],pts[a]);di=sign*cross(v,q)
   if di<=0:continue
   d=F(di,10**6);u=F(dot(v,q),L)
   data.append((i,u,d))
   if d<=1:
    intervals.append((i,(u+d-1)/d,u/d))
  depth=max((sum(l<=t<=r for _,l,r in intervals)for _,t,_ in intervals),default=0)
  assert depth<=4
  row={'base':[a,b],'side':sign,'eligible_points':[i for i,_,_ in intervals],'maximum_depth':depth}
  local=None
  for subset in combinations(data,5):
   bracket=min(u/d for _,u,d in subset)-max((u-1)/d for _,u,d in subset)
   if bracket<=0:continue
   D=max(max(d for _,u,d in subset),1/bracket)
   if local is None or D<local[0]:local=(D,[i for i,_,_ in subset])
   if globmin is None or D<globmin[0]:globmin=(D,[a,b],sign,[i for i,_,_ in subset])
  if local:row.update({'minimum_doubled_container_area':str(local[0]),'subset':local[1]})
  rows.append(row)
assert globmin[0] == F(806, 725) > 1
out={'scope':'Obstruction to a threshold-free covering lemma, not a counterexample at A*.', 'coordinates_numerator':pts,'denominator':1000,'minimum_doubled_triangle_area':str(F(mins[0],10**6)),'minimum_area_triangle':mins[1],'minimum_doubled_container_area':str(globmin[0]),'best_base':globmin[1],'best_side':globmin[2],'best_other_points':globmin[3],'max_depth_all_bases':max(x['maximum_depth']for x in rows),'rows':rows}
print(json.dumps({k:v for k,v in out.items()if k!='rows'},indent=2))
Path(__file__).with_suffix('.json').write_text(json.dumps(out,indent=2)+'\n')
