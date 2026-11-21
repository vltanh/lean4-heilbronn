#!/usr/bin/env python3
"""Exact LP-assisted interval covers of specified n=10 grid roots.

SciPy is used only to propose nonnegative integer dual coefficients. Every
coordinate contraction and rejection is checked by Python integer arithmetic.
The JSON certificate is replayable without a numerical LP solver.
"""
from __future__ import annotations
import argparse
import hashlib
import itertools
import json
import math
from pathlib import Path
import time

import numpy as np

M=22
F=1048576
S=M*F
NUM=4653741958254
DEN=50000000000000
TRIPLES=list(itertools.combinations(range(10),3))
IND=np.array([[2*p+ax for p in tri for ax in range(2)] for tri in TRIPLES])
MASK=np.array(list(itertools.product([False,True],repeat=6)))
K_DEFAULT=10**40

def require(condition,message="certificate check failed"):
    if not condition:raise ValueError(message)


def det(v):
    return (v[...,2]-v[...,0])*(v[...,5]-v[...,1])-(v[...,3]-v[...,1])*(v[...,4]-v[...,0])


def triangle_ranges(lo,hi):
    require(len(lo)==len(hi)==20 and all(isinstance(x,int) for x in list(lo)+list(hi)), "integer coordinate inventory")
    require(all(-S<=l<=h<=S for l,h in zip(lo,hi)), "coordinate bounds prevent int64 overflow")
    low=np.array(lo,dtype=np.int64)[IND]
    high=np.array(hi,dtype=np.int64)[IND]
    values=np.where(MASK[None,:,:],high[:,None,:],low[:,None,:])
    ds=det(values)
    return ds.min(axis=1),ds.max(axis=1)


