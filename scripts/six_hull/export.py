#!/usr/bin/env python3
"""Export the exact-hull cover (SIX_BOUNDARY_HULL Theorem 7) to Lean.

The tree mirrors Heilbronn/Six/HullModel.lean (`engine.py` is its Python mirror):
1. the radial word entries of Q, P, R (splits `vertex p i`, vertex order ORDER), branches filtered
   by consistency with the known signs;
2. at a full word triple, the pair-line splits `pair i p q` forced by a separating ray (one branch,
   or none when the forced sign contradicts a known one);
3. then either a two-term certificate (two points certified inside one anchor ear, against the ear
   bound 13/16 of Theorem 1) or the cell tree found by `run_cells.py` / `hard6.py` (sign splits
   `pair` / `tri` and certificates).
Every certificate is rechecked (certlib.check) on the atoms of its leaf. Writes data/six_hull/*.txt
and Heilbronn/Six/HullTrees*.lean.
"""
import pickle
import sys
from fractions import Fraction as F
from pathlib import Path

HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[1]
sys.path.insert(0, str(HERE))
sys.path.insert(0, str(ROOT / 'scripts'))
import engine as E  # noqa: E402
import certlib  # noqa: E402

DATA = ROOT / 'data' / 'six_hull'
LEANDIR = ROOT / 'Heilbronn' / 'Six' / 'HullTrees'
ORDER = [5, 2, 0, 1, 3, 4]
LIMIT = 150
LEAF_LIMIT = 4
MODULE_TERMS = 2500
PAIRS = [(6, 7), (6, 8), (7, 8)]
NF = len(E.factors())
EAR_ATOM = {t: 24 + 6 + 1 + n for n, t in enumerate(E.EARS)}


def load_cells():
    cells = {}
    for fn in ['cells_0_600.pkl', 'cells_600_1197.pkl']:
        cells.update(pickle.load(open(HERE / fn, 'rb')))
    hard = pickle.load(open(HERE / 'hard_11_5_23.pkl', 'rb'))
    assert cells[(11, 5, 23)] is None
    cells[(11, 5, 23)] = hard
    return cells


def word_of(fs, p):
    tb = E.BASE + fs
    w = []
    for i in range(6):
        vals = [v for v in range(1, 5) if all(E.lookup(tb, f[0]) == f[1] for f in E.branch_facts(p, i, v))]
        assert len(vals) == 1
        w.append(vals[0])
    return tuple(w)


def ear_cert(fs):
    """A two-term certificate when two free points are certified inside an ear, else None."""
    tb = E.BASE + fs
    for e in E.EARS:
        f = E.orient(*e, True)
        if len(E.inside_list(tb, f)) >= 2:
            ci = NF + E.LEX.index(f[0])
            at = E.atoms(fs)
            W = certlib.integer_weights(at, [(F(1), [EAR_ATOM[e]]), (F(1), [ci])])
            assert certlib.check(at, W)
            return W
    return None


def convert(t, fs):
    """Cell tree of run_cells (('cert', W) | ('node', split, kids)) -> export tree."""
    if t[0] == 'cert':
        assert certlib.check(E.atoms(fs), t[1]), 'cert fails'
        return ('cert', t[1])
    sp = t[1]
    ch = E.children(fs, sp)
    assert len(ch) == len(t[2])
    if sp[0] == 'pair':
        lab = ('pair', sp[1], sp[2], sp[3])
        brs = E.pair_branches(fs, sp[1], sp[2], sp[3])
    else:
        lab = ('tri',) + tuple(sp[1])
        brs = E.tri_branches(fs, sp[1])
    return ('node', lab, [(b, convert(c, fs + b)) for b, c in zip(brs, t[2])])


def chain(fs, cells, todo):
    """The forced pair splits, then the leaf."""
    if todo:
        i, p, q = todo[0]
        tb = E.BASE + fs
        sg = E.pair_sign(tb, i, p, q)
        if sg is None:
            return chain(fs, cells, todo[1:])
        brs = E.pair_branches(fs, i, p, q)
        return ('node', ('pair', i, p, q), [(b, chain(fs + b, cells, todo[1:])) for b in brs])
    W = ear_cert(fs)
    if W is not None:
        return ('cert', W)
    key = tuple(E.WORDS.index(word_of(fs, p)) for p in (6, 7, 8))
    return convert(cells[key], fs)


def build(fs, depth, cells):
    if depth == 18:
        todo = [(i, p, q) for (p, q) in PAIRS for i in range(6)]
        return chain(fs, cells, todo)
    p = 6 + depth // 6
    i = ORDER[depth % 6]
    brs = E.vertex_branches(fs, p, i)
    return ('node', ('vertex', p, i), [(b, build(fs + b, depth + 1, cells)) for b in brs])


def terms_of(t):
    if t[0] == 'cert':
        return len(t[1])
    return sum(terms_of(c) for _, c in t[2])


def leaves_of(t):
    if t[0] == 'cert':
        return 1
    return sum(leaves_of(c) for _, c in t[2])


# ---------- Lean output ----------
def lab_lean(lab):
    if lab[0] == 'vertex':
        return '(.vertex %d %d)' % (lab[1], lab[2])
    if lab[0] == 'pair':
        return '(.pair %d %d %d)' % lab[1:]
    return '(.tri %d %d %d)' % lab[1:]


