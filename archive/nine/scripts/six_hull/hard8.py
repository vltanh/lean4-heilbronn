#!/usr/bin/env python3
"""The cell (11, 5, 23) of the exact-hull cover (hard_11_5_23.pkl): the tree of hard6.py, whose
largest leaf (744 terms) is split further on [V_B Q R] and [Q P R] to keep each certificate
small."""
import pickle
import engine as E
q, p, r = 11, 5, 23
fs = E.word_facts(6, E.WORDS[q]) + E.word_facts(7, E.WORDS[p]) + E.word_facts(8, E.WORDS[r])
fs = E.close_pairs(fs)
old = pickle.load(open('hard_11_5_23.old.pkl', 'rb'))
SPLITS = [('pair', 1, 6, 8), ('tri', (6, 7, 8))]


def solve(fs, k):
    W, val = E.try_cert(E.atoms(fs))
    if W is not None:
        print('  ' * k, 'deg3', len(W), flush=True)
        return ('cert', W)
    if k == len(SPLITS):
        W, val = E.try_cert4(E.atoms(fs))
        print('  ' * k, 'deg4', None if W is None else len(W), val, flush=True)
        assert W is not None
        return ('cert', W)
    sp = SPLITS[k]
    return ('node', sp, [solve(c, k + 1) for c in E.children(fs, sp)])


# old = ('node', pair 0 6 7, [('node', pair 2 7 8, [cert80, cert744]), cert432])
a = E.children(fs, old[1])
b = E.children(a[0], old[2][0][1])
new_leaf = solve(b[1], 0)
t = ('node', old[1], [('node', old[2][0][1], [old[2][0][2][0], new_leaf]), old[2][1]])
print('tree', E.tree_leaves(t), E.tree_terms(t))
pickle.dump(t, open('hard_11_5_23.pkl', 'wb'))
