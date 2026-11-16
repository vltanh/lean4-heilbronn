#!/usr/bin/env python3
"""Export hand/six_boundary_side_opposite_certificates.json to the radial cover of
Heilbronn/Six/SideOppositeModel.lean and Heilbronn/Six/SideOppositeTrees/*.lean.

Points 0..8 = A, B, C, X, D, Y, F, H, Q; variables 0..11 = a, h, b, c, d, f, x, y, z, w, r, t.
"""
import json
import sys
from fractions import Fraction as F
from pathlib import Path

HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[1]
sys.path.insert(0, str(ROOT / 'scripts'))
sys.path.insert(0, str(ROOT / 'scripts' / 'six_radial'))
sys.path.insert(0, str(ROOT / 'hand'))
import certlib  # noqa: E402
import radial as R  # noqa: E402
import export_common as X  # noqa: E402
from certlib import v, k, esarea  # noqa: E402
import check_six_boundary_side_opposite as Ck  # noqa: E402

N0 = R.N0
S = F(8, 73)
ONE = N0(1)
PT = {0: (N0(0), v(0)), 1: (v(2), N0(0)), 2: (v(3), N0(0)), 3: (v(6), v(7)), 4: (ONE, v(4)),
      5: (v(8), v(9)), 6: (v(5), ONE), 7: (N0(0), v(1)), 8: (v(10), v(11))}


def pt(i):
    return PT.get(i, (N0(0), N0(0)))


a, h, b, c, d, f, x, y, z, w, r, t = [v(i) for i in range(12)]
FACTORS = [a - k(F(1, 7)), b - k(F(1, 8)), h - k(F(1, 2)), c - k(4 * S), d - k(F(1, 2)), ONE - h,
           k(1 - S) - c, k(1 - S) - d, k(1 - S) - f, d - a, h - d, f - b, c - f,
           h - a - k(S), c - b - k(S), ONE - x, x - c - k(S), y - k(F(1, 7)), d - y - k(F(7, 36)),
           ONE - z, ONE - w, z - f - k(S), w - d - k(S), r - k(S), k(1 - S) - r, t - k(S),
           k(1 - S) - t, r - k(F(1, 8)), t - k(F(1, 7)), z - f - k(2 * S), w - d - k(F(1, 8)),
           k(F(29, 64)) - b]
BASE = [(tt, True) for tt in R.lex_triples(8)] + [((2, 4, 8), True), ((4, 6, 8), True),
                                                   ((1, 3, 8), True), ((1, 7, 8), False)]
W = ONE - (h - d) * (c - f)
HC = h * c
EARS = [(0, 1, 7), (0, 1, 2), (1, 2, 4), (2, 4, 6), (4, 6, 7), (0, 6, 7)]


def bnd(m):
    return S if m == 0 else 3 * S


def area(tr):
    return esarea(pt(tr[0]), pt(tr[1]), pt(tr[2]))


def extra(tb):
    sg = R.lookup(tb, (2, 7, 8))
    if sg is False:
        hw = [W - k(4 * S), HC - k(4 * S)]
    elif sg is True:
        hw = [W - k(2 * S), HC - k(F(7, 11))]
    else:
        hw = [k(0), k(0)]
    return hw + [k(3 * S) - area((0, 1, 7)), k(3 * S) - area((1, 2, 3))] + \
        [k(F(13, 16)) - area(tr) for tr in EARS]


PKG = R.Pkg(8, 9, pt, FACTORS, BASE, bnd, [8], extra)
ORDER = [3, 7, 4, 0, 6, 2, 5, 1]
BR = {'x_low': z - x, 'x_high': x - z, 'y_low': h - w, 'y_high': w - h,
      'l_low': k(F(11, 20)) - (h - a), 'l_high': h - a - k(F(2, 3)),
      'm_low': k(F(11, 20)) - (z - f), 'g_high': f - k(F(1, 4)), 'c_low': k(F(2, 3)) - c}
