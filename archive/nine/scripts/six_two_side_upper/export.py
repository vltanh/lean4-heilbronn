#!/usr/bin/env python3
"""Export the two-side-upper certificate package (docs/proof/nine/six_boundary_two_side_upper_certificates.json).

1. Builds the word cover of model.py (splits on the radial word entries of Q, vertex order
   ORDER, branches filtered by consistency with the known signs), checks that its leaves are
   exactly the 82 words of the hand checker.
2. Maps each non-sharp word to a certificate (the checker's reuse rule `applies`), converts the
   certificate to integer weights on the Lean atom list `factors ++ costs ++ plains`
   (certlib.integer_weights; a q-term uses the strengthened cost when its reference bound is 3s,
   the plain cost otherwise), and rechecks it at every leaf where it is used.
3. Writes data/nine/six_two_side_upper/cNN.txt and the Lean modules
   Heilbronn/Nine/SixBoundary/TwoSideUpperTrees/ChunkN.lean (depth-2 subtrees, kernel-checked) and
   Heilbronn/Nine/SixBoundary/TwoSideUpperTrees.lean (the assembly of the root check).
"""
import json
import sys
from fractions import Fraction as F
from pathlib import Path

HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[2]
sys.path.insert(0, str(HERE))
sys.path.insert(0, str(ROOT / 'docs' / 'proof' / 'nine'))
sys.path.insert(0, str(ROOT / 'scripts'))
import model as M  # noqa: E402
import certlib  # noqa: E402
import check_six_boundary_two_side_upper as Ck  # noqa: E402

DATA = ROOT / 'data' / 'nine' / 'six_two_side_upper'
LEAN = ROOT / 'Heilbronn' / 'Nine' / 'SixBoundary' / 'TwoSideUpperTrees'
ORDER = [7, 2, 5, 0, 1, 3, 4, 6]
SHARP = (4, 3, 3, 2, 3, 4, 5, 4)
CHUNK_TERMS = 2600


def branches(fs, i):
    tb = M.base() + fs
    out = []
    for val in range(1, 7):
        b = M.branch(i, val)
        if all(M.lookup(tb, f[0]) in (None, f[1]) for f in b):
            out.append((val, b))
    return out


def build(fs, assigned):
    """A tree node: ('node', i, [(val, facts, child)]) or ('word', word)."""
    if len(assigned) == 8:
        return ('word', tuple(assigned[i] for i in range(8)))
    i = ORDER[len(assigned)]
    kids = []
    for val, b in branches(fs, i):
        a = dict(assigned)
        a[i] = val
        kids.append((val, b, build(fs + b, a)))
    return ('node', i, kids)


def leaves(t, fs=()):
    if t[0] == 'word':
        yield t[1], list(fs)
    else:
        for val, b, c in t[2]:
            yield from leaves(c, tuple(fs) + tuple(b))


def cert_terms(cert, fs):
    specs = Ck.cost_specs(tuple(cert['word']))
    atoms = M.atoms(fs)
    nf = len(M.factors())
    terms = []
    for term in cert['terms']:
        if term[0] == 'f':
            terms.append((F(term[2], cert['scale']), list(term[1])))
        else:
            _, i, j, w = term
            idx = nf + i if specs[i][1] == 3 * M.S else nf + 84 + i
            terms.append((F(w, cert['scale']), [idx] + ([j] if j >= 0 else [])))
    return atoms, terms


def main():
    data = json.loads((ROOT / 'docs' / 'proof' / 'nine' / 'six_boundary_two_side_upper_certificates.json').read_text())
    certs = data['certificates']
    tree = build([], {})
    lv = list(leaves(tree))
    words = [w for w, _ in lv]
    assert sorted(words) == sorted(Ck.words()), 'leaf words differ from the checker'
    # every leaf: the strengthened bounds and signs agree with the checker
    for w, fs in lv:
        tb = M.base() + fs
        specs = Ck.cost_specs(w)
        for t, (sg, bound) in zip(M.LEX, specs):
            s2 = M.lookup(tb, t)
            assert s2 is not None and (1 if s2 else -1) == sg, (w, t)
            assert M.bnd(len(M.inside_list(tb, [8], (t, s2)))) == bound, (w, t)
    by_word = {tuple(c['word']): n for n, c in enumerate(certs)}
    assign = {}
    for w in words:
        if w == SHARP:
            continue
        if w in by_word:
            assign[w] = by_word[w]
        else:
            cands = [n for n, c in enumerate(certs) if Ck.applies(c, w)]
            assert cands, w
            assign[w] = cands[0]
    DATA.mkdir(parents=True, exist_ok=True)
    weights = {}
    for n, c in enumerate(certs):
        fs = dict(lv)[tuple(c['word'])]
        atoms, terms = cert_terms(c, fs)
        W = certlib.integer_weights(atoms, terms)
        assert certlib.check(atoms, W), n
        weights[n] = W
        certlib.write_terms(DATA / ('c%02d.txt' % n), W)
    for w, fs in lv:
        if w == SHARP:
            continue
        n = assign[w]
        atoms = M.atoms(fs)
        assert certlib.check(atoms, weights[n]), ('reuse', w, n)
    print('certificates: %d, leaves: %d, terms per leaf total: %d' % (
        len(certs), len(lv), sum(len(weights[assign[w]]) for w in words if w != SHARP)))
    return tree, assign, weights


def lean_tree(t, assign):
    if t[0] == 'word':
        if t[1] == SHARP:
            return '.closed 1'
        return '.cert (term_rows%% "../../../../data/nine/six_two_side_upper/c%02d.txt")' % assign[t[1]]
    return '.node (.vertex %d) [%s]' % (t[1], ', '.join(lean_tree(c, assign) for _, _, c in t[2]))


