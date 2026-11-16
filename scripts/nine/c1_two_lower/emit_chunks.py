"""Rewrite the tree part of ConvexPairCert.lean / TriangularPairCert.lean as chunked theorems."""
import sys, re
from pathlib import Path
from bern import *
which=sys.argv[1]
root=str(Path(__file__).resolve().parents[3]/'Heilbronn'/'Nine'/'C1'/'TwoLower')+'/'
if which=='convex':
    exec(open('convex_pair.py').read().split('t0=time.time()')[0])
    t,st=find_tree([P0,P1],box,[0,1,2],order=[2,0,1]); depth=4; fn=root+'ConvexPairCert.lean'
else:
    exec(open('triangular_pair.py').read().split('t0=time.time()')[0])
    t,st=find_tree(pols,box,[0,1,2,3],order=[3,2,1,0],maxdepth=30); depth=4; fn=root+'TriangularPairCert.lean'
defs,tt,pp=chunked_lean(t,box,depth)
s=open(fn).read()
i=s.index("def tree : LTree :=")
j=s.index("end Heilbronn")
s=s[:i]+defs+"\ndef tree : LTree :=\n  "+tt+"\n\ntheorem check : ltreeCheck es tree box = true :=\n  "+pp+"\n\n"+s[j:]
open(fn,'w').write(s)
print(st)