CUT_X = ('v 6 - v 8', 0)   # e = x - z, q = 0: branches [k 0 - e] (x_low), [e - k 0] (x_high)
CUT_Y = ('v 9 - v 1', 0)   # e = w - h
RES23 = ['x_low', 'y_low', 'l_low', 'l_high', 'm_low', 'g_high', 'c_low']
RES54 = ['x_low', 'y_low']


def cert_weights(cert, fs, cut_pos):
    """cut_pos: hand branch name -> index in the cut facts of fs."""
    atoms = PKG.atoms(fs)
    off = PKG.offsets(fs)
    nf = len(FACTORS)
    br = list(cert['branches']) if cert['branches'] != ['whole'] else []

    def fmap(i):
        return i if i < nf else off['c'] + cut_pos[br[i - nf]]

    def qmap(qi):
        return off['t2'] + qi if qi < 84 else off['x'] + (qi - 84)
    terms = []
    for term in cert['terms']:
        wt = F(term[-1], cert['scale'])
        if term[0] == 'f':
            terms.append((wt, [fmap(i) for i in term[1]]))
        elif term[0] == 'q':
            terms.append((wt, [qmap(term[1])] + ([fmap(term[2])] if term[2] >= 0 else [])))
        else:
            terms.append((wt, [qmap(term[1]), qmap(term[2])]))
    W_ = certlib.integer_weights(atoms, terms)
    assert certlib.check(atoms, W_), (cert['index'], cert['branches'])
    return W_


def cut_atom(e, q, first):
    return (k(q) - e) if first else (e - k(q))


def main():
    data = json.loads((ROOT / 'hand' / 'six_boundary_side_opposite_certificates.json').read_text())
    certs = {(c['index'], tuple(c['branches'])): c for c in data['certificates']}
    tree = PKG.enum_tree(8, ORDER)
    words = sorted(R.tree_words(tree))
    assert tuple(words) == Ck.words(), 'enumeration differs from the checker'
    print('words', len(words), 'enumeration nodes', R.count_nodes(tree))
    DATA = ROOT / 'data' / 'six_side_opposite'
    DATA.mkdir(parents=True, exist_ok=True)
    sizes = {}
    leaves = []

    def store(name, Wt):
        path = DATA / (name + '.txt')
        certlib.write_terms(path, Wt)
        rel = '../../../data/six_side_opposite/%s.txt' % name
        sizes[rel] = len(Wt)
        return rel
    ex, ey = x - z, w - h
    for i, wd in enumerate(words):
        wf = [('s', fct) for fct in R.word_facts(8, 8, list(wd))]
        facts = 'leafFacts %d' % i
        if i in (23, 54):
            for j, b in enumerate(RES23 if i == 23 else RES54):
                fs = wf + [('e', BR[b])]
                Wt = cert_weights(certs[(i, (b,))], fs, {b: 0})
                rel = store('w%d_%s' % (i, b), Wt)
                leaves.append(('res%d_%d' % (i, j), 'leafFacts %d ++ [Sum.inr (res%d.getD %d 0)]' % (i, i, j),
                               ('cert', rel), 'Word %d, branch `%s`.' % (i, b)))
            continue
        if i in (69, 84):
            fs1 = wf + [('e', cut_atom(ex, 0, True))]
            W1 = cert_weights(certs[(i, ('x_low',))], fs1, {'x_low': 0})
            fs2 = wf + [('e', cut_atom(ex, 0, False)), ('e', cut_atom(ey, 0, True))]
            W2 = cert_weights(certs[(i, ('y_low',))], fs2, {'y_low': 1})
            fs3 = wf + [('e', cut_atom(ex, 0, False)), ('e', cut_atom(ey, 0, False))]
            W3 = cert_weights(certs[(i, ('x_high', 'y_high'))], fs3, {'x_high': 0, 'y_high': 1})
            t = ('node', '.cut (v 6 - v 8) 0', [('cert', store('w%d_xl' % i, W1)),
                 ('node', '.cut (v 9 - v 1) 0', [('cert', store('w%d_yl' % i, W2)),
                                                ('cert', store('w%d_j' % i, W3))])])
            leaves.append(('tree%d' % i, facts, t, 'Word %d `%s`, split on `x - z`, `w - h`.' % (i, list(wd))))
            continue
        fs = wf
        Wt = cert_weights(certs[(i, ('whole',))], fs, {})
        leaves.append(('tree%d' % i, facts, ('cert', store('w%d' % i, Wt)), 'Word %d `%s`.' % (i, list(wd))))
    print('total terms', sum(sizes.values()))
    return words, tree, leaves, sizes


