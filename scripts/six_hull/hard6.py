#!/usr/bin/env python3
"""The cell (11, 5, 23) of the exact-hull cover, with degree-4 certificates (hard_11_5_23.old.pkl; refined by hard8.py)."""
import time, pickle
import engine as E
q, p, r = 11, 5, 23
fs = E.word_facts(6, E.WORDS[q]) + E.word_facts(7, E.WORDS[p]) + E.word_facts(8, E.WORDS[r])
fs = E.close_pairs(fs)
t = E.solve_cell4(fs, depth=4, log=print)
print('tree', None if t is None else (E.tree_leaves(t), E.tree_terms(t)))
pickle.dump(t, open('hard_11_5_23.old.pkl', 'wb'))
