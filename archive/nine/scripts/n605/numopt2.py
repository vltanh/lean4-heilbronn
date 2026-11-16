"""Numerics in model coordinates (a,h,b,c,d,f,x,y,z,w,r,t): full 84 triangles or only the 9 used."""
import numpy as np, itertools as it, sys
from scipy.optimize import minimize
CYC=['A','B','C','X','D','Q','F','Y','H']
def pts(v):
    a,h,b,c,d,f,x,y,z,w,r,t=v[:12]
    return {'A':(0,a),'B':(b,0),'C':(c,0),'D':(1,d),'F':(f,1),'H':(0,h),'X':(x,y),'Y':(z,w),'Q':(r,t)}
ALL=[''.join(tr) for tr in it.combinations(CYC,3)]
USED=['ABC','ABH','AYH','BCX','CXD','XDQ','DQF','FYH','FYQ']   # all counterclockwise
def dets(v,labs):
    P=pts(v); out=[]
    for l in labs:
        (px,py),(qx,qy),(sx,sy)=(P[ch] for ch in l)
        out.append((qx-px)*(sy-py)-(qy-py)*(sx-px))
    return np.array(out)
def lin(v):
    a,h,b,c,d,f,x,y,z,w,r,t=v[:12]
    return np.array([d-a,h-d,f-b,c-f,x-c,d-y,f-z,w-h,r-f,t-d,h-a,c-b])
mode=sys.argv[1]; order=sys.argv[2]=='1'; seed=int(sys.argv[3]); n=int(sys.argv[4])
labs=ALL if mode=='all' else USED
rng=np.random.default_rng(seed); best=None
for trial in range(n):
    v=np.append(rng.random(12),0.0)
    if trial%2==0:  # structured start
        a,h=np.sort(rng.random(2)); b,c=np.sort(rng.random(2)); d=rng.uniform(a,h); f=rng.uniform(b,c)
        v=np.array([a,h,b,c,d,f,rng.uniform(c,1),rng.uniform(0,d),rng.uniform(0,f),rng.uniform(h,1),rng.uniform(f,1),rng.uniform(d,1),0.0])
    v[12]=dets(v,labs).min()
    cons=[{'type':'ineq','fun':lambda v: dets(v,labs)-v[12]}]
    if order: cons.append({'type':'ineq','fun':lambda v: lin(v)})
    r=minimize(lambda v:-v[12],v,method='SLSQP',bounds=[(0,1)]*12+[(-1,1)],constraints=cons,options={'maxiter':800,'ftol':1e-13})
    val=dets(r.x,labs).min()
    ok=(not order or lin(r.x).min()>-1e-9) and r.x[:12].min()>-1e-9 and r.x[:12].max()<1+1e-9
    if ok and (best is None or val>best[0]): best=(val,r.x.copy())
print(mode,'order' if order else 'noorder','best doubled',best[0],'area',best[0]/2)
print(np.round(best[1][:12],6).tolist())