HEAD = '''module

public import Heilbronn.Six.RadialCover

/-! # The certificate model of the side/opposite package (`hand/SIX_BOUNDARY_SIDE_OPPOSITE.md`)

Generated by `scripts/six_side_opposite/export.py` from
`hand/six_boundary_side_opposite_certificates.json` (checker
`hand/check_six_boundary_side_opposite.py`), in the generic form `Heilbronn.SixRadial`:

* points `0, …, 8` are `A, B, C, X, D, Y, F, H, Q` (the hull octagon (3) and `Q`); variables
  `0, …, 11` are `a, h, b, c, d, f, x, y, z, w, r, t`;
* `factors`: the 32 affine factors (12); `base`: the 56 hull triangles and the four tests
  `[CDQ] > 0`, `[DFQ] > 0`, `[BXQ] > 0`, `[BHQ] < 0` (`r₂, r₄ ≥ 2`, `2 ≤ r₁ ≤ 5`);
  `extra`: the ten costs (16) (`W`, `hc` by the side of `HC`, the empty `ABH`, `BCX`, the ears);
* `Heilbronn.Six.SideOppositeEnum`: the enumeration of the 97 radial words of `Q`;
* the certificates (one per theorem) are in `Heilbronn.Six.SideOppositeTrees*`.
-/

@[expose] public section

namespace Heilbronn.SixBoundarySideOpposite.Model

open Cert Cert.Expr Cover SixRadial

/-- The nine points as expressions. -/
def pt : ℕ → Expr × Expr
  | 0 => (0, v 0)
  | 1 => (v 2, 0)
  | 2 => (v 3, 0)
  | 3 => (v 6, v 7)
  | 4 => (1, v 4)
  | 5 => (v 8, v 9)
  | 6 => (v 5, 1)
  | 7 => (0, v 1)
  | 8 => (v 10, v 11)
  | _ => (0, 0)

/-- The 32 affine factors (12). -/
def factors : List Expr :=
  [%s]

/-- The hull triangles (positive) and the four tests of `Q`. -/
def base : List SFact :=
  (lexTriples 8).map (fun t => (t, true)) ++
    [((2, 4, 8), true), ((4, 6, 8), true), ((1, 3, 8), true), ((1, 7, 8), false)]

/-- The occupancy bounds `σ`, `3σ`. -/
def bnd (m : ℕ) : ℚ := if m = 0 then 8 / 73 else 24 / 73

/-- `W = [HCDF] = 1 - (h-d)(c-f)`. -/
def eW : Expr := 1 - (v 1 - v 4) * (v 3 - v 5)

/-- `hc`. -/
def eHC : Expr := v 1 * v 3

/-- The doubled area of the triangle `t`. -/
def tri (t : ℕ × ℕ × ℕ) : Expr := esarea (pt t.1) (pt t.2.1) (pt t.2.2)

/-- The ten costs (16): `W - 4σ | 2σ`, `hc - 4σ | 7/11` (by the sign of `[CHQ]`), `3σ - [ABH]`,
`3σ - [BCX]`, `13/16 - [ear]`. -/
def extra (tb : List SFact) : List Expr :=
  (match lookup tb (2, 7, 8) with
    | some false => [eW - k (32 / 73), eHC - k (32 / 73)]
    | some true => [eW - k (16 / 73), eHC - k (7 / 11)]
    | none => [k 0, k 0]) ++
  [k (24 / 73) - tri (0, 1, 7), k (24 / 73) - tri (1, 2, 3)] ++
  [(0, 1, 7), (0, 1, 2), (1, 2, 4), (2, 4, 6), (4, 6, 7), (0, 6, 7)].map fun t => k (13 / 16) - tri t

/-- The package. -/
def pkg : Pkg := ⟨8, 9, pt, factors, base, bnd, [8], extra⟩

/-- The 97 words of `Q`, in lexicographic order. -/
def words : List (List ℕ) :=
  %s

/-- The initial facts of the word `words[i]`. -/
def leafFacts (i : ℕ) : List Fact := (wordFacts 8 8 (words.getD i [])).map Sum.inl

/-- The excluded branches of word 23: `x ≤ z`, `w ≤ h`, `h-a ≤ 11/20`, `h-a ≥ 2/3`,
`z-f ≤ 11/20`, `f ≥ 1/4`, `c ≤ 2/3` (as nonnegative expressions). -/
def res23 : List Expr :=
  [v 8 - v 6, v 1 - v 9, k (11 / 20) - (v 1 - v 0), v 1 - v 0 - k (2 / 3), k (11 / 20) - (v 8 - v 5),
    v 5 - k (1 / 4), k (2 / 3) - v 3]

/-- The excluded branches of word 54: `x ≤ z`, `w ≤ h`. -/
def res54 : List Expr := [v 8 - v 6, v 1 - v 9]

end Heilbronn.SixBoundarySideOpposite.Model
'''