def templates():
    D=10**12;gl=315611137608;gu=315611137609
    def poly(x):return 12*x**3-27*x*x*D+20*x*D*D-4*D**3
    require(poly(gl)<0<poly(gu))
    d=2*D*D
    def enc(a,b):return (a*S//d,(b*S+d-1)//d)
    def aval(x):return d-6*x*D+4*x*x
    def comp(a):return (S-a[1],S-a[0])
    z=enc(0,0);one=enc(d,d);a=enc(aval(gu),aval(gl));b=enc(gl*D,gu*D);g=enc(2*gl*D,2*gu*D)
    base=[z,a,a,z,comp(b),z,one,b,one,comp(a),comp(a),one,b,one,z,comp(b),g,g,comp(g),comp(g)]
    out=[]
    for flip in range(2):
        for rot in range(4):
            v=[]
            for i in range(10):
                x,y=base[2*i:2*i+2]
                if flip:x=comp(x)
                for _ in range(rot):x,y=comp(y),x
                v.extend([x,y])
            out.append(v)
    return out
TEMPLATES=templates()


def local_match(lo,hi):
    if any(1000*(h-l)>S for l,h in zip(lo,hi)):return None
    for k,t in enumerate(TEMPLATES):
        used=set();perm=[]
        for p in range(10):
            found=None
            for q in range(10):
                if q in used:continue
                if all(2000*lo[2*p+ax]>=2000*t[2*q+ax][1]-S and
                       2000*hi[2*p+ax]<=2000*t[2*q+ax][0]+S for ax in range(2)):
                    found=q;break
            if found is None:break
            used.add(found);perm.append(found)
        if len(perm)==10:return {'template':k,'permutation':perm}
    return None


def root_box(anchors,free):
    rects=[]
    for a in anchors:
        if 0<=a<M:rects.append((0,a,0,a+1))
        elif M<=a<2*M:rects.append((a-M,0,a-M+1,0))
        elif 2*M<=a<3*M:rects.append((M,a-2*M,M,a-2*M+1))
        elif 3*M<=a<4*M:rects.append((a-3*M,M,a-3*M+1,M))
        else:
            require(4*M<=a<4*M+4)
            x,y=[(0,0),(M,0),(M,M),(0,M)][a-4*M]
            rects.append((x,y,x,y))
    for a in free:
        require(0<=a<M*M)
        x,y=divmod(a,M);rects.append((x,y,x+1,y+1))
    require(len(rects)==10)
    return ([F*z for r in rects for z in r[:2]], [F*z for r in rects for z in r[2:]])


def rows(lo,hi):
    """Return exact necessary affine rows, or a direct triangle rejection."""
    low,high=triangle_ranges(lo,hi)
    sgn=[]
    for i,(l,h) in enumerate(zip(low,high)):
        pos=DEN*int(h)>NUM*S*S
        neg=-DEN*int(l)>NUM*S*S
        if not pos and not neg:return {},i
        sgn.append(1 if pos and not neg else -1 if neg and not pos else 0)
    c=np.array([l+h for l,h in zip(lo,hi)],dtype=np.int64)
    widths=np.array([h-l for l,h in zip(lo,hi)],dtype=np.int64)
    centered_low=-widths
    qlow,qhigh=triangle_ranges(list(map(int,centered_low)),list(map(int,widths)))
    result={}
    for i,(tri,sg) in enumerate(zip(TRIPLES,sgn)):
        if not sg:continue
        ids=IND[i]
        v=c[ids]
        dc=int(det(v))
        grad=[v[3]-v[5],v[4]-v[2],v[5]-v[1],v[0]-v[4],v[1]-v[3],v[2]-v[0]]
        R=int(qhigh[i]) if sg==1 else -int(qlow[i])
        A=[0]*20
        for j,k in enumerate(ids):A[int(k)]=-DEN*sg*int(grad[j])*int(widths[k])
        b=DEN*(sg*dc+R)-4*NUM*S*S
        # Redundant on u in [-1,1]^20; filtering does not change the relaxation.
        if b>=sum(abs(a) for a in A):continue
        result[i]=(A,b)
    return result,None


def weighted(affine,weights):
    require(all(isinstance(i,int) and i in affine and isinstance(w,int) and w>=0 for i,w in weights))
    require(len({i for i,_ in weights})==len(weights))
    A=[0]*20;b=0
    for i,w in weights:
        aa,bb=affine[i]
        for j,a in enumerate(aa):A[j]+=w*a
        b+=w*bb
    return A,b


def lower_numerator(affine,weights,K,axis,sign):
    require(isinstance(K,int) and K>0 and 0<=axis<20 and sign in (-1,1))
    A,b=weighted(affine,weights)
    A[axis]+=K*sign
    return -b-sum(abs(a) for a in A)


def verify_farkas(affine,weights):
    A,b=weighted(affine,weights)
    return b+sum(abs(a) for a in A)<0


def discovery_matrices(affine):
    keys=list(affine)
    scales=np.array([float(max(1,abs(affine[k][1]),max(abs(a) for a in affine[k][0]))) for k in keys])
    A=np.array([[float(a) for a in affine[k][0]] for k in keys])/scales[:,None]
    b=np.array([float(affine[k][1]) for k in keys])/scales
    return keys,scales,A,b


def integer_dual(result,keys,scales,K):
    values=-np.array(result.ineqlin.marginals)
    return [[int(k),max(0,int(round(float(v)*K/float(s))))] for k,v,s in zip(keys,values,scales) if v>0]


def farkas_discovery(affine):
    from scipy.optimize import linprog
    keys,scales,A,b=discovery_matrices(affine)
    if not len(keys):return None
    obj=np.zeros(21);obj[-1]=1
    augmented=np.column_stack([A,-np.ones(len(keys))])
    res=linprog(obj,A_ub=augmented,b_ub=b,bounds=[(-1,1)]*20+[(None,None)],method='highs')
    if not res.success or res.fun<=0:return None
    for K in (K_DEFAULT,10**48):
        W=integer_dual(res,keys,scales,K)
        if verify_farkas(affine,W):return W
    return None


def contract_lp(lo,hi,affine):
    from scipy.optimize import linprog
    keys,scales,A,b=discovery_matrices(affine)
    if not len(keys):return [],lo,hi
    changes=[];newlo=list(lo);newhi=list(hi)
    for axis in range(20):
        if hi[axis]-lo[axis]<=1:continue
        for sign in (1,-1):
            obj=np.zeros(20);obj[axis]=sign
            res=linprog(obj,A_ub=A,b_ub=b,bounds=[(-1,1)]*20,method='highs')
            if not res.success:continue
            K=K_DEFAULT;W=integer_dual(res,keys,scales,K)
            num=lower_numerator(affine,W,K,axis,sign)
            # Floor lower endpoints and ceil upper endpoints preserve real points.
            base=K*(lo[axis]+hi[axis]);w=hi[axis]-lo[axis]
            if sign==1:
                endpoint=(base+w*num)//(2*K)
                if endpoint<=newlo[axis]:continue
                newlo[axis]=endpoint
            else:
                endpoint=-((-base+w*num)//(2*K))
                if endpoint>=newhi[axis]:continue
                newhi[axis]=endpoint
            changes.append({'axis':axis,'sign':sign,'K':K,'weights':W,'endpoint':endpoint})
    return changes,newlo,newhi


def prove(anchors,free,max_nodes=10000,max_rounds=3,progress=20):
    lo,hi=root_box(anchors,free)
    proof={'schema':'heilbronn-n10-lp-cover-v1','scale':S,'num':NUM,'den':DEN,
           'anchors':anchors,'free':free,'initial_box':{'lo':lo,'hi':hi},
           'nodes':[],'status':'INCOMPLETE'}
    todo=[(0,lo,hi)]
    nextid=1;t0=time.monotonic()
    counters={'local':0,'area':0,'farkas':0,'empty':0,'split':0,'contractions':0,'lp_bounds':0}
    while todo:
        idx,lo,hi=todo.pop()
        if len(proof['nodes'])>=max_nodes:
            proof['unresolved']=[{'id':idx,'lo':lo,'hi':hi}]+[{'id':i,'lo':l,'hi':h} for i,l,h in todo]
            proof['counts']=counters
            return proof
        node={'id':idx,'lo':lo,'hi':hi,'steps':[]}
        proof['nodes'].append(node)
        closed=False
        for round_index in range(max_rounds+1):
            match=local_match(lo,hi)
            if match is not None:
                node['leaf']={'kind':'local',**match};counters['local']+=1;closed=True;break
            affine,bad=rows(lo,hi)
            if bad is not None:
                node['leaf']={'kind':'area','triangle':bad};counters['area']+=1;closed=True;break
            W=farkas_discovery(affine)
            if W is not None:
                node['leaf']={'kind':'farkas','weights':W};counters['farkas']+=1;closed=True;break
            if round_index==max_rounds:break
            changes,nlo,nhi=contract_lp(lo,hi,affine)
            if not changes:break
            node['steps'].append({'kind':'lp_bounds','changes':changes})
            counters['contractions']+=1;counters['lp_bounds']+=len(changes)
            lo,hi=nlo,nhi
            if any(l>h for l,h in zip(lo,hi)):
                node['leaf']={'kind':'empty'};counters['empty']+=1;closed=True;break
        if not closed:
            axis=max(range(20),key=lambda j:hi[j]-lo[j])
            if hi[axis]-lo[axis]<=1:
                node['leaf']={'kind':'unresolved'}
                proof['unresolved']=[{'id':idx,'lo':lo,'hi':hi}]+[{'id':i,'lo':l,'hi':h} for i,l,h in todo]
                proof['counts']=counters
                return proof
            mid=(lo[axis]+hi[axis])//2
            child1=nextid;child2=nextid+1;nextid+=2
            node['split']={'axis':axis,'mid':mid,'left':child1,'right':child2}
            hi1=list(hi);hi1[axis]=mid;lo2=list(lo);lo2[axis]=mid
            todo.append((child2,lo2,list(hi)));todo.append((child1,list(lo),hi1))
            counters['split']+=1
        if len(proof['nodes'])%progress==0:
            print('LP_PROGRESS',len(proof['nodes']),'pending',len(todo),'seconds',round(time.monotonic()-t0,3),counters,flush=True)
    proof['status']='COMPLETE';proof['counts']=counters;proof['elapsed_seconds']=time.monotonic()-t0
    return proof


def replay(proof):
    require(proof['schema']=='heilbronn-n10-lp-cover-v1')
    require((proof['scale'],proof['num'],proof['den'])==(S,NUM,DEN))
    require(proof['status']=='COMPLETE' and 'unresolved' not in proof)
    initial=root_box(proof['anchors'],proof['free'])
    require(proof['initial_box']=={'lo':initial[0],'hi':initial[1]})
    records={n['id']:n for n in proof['nodes']}
    require(len(records)==len(proof['nodes']))
    todo=[(0,*initial)];seen=set();counts={'local':0,'area':0,'farkas':0,'empty':0,'split':0,'contractions':0,'lp_bounds':0}
    while todo:
        idx,lo,hi=todo.pop();require(idx not in seen);seen.add(idx)
        n=records[idx];require(n['lo']==lo and n['hi']==hi)
        for step in n['steps']:
            require(step['kind']=='lp_bounds')
            affine,bad=rows(lo,hi);require(bad is None)
            newlo=list(lo);newhi=list(hi);bounds_seen=set()
            for c in step['changes']:
                j=c['axis'];sg=c['sign'];K=c['K'];require((j,sg) not in bounds_seen);bounds_seen.add((j,sg))
                num=lower_numerator(affine,c['weights'],K,j,sg)
                base=K*(lo[j]+hi[j]);w=hi[j]-lo[j]
                if sg==1:
                    e=(base+w*num)//(2*K);require(e==c['endpoint'] and e>newlo[j]);newlo[j]=e
                else:
                    e=-((-base+w*num)//(2*K));require(e==c['endpoint'] and e<newhi[j]);newhi[j]=e
            counts['contractions']+=1;counts['lp_bounds']+=len(step['changes'])
            lo,hi=newlo,newhi
        require(('leaf' in n)^('split' in n))
        if 'leaf' in n:
            leaf=n['leaf'];kind=leaf['kind'];require(kind in ('local','area','farkas','empty'));counts[kind]+=1
            if kind=='local':require(local_match(lo,hi)=={'template':leaf['template'],'permutation':leaf['permutation']})
            elif kind=='area':
                mn,mx=triangle_ranges(lo,hi);i=leaf['triangle'];require(DEN*max(abs(int(mn[i])),abs(int(mx[i])))<=NUM*S*S)
            elif kind=='farkas':
                affine,bad=rows(lo,hi);require(bad is None and verify_farkas(affine,leaf['weights']))
            else:require(any(l>h for l,h in zip(lo,hi)))
        else:
            d=n['split'];j=d['axis'];m=d['mid'];require(0<=j<20 and lo[j]<m<hi[j])
            hi1=list(hi);hi1[j]=m;lo2=list(lo);lo2[j]=m
            todo.append((d['right'],lo2,list(hi)));todo.append((d['left'],list(lo),hi1));counts['split']+=1
    require(seen==set(records) and counts==proof['counts'])
    return counts


def main():
    p=argparse.ArgumentParser();p.add_argument('--anchors',default='3,16,25,38,49,71');p.add_argument('--free',default='147,336,417,480')
    p.add_argument('--output');p.add_argument('--replay');p.add_argument('--max-nodes',type=int,default=10000);p.add_argument('--rounds',type=int,default=3)
    a=p.parse_args()
    if a.replay:
        proof=json.loads(Path(a.replay).read_text());print('EXACT_LP_REPLAY_PASS',replay(proof));return
    if not a.output:p.error('--output is required for discovery')
    proof=prove(list(map(int,a.anchors.split(','))),list(map(int,a.free.split(','))),a.max_nodes,a.rounds)
    Path(a.output).write_text(json.dumps(proof,separators=(',',':'))+'\n')
    print('LP_COVER_RESULT',proof['status'],len(proof['nodes']),proof['counts'],flush=True)
    if proof['status']!='COMPLETE':raise SystemExit(2)
    print('EXACT_LP_REPLAY_PASS',replay(proof),flush=True)
    print('SHA256',hashlib.sha256(Path(a.output).read_bytes()).hexdigest(),flush=True)

if __name__=='__main__':main()