def br_lean(lab, b):
    """The Lean expression of the branch b of the split lab."""
    if lab[0] == 'vertex':
        p, i = lab[1], lab[2]
        for v in range(1, 5):
            if E.branch_facts(p, i, v) == b:
                return 'branchFacts %d %d %d' % (p, i, v)
        raise ValueError
    (t, sg), = b
    if lab[0] == 'pair':
        i, p, q = lab[1:]
        # [orient i p q s] with s the orientation of the ordered triple
        for s in (False, True):
            if E.orient(i, p, q, s) == (t, sg):
                return '[orient %d %d %d %s]' % (i, p, q, 'true' if s else 'false')
        raise ValueError
    return '[((%d, %d, %d), %s)]' % (t[0], t[1], t[2], 'true' if sg else 'false')


class Emitter:
    def __init__(self):
        self.counter = 0
        self.mods = []       # list of (lines, terms)
        self.cur = []
        self.cur_terms = 0

    def flush(self):
        if self.cur:
            self.mods.append((self.cur, self.cur_terms))
            self.cur, self.cur_terms = [], 0

    def add(self, text, terms):
        if self.cur and self.cur_terms + terms > MODULE_TERMS:
            self.flush()
        self.cur.append(text)
        self.cur_terms += terms

    def fname(self):
        self.counter += 1
        return 'd%04d.txt' % self.counter

    def tree_lean(self, t):
        if t[0] == 'cert':
            fn = self.fname()
            certlib.write_terms(DATA / fn, t[1])
            return '.cert (term_rows%% "../../../data/six_hull/%s")' % fn
        return '.node %s [%s]' % (lab_lean(t[1]), ', '.join(self.tree_lean(c) for _, c in t[2]))

    def emit(self, t, facts, name):
        """Theorems name_ok : checkTree spec facts name = true."""
        n = terms_of(t)
        if t[0] == 'cert' or (n <= LIMIT and leaves_of(t) <= LEAF_LIMIT):
            body = self.tree_lean(t)
            self.add('noncomputable def %s : Cover.Tree Split :=\n  %s\n\n'
                     'theorem %s_ok : checkTree spec %s %s = true := by\n  decide +kernel\n\n'
                     % (name, body, name, facts, name), n)
            return
        kids = []
        for k, (b, c) in enumerate(t[2]):
            cn = '%s_%d' % (name, k)
            self.emit(c, '(%s ++ %s)' % (facts, br_lean(t[1], b)), cn)
            kids.append(cn)
        brs = ', '.join(br_lean(t[1], b) for b, _ in t[2])
        oks = ', '.join('%s_ok' % cn for cn in kids)
        if not kids:
            oks_line = '  rfl\n'
        else:
            oks_line = '  exact ⟨%s⟩\n' % oks if len(kids) > 1 else '  exact %s\n' % oks
        self.add('noncomputable def %s : Cover.Tree Split :=\n  .node %s [%s]\n\n'
                 'theorem %s_br : branches %s %s = [%s] := by decide +kernel\n\n'
                 'theorem %s_ok : checkTree spec %s %s = true := by\n'
                 '  rw [%s, checkTree_node, show spec.branches = branches from rfl, %s_br]\n'
                 '  simp only [checkChildren_cons, checkChildren_nil, Bool.and_true, Bool.and_eq_true]\n'
                 '%s\n'
                 % (name, lab_lean(t[1]), ', '.join(kids), name, facts, lab_lean(t[1]), brs,
                    name, facts, name, name, name, oks_line), 0)


HEAD = '''module

%s
/-! # Exact-hull cover, part %d (generated by `scripts/six_hull/export.py`)

Subtrees of the cover of `Heilbronn.Six.HullModel` (%d certificate terms), checked by the
kernel. -/

@[expose] public section

namespace Heilbronn.SixBoundaryHull.Trees

open Cert Cert.Expr Cover Model

'''


def main():
    cells = load_cells()
    tree = build([], 0, cells)
    print('leaves', leaves_of(tree), 'terms', terms_of(tree))
    DATA.mkdir(parents=True, exist_ok=True)
    for old in DATA.glob('*.txt'):
        old.unlink()
    LEANDIR.mkdir(parents=True, exist_ok=True)
    for old in LEANDIR.glob('*.lean'):
        old.unlink()
    em = Emitter()
    em.emit(tree, '[]', 'root')
    em.flush()
    # module i imports module i-1 (the later parts use the earlier theorems)
    for mi, (lines, n) in enumerate(em.mods):
        imp = ('public import Heilbronn.Six.HullModel\npublic import Heilbronn.Common.DataReader\n'
               if mi == 0 else 'public import Heilbronn.Six.HullTrees.Part%d\n' % (mi - 1))
        (LEANDIR / ('Part%d.lean' % mi)).write_text(HEAD % (imp, mi, n) + ''.join(lines) +
                                                     'end Heilbronn.SixBoundaryHull.Trees\n')
    (ROOT / 'Heilbronn' / 'Six' / 'HullTrees.lean').write_text(
        'module\n\npublic import Heilbronn.Six.HullTrees.Part%d\n\n'
        '/-! # Exact-hull cover (generated by `scripts/six_hull/export.py`)\n\n'
        '`Trees.root_ok : checkTree spec [] Trees.root = true`, assembled in the parts. -/\n'
        % (len(em.mods) - 1))
    print('modules', [(mi, n) for mi, (_, n) in enumerate(em.mods)])


if __name__ == '__main__':
    main()