def write_lean(words, tree, leaves, sizes):
    index = {wd: i for i, wd in enumerate(words)}
    lf = ',\n    '.join(certlib.lean(e) for e in FACTORS)
    (ROOT / 'Heilbronn' / 'Six' / 'SideOppositeModel.lean').write_text(
        HEAD % (lf, R.lean_words(words)))
    (ROOT / 'Heilbronn' / 'Six' / 'SideOppositeEnum.lean').write_text(R.lean_enum_module(
        tree, index, 8, 8, 'pkg', 'words', 'Heilbronn.SixBoundarySideOpposite.Model',
        'Side/opposite: the enumeration of the radial words of `Q`',
        'public import Heilbronn.Six.SideOppositeModel\n'))
    ns = 'Heilbronn.SixBoundarySideOpposite.Model'
    chunks = X.write_chunks(leaves, sizes, ROOT / 'Heilbronn' / 'Six' / 'SideOppositeTrees',
                            'Heilbronn.Six.SideOppositeModel', ns,
                            'Side/opposite certificates', 'Chunk')
    imports = ''.join('public import Heilbronn.Six.SideOppositeTrees.Chunk%d\n' % ci
                      for ci in range(len(chunks)))
    names = {lfx[0] for lfx in leaves}
    out = ['module\n\n', imports,
           '\n/-! # Side/opposite certificates: the assembly (generated) -/\n\n'
           '@[expose] public section\n\nnamespace %s\n\nopen Cert Cert.Expr Cover SixRadial\n\n' % ns]
    out.append('theorem all_ok (i : ℕ) (hi : i < 97) (h23 : i ≠ 23) (h54 : i ≠ 54) :\n'
               '    ∃ T, checkTree (pkg.spec Pkg.noClosed) (leafFacts i) T = true := by\n'
               '  interval_cases i\n')
    for i in range(97):
        if i == 23:
            out.append('  · exact absurd rfl h23\n')
        elif i == 54:
            out.append('  · exact absurd rfl h54\n')
        else:
            out.append('  · exact ⟨_, tree%d_ok⟩\n' % i)
    for wi, n in ((23, 7), (54, 2)):
        out.append('\ntheorem res%d_ok (j : ℕ) (hj : j < %d) :\n'
                   '    ∃ T, checkTree (pkg.spec Pkg.noClosed) (leafFacts %d ++ [Sum.inr (res%d.getD j 0)]) T = true := by\n'
                   '  interval_cases j\n' % (wi, n, wi, wi))
        for j in range(n):
            out.append('  · exact ⟨_, res%d_%d_ok⟩\n' % (wi, j))
    out.append('\nend %s\n' % ns)
    (ROOT / 'Heilbronn' / 'Six' / 'SideOppositeTrees.lean').write_text(''.join(out))
    print('chunks', [(len(cc), n) for cc, n in chunks])


if __name__ == '__main__':
    write_lean(*main())
