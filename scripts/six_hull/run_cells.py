#!/usr/bin/env python3
"""Solve the full-word cells of the exact-hull cover (word triples of Q, P, R with the forced
pair signs), cells lo..hi of the enumeration: `python3 run_cells.py 0 600` and
`python3 run_cells.py 600 1197` write cells_0_600.pkl, cells_600_1197.pkl (one tree per non-ear
cell; the ear cells are closed by export.py). The single cell (11, 5, 23) that fails here is
solved with degree-4 certificates by hard6.py and hard8.py. Then run export.py."""
import sys, time, pickle
from engine import *
qw = [w for w in range(26) if word_ok(6, WORDS[w])]
pw = [w for w in range(26) if word_ok(7, WORDS[w])]

def ear_pair(fs):
    tb = BASE + fs
    return any(len(inside_list(tb, orient(*e, True))) >= 2 for e in EARS)

cells = []
for q in qw:
    for p in pw:
        for r in pw:
            fs = word_facts(6, WORDS[q]) + word_facts(7, WORDS[p]) + word_facts(8, WORDS[r])
            if not consistent(BASE, fs): continue
            fs2 = close_pairs(fs)
            if fs2 is None: continue
            cells.append(((q, p, r), fs2))
print('cells', len(cells), 'ear', sum(1 for c in cells if ear_pair(c[1])), flush=True)
lo, hi = int(sys.argv[1]), int(sys.argv[2])
res = {}
t0 = time.time()
for n, (key, fs) in enumerate(cells[lo:hi]):
    if ear_pair(fs):
        continue
    t = solve_cell(fs, depth=3)
    res[key] = t
    print(n + lo, key, 'FAIL' if t is None else ('leaves %d terms %d' % (tree_leaves(t), tree_terms(t))), round(time.time() - t0), flush=True)
pickle.dump(res, open('cells_%d_%d.pkl' % (lo, hi), 'wb'))
print('fails', sum(1 for t in res.values() if t is None), 'terms', sum(tree_terms(t) for t in res.values() if t), 'time', time.time() - t0)