def terms_of(t, assign, weights):
    if t[0] == 'word':
        return 0 if t[1] == SHARP else len(weights[assign[t[1]]])
    return sum(terms_of(c, assign, weights) for _, _, c in t[2])


def facts_lean(path):
    s = '[]'
    for (i, val) in path:
        s = '(%s ++ branchFacts %d %d)' % (s, i, val)
    return s


HEADER = '''module

public import Heilbronn.Nine.SixBoundary.TwoSideUpperModel
public import Heilbronn.Common.DataReader

/-! # Two-side-upper cover, chunk %d (generated by `scripts/nine/six_two_side_upper/export.py`)

Depth-two subtrees of the word cover of `docs/proof/nine/six_boundary_two_side_upper_certificates.json`
(%d certificate terms), checked by the kernel. -/

@[expose] public section

namespace Heilbronn.Nine.SixBoundaryTwoSideUpper.Trees

open Cover Model

'''


def write_lean(tree, assign, weights):
    LEAN.mkdir(parents=True, exist_ok=True)
    subs = []  # (name, path, subtree)
    i0 = tree[1]
    for v0, b0, c0 in tree[2]:
        i1 = c0[1]
        for v1, b1, c1 in c0[2]:
            subs.append(('sub_%d_%d' % (v0, v1), [(i0, v0), (i1, v1)], c1))
    chunks = []
    cur, cur_terms = [], 0
    for sub in subs:
        n = terms_of(sub[2], assign, weights)
        if cur and cur_terms + n > CHUNK_TERMS:
            chunks.append((cur, cur_terms))
            cur, cur_terms = [], 0
        cur.append(sub)
        cur_terms += n
    if cur:
        chunks.append((cur, cur_terms))
    for ci, (subs_c, nterms) in enumerate(chunks):
        out = [HEADER % (ci, nterms)]
        for name, path, t in subs_c:
            out.append('/-- The subtree below `%s`. -/\nnoncomputable def %s : Cover.Tree Split :=\n  %s\n\n'
                       % (' ∧ '.join('r_%d = %d' % p for p in path), name, lean_tree(t, assign)))
            out.append('theorem %s_ok : checkTree spec %s %s = true := by\n  tree_decide\n\n'
                       % (name, facts_lean(path), name))
        out.append('end Heilbronn.Nine.SixBoundaryTwoSideUpper.Trees\n')
        (LEAN / ('Chunk%d.lean' % ci)).write_text(''.join(out))
    # assembly
    imports = ''.join('public import Heilbronn.Nine.SixBoundary.TwoSideUpperTrees.Chunk%d\n' % ci
                      for ci in range(len(chunks)))
    lines = ['module\n\n', imports,
             '\n/-! # Two-side-upper cover: the root check (generated by '
             '`scripts/nine/six_two_side_upper/export.py`)\n\n'
             'The word cover of `Q`, split first at `V_%d`, then at `V_%d`; its depth-two '
             'subtrees are checked in the chunks. -/\n\n' % (tree[1], tree[2][0][2][1]),
             '@[expose] public section\n\nnamespace Heilbronn.Nine.SixBoundaryTwoSideUpper.Trees\n\n'
             'open Cover Model\n\n']
    # the tree
    kids0 = []
    for v0, b0, c0 in tree[2]:
        kids1 = ', '.join('sub_%d_%d' % (v0, v1) for v1, _, _ in c0[2])
        kids0.append('.node (.vertex %d) [%s]' % (c0[1], kids1))
    lines.append('/-- The complete word cover. -/\nnoncomputable def tree : Cover.Tree Split :=\n'
                 '  .node (.vertex %d) [%s]\n\n' % (tree[1], ',\n    '.join(kids0)))
    lines.append('theorem branches_root : branches [] (.vertex %d) = [%s] := by decide +kernel\n\n'
                 % (tree[1], ', '.join('branchFacts %d %d' % (tree[1], v0) for v0, _, _ in tree[2])))
    for v0, b0, c0 in tree[2]:
        lines.append('theorem branches_%d : branches ([] ++ branchFacts %d %d) (.vertex %d) = [%s] := by\n'
                     '  decide +kernel\n\n' % (v0, tree[1], v0, c0[1],
                                              ', '.join('branchFacts %d %d' % (c0[1], v1)
                                                        for v1, _, _ in c0[2])))
    lines.append('theorem tree_ok : checkTree spec [] tree = true := by\n'
                 '  rw [tree, checkTree_node, show spec.branches = branches from rfl, branches_root]\n'
                 '  simp only [checkChildren_cons, checkChildren_nil, Bool.and_true, Bool.and_eq_true]\n'
                 '  refine ⟨%s⟩\n' % ', '.join('?_' for _ in tree[2]))
    for v0, b0, c0 in tree[2]:
        oks = ', '.join('sub_%d_%d_ok' % (v0, v1) for v1, _, _ in c0[2])
        lines.append('  · rw [checkTree_node, show spec.branches = branches from rfl, branches_%d]\n'
                     '    simp only [checkChildren_cons, checkChildren_nil, Bool.and_true, '
                     'Bool.and_eq_true]\n'
                     '    exact ⟨%s⟩\n' % (v0, oks))
    lines.append('\nend Heilbronn.Nine.SixBoundaryTwoSideUpper.Trees\n')
    (ROOT / 'Heilbronn' / 'Nine' / 'SixBoundary' / 'TwoSideUpperTrees.lean').write_text(''.join(lines))
    print('chunks:', [(len(c), n) for c, n in chunks])


if __name__ == '__main__':
    tree, assign, weights = main()
    write_lean(tree, assign, weights)
