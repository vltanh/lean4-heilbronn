#!/usr/bin/env python3
"""Search the cover trees of all pair cases; results pickled incrementally (resumable)."""
import sys, pickle, time, os
from multiprocessing import Pool
import engine as G


def job(ks):
    t = time.time()
    tr = G.solve(ks, depth=5)
    return ks, tr, time.time() - t


if __name__ == '__main__':
    out = sys.argv[1]
    nproc = int(sys.argv[2])
    res = pickle.load(open(out, 'rb')) if os.path.exists(out) else {}
    singles, pairs = G.case_keys()
    cases = [ks for ks in singles + pairs if tuple(ks) not in res]
    with Pool(nproc) as pool:
        for ks, tr, dt in pool.imap_unordered(job, cases):
            res[tuple(ks)] = tr
            print('DONE', ks, None if tr is None else (G.tree_leaves(tr), G.tree_terms(tr)),
                  round(dt), flush=True)
            pickle.dump(res, open(out + '.tmp', 'wb'))
            os.replace(out + '.tmp', out)
