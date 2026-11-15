#!/usr/bin/env python3
"""Second exact implementation of the complete Type-I cover.
Requires NumPy and Numba. The primary checker needs neither.
Every invocation reconstructs its compatibility data from scratch.
The mathematical kernels are the same as in the separately run discovery journals.
"""
from pathlib import Path
from itertools import combinations
import argparse,json,time
import numpy as np
from numba import njit
M=20;N=400;W=7
@njit
def det(a,b,c):return (b[0]-a[0])*(c[1]-a[1])-(b[1]-a[1])*(c[0]-a[0])
@njit
def maxdet(A,B,C):
 ans=0
 for a in A:
  for b in B:
   for c in C:ans=max(ans,abs(det(a,b,c)))
 return ans
@njit
def precompute():
 C=np.array([[[i,j],[i+1,j],[i,j+1],[i+1,j+1]] for i in range(20) for j in range(20)])
 A=np.zeros((80,4,2),np.int64)
 for k in range(20):
  A[k]=np.array([[0,k],[0,k],[0,k+1],[0,k+1]])
  A[k+20]=np.array([[k,0],[k+1,0],[k,0],[k+1,0]])
  A[k+40]=np.array([[20,k],[20,k],[20,k+1],[20,k+1]])
  A[k+60]=np.array([[k,20],[k+1,20],[k,20],[k+1,20]])
 H=np.zeros((80,80,80),np.bool_)
 V=np.zeros((80,80,W),np.uint64)
 G=np.zeros((80,N,W),np.uint64)
 for a in range(80):
  for b in range(a):
   for c in range(b):
    ok=maxdet(A[a],A[b],A[c])>=44
    H[a,b,c]=H[a,c,b]=H[b,a,c]=H[b,c,a]=H[c,a,b]=H[c,b,a]=ok
   for c in range(N):
    if maxdet(A[a],A[b],C[c])>=44:
     V[a,b,c//64]|=np.uint64(1)<<np.uint64(c%64)
   V[b,a]=V[a,b]
  for b in range(N):
   for c in range(b):
    if maxdet(A[a],C[b],C[c])>=44:
     G[a,b,c//64]|=np.uint64(1)<<np.uint64(c%64)
     G[a,c,b//64]|=np.uint64(1)<<np.uint64(b%64)
 return C,A,H,V,G
@njit
def count_patterns(H,V):
 cnt=0;early=0;maxn=0;sn=0
 rr=np.zeros((800000,5),np.int64)
 for j in range(20):
  for m in range(j+1,20):
   for i in range(20):
    a=20+i
    if not H[j,m,a]:continue
    for l in range(i,20):
     b=60+l
     if not H[j,m,b] or not H[j,a,b] or not H[m,a,b]:continue
     for k in range(20):
      c=40+k
      aa=np.array([j,a,c,b,m])
      ok=True
      for u in range(5):
       for v in range(u):
        for w in range(v):
         if not H[aa[u],aa[v],aa[w]]:ok=False
      if not ok:continue
      early+=1
      bits=V[j,m].copy()
      for u in range(5):
       for v in range(u):bits &= V[aa[u],aa[v]]
      n=0
      for w in bits:
       for z in range(64):
        if (w>>np.uint64(z))&np.uint64(1):n+=1
      if n<4:continue
      rr[cnt]=aa;cnt+=1;sn+=n;maxn=max(maxn,n)
 return rr[:cnt],early,sn,maxn
TR=np.array(list(combinations(range(9),3)),dtype=np.int64)
S=20*16384
NUM=439*S*S
DEN=4000
@njit
def contract(lo,hi,tri,rounds):
 # Coordinates in [0,S]; strict target |det| > NUM/DEN.
 # Returns impossible, passes.
 passes=0
 for turn in range(rounds):
  changed=False;passes+=1
  for ti in range(len(tri)):
   inds=np.empty(6,np.int64)
   for q in range(3):inds[2*q]=2*tri[ti,q];inds[2*q+1]=2*tri[ti,q]+1
   varying=np.empty(6,np.int64);nv=0
   vals=np.empty(6,np.int64)
   for k in range(6):
    vals[k]=lo[inds[k]]
    if lo[inds[k]]!=hi[inds[k]]:varying[nv]=k;nv+=1
   maxima=np.zeros((6,2),np.int64)
   maxi=0
   for mask in range(1<<nv):
    for q in range(nv):
     k=varying[q];vals[k]=hi[inds[k]] if ((mask>>q)&1) else lo[inds[k]]
    v=abs((vals[2]-vals[0])*(vals[5]-vals[1])-(vals[3]-vals[1])*(vals[4]-vals[0]))
    maxi=max(maxi,v)
    for q in range(nv):
     k=varying[q];b=(mask>>q)&1
     maxima[k,b]=max(maxima[k,b],v)
   if DEN*maxi<=NUM:return True,passes
   for q in range(nv):
    k=varying[q];ind=inds[k]
    m0=DEN*maxima[k,0];m1=DEN*maxima[k,1]
    width=hi[ind]-lo[ind]
    if m0<NUM:
     # m1>NUM or global max would have pruned.
     step=((NUM-m0)*width)//(m1-m0)
     if step>0:lo[ind]+=step;changed=True
    elif m1<NUM:
     step=((NUM-m1)*width)//(m0-m1)
     if step>0:hi[ind]-=step;changed=True
   # Updating multiple coords uses old conditional maxima, valid because all intervals shrink.
  if not changed:break
 return False,passes
TEMPLATES=np.array(json.loads(Path(__file__).with_name('local_templates.json').read_text())['floor_templates'],np.int64)
@njit
def local_box(lo,hi):
 for temp in TEMPLATES:
  used=0;good=True
  for i in range(9):
   found=-1
   for j in range(9):
    if (used>>j)&1:continue
    ok=True
    for ax in range(2):
     f=temp[j,ax];c=f if f==0 or f==S else f+1
     if 200*lo[2*i+ax]<200*c-S or 200*hi[2*i+ax]>200*f+S:ok=False;break
    if ok:found=j;break
   if found<0:good=False;break
   used|=1<<found
  if good:return True
 return False
@njit
def prove_box(cells,root,anc,node_limit):
 lo=np.empty(18,np.int64);hi=np.empty(18,np.int64)
 for j in range(5):
  lo[2*j:2*j+2]=anc[j,0]*16384
  hi[2*j:2*j+2]=anc[j,3]*16384
 for i in range(4):
  lo[10+2*i:12+2*i]=cells[root[i],0]*16384
  hi[10+2*i:12+2*i]=cells[root[i],3]*16384
 mid=lo+hi;key=np.zeros(len(TR),np.int64)
 for it in range(len(TR)):
  a,b,c=TR[it]
  key[it]=abs((mid[2*b]-mid[2*a])*(mid[2*c+1]-mid[2*a+1])-(mid[2*b+1]-mid[2*a+1])*(mid[2*c]-mid[2*a]))
 tri=TR[np.argsort(key)]
 ls=np.zeros((300,18),np.int64);hs=np.zeros((300,18),np.int64)
 ls[0]=lo;hs[0]=hi;top=0;nodes=0;local_leaves=0
 while top>=0:
  lo=ls[top].copy();hi=hs[top].copy();top-=1;nodes+=1
  if nodes>node_limit:return False,nodes,local_leaves
  if local_box(lo,hi):local_leaves+=1;continue
  dead,_=contract(lo,hi,tri,8)
  if dead:continue
  if local_box(lo,hi):local_leaves+=1;continue
  widths=hi-lo;k=np.argmax(widths);width=widths[k]
  if width<=1:return False,nodes,local_leaves
  m=(lo[k]+hi[k])//2
  top+=1;ls[top]=lo;hs[top]=hi;hs[top,k]=m
  top+=1;ls[top]=lo;hs[top]=hi;ls[top,k]=m
  if top>=298:return False,nodes,local_leaves
 return True,nodes,local_leaves
@njit
def prove_pattern(pat,V,G,C,A,node_limit):
 bits=V[pat[0],pat[1]].copy()
 for i in range(5):
  for j in range(i):bits &= V[pat[i],pat[j]]
 cand=np.zeros((5,400),np.int64);nn=np.zeros(5,np.int64);pos=np.zeros(5,np.int64)
 for w in range(7):
  for b in range(64):
   if (bits[w]>>np.uint64(b))&np.uint64(1):
    cand[0,nn[0]]=64*w+b;nn[0]+=1
 stack=np.zeros(4,np.int64);level=0;nodes=0;lc=0;bb=0;loc=0
 while level>=0:
  if pos[level]>=nn[level]:level-=1;continue
  ix=pos[level];pos[level]+=1;v=cand[level,ix];nodes+=1
  stack[level]=v
  if level==3:
   lc+=1;done,nb,nl=prove_box(C,stack,A[pat],node_limit);bb+=nb;loc+=nl
   if not done:return False,nodes,lc,bb,loc,stack
   continue
  n=0
  for it in range(ix+1,nn[level]):
   w=cand[level,it];ok=True
   for a in pat:
    if not ((G[a,v,w//64]>>np.uint64(w%64))&np.uint64(1)):ok=False;break
   if not ok:continue
   for j in range(level):
    if maxdet(C[stack[j]],C[v],C[w])<44:ok=False;break
   if ok:cand[level+1,n]=w;n+=1
  if n>=3-level:
   level+=1;nn[level]=n;pos[level]=0
 return True,nodes,lc,bb,loc,stack

def main():
 p=argparse.ArgumentParser();p.add_argument('--start',type=int,default=0);p.add_argument('--stop',type=int,default=330988);p.add_argument('--journal',default='secondary_journal.jsonl');a=p.parse_args()
 if not 0<=a.start<=a.stop<=330988:raise ValueError('range')
 C,A,H,V,G=precompute();pats,raw,_,_=count_patterns(H,V)
 if raw!=331472 or len(pats)!=330988:raise ArithmeticError('coverage count mismatch')
 t=time.time();totals={'patterns':0,'roots':0,'search_nodes':0,'branch_nodes':0,'local_leaves':0}
 with open(a.journal,'w') as out:
  for idx in range(a.start,a.stop):
   done,nn,lc,bb,loc,stack=prove_pattern(pats[idx],V,G,C,A,20000)
   row={'pattern':idx,'status':'PASS' if done else 'INCOMPLETE','search_nodes':int(nn),'roots':int(lc),'branch_nodes':int(bb),'local_leaves':int(loc)}
   out.write(json.dumps(row,sort_keys=True)+'\n');out.flush()
   if not done:raise ArithmeticError(f'INCOMPLETE pattern {idx}, root {stack}')
   totals['patterns']+=1
   for k in ['roots','search_nodes','branch_nodes','local_leaves']:totals[k]+=row[k]
   if idx%1000==0:print('PASS THROUGH',idx,flush=True)
 print(json.dumps({'status':'RANGE_PASS','start':a.start,'stop':a.stop,**totals},sort_keys=True))
 if a.start==0 and a.stop==330988:print('TYPE1_COMPLETE_PASS')
if __name__=='__main__':main()
