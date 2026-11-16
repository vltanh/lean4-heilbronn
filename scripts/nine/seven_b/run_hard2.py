#!/usr/bin/env python3
import sys, pickle, time, os
import engine as G
ks = eval(sys.argv[1]); out = sys.argv[2]
t = time.time()
tr = G.solve2(ks, depth=int(sys.argv[3]) if len(sys.argv) > 3 else 6)
print('DONE', ks, None if tr is None else (G.tree_leaves(tr), G.tree_terms(tr)), round(time.time() - t), flush=True)
pickle.dump({tuple(ks): tr}, open(out, 'wb'))
