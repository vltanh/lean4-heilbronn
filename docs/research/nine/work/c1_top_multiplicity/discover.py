import os
os.environ['OMP_NUM_THREADS']='1';os.environ['OPENBLAS_NUM_THREADS']='1'
import json,sys,time
from itertools import combinations_with_replacement
from pathlib import Path
from fractions import Fraction as F
import numpy as np
from scipy.sparse import coo_matrix,hstack
from scipy.optimize import linprog
import model as m
ROOT=Path(__file__).parent
MONOS=[()]+[v for d in range(1,4) for v in combinations_with_replacement(range(12),d)]
MID={x:i for i,x in enumerate(MONOS)}

def matrix(polys):
 rr=[];cc=[];vv=[]
 for j,p in enumerate(polys):
  for mon,c in p.items():rr.append(MID[mon]);cc.append(j);vv.append(float(c))
 return coo_matrix((vv,(rr,cc)),shape=(len(MONOS),len(polys))).tocsc()

def factor_data(mode):
 fs=m.FACTORS[mode];ps=[];terms=[]
 for degree in (1,2,3):
  for ids in combinations_with_replacement(range(len(fs)),degree):
   p=m.const(1)
   for i in ids:p=m.mul(p,fs[i])
   ps.append(p);terms.append(['f',list(ids)])
 return matrix(ps),terms

def solve(mode,case,branch,base):
 started=time.monotonic();fm,ft=base;qs=m.costs(mode,case,branch);ps=[];ts=[]
 for i,q in enumerate(qs):
  ps.append(q);ts.append(['q',i,-1])
  for j,f in enumerate(m.FACTORS[mode]):ps.append(m.mul(q,f));ts.append(['q',i,j])
 M=hstack([fm,matrix(ps)],format='csc');tags=ft+ts
 rhs=np.zeros(len(MONOS));rhs[0]=-1
 fit=linprog(np.ones(M.shape[1]),A_eq=M,b_eq=rhs,bounds=(0,None),method='highs',options={'time_limit':30,'threads':1})
 if not fit.success:return None,{'status':fit.status,'message':fit.message,'seconds':time.monotonic()-started}
 for scale in [4096,65536,1048576]:
  terms=[]
  for tag,w in zip(tags,fit.x):
   ww=round(w*scale)
   if ww>0:terms.append(tag+[ww])
  cert={'mode':mode,'case':list(case),'branch':branch,'scale':scale,'terms':terms}
  bound=m.cube_upper(m.residual(cert))
  if bound<-F(3,4):
   cert['upper_bound']=str(bound)
   return cert,{'terms':len(terms),'bound':float(bound),'seconds':time.monotonic()-started}
 return None,{'status':'rounding','bound':str(bound),'seconds':time.monotonic()-started}

def applicable(cert,case,branch=-1):
 mode=cert['mode'];old=m.specs(mode,tuple(cert['case']),cert['branch']);new={(t,s):bd for t,s,bd in m.specs(mode,case,branch)}
 used={t[1] for t in cert['terms'] if t[0]=='q'}
 for j in used:
  if j==len(old):continue
  t,sg,bd=old[j]
  if new.get((t,sg),F(-100))<bd:return False
 return True

def main():
 modes=sys.argv[1:] or m.MODES
 for mode in modes:
  output=ROOT/(mode+'.json');data=json.loads(output.read_text()) if output.exists() else {'certificates':[],'failed':[]}
  certs=data['certificates'];base=factor_data(mode);fails=[]
  for no,case in enumerate(m.cases(mode)):
   if any(applicable(c,case) for c in certs):continue
   cert,info=solve(mode,case,-1,base)
   print(mode,no,case,info,flush=True)
   if cert:certs.append(cert)
   else:fails.append(list(case))
   output.write_text(json.dumps({'certificates':certs,'failed':fails},separators=(',',':')))
  print('DONE',mode,'certificates',len(certs),'failures',fails,flush=True)
if __name__=='__main__':main()
