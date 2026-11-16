#!/usr/bin/env python3
"""Export docs/proof/nine/six_boundary_two_top_convex_certificates.json to the radial cover of
Heilbronn/Nine/SixBoundary/TwoTopConvexModel.lean and Heilbronn/Nine/SixBoundary/TwoTopConvexTrees/*.lean.

Points 0..8 = A, B, C, D, E, G, F, H, O; variables 0..11 = a, h, b, c, d, f, ex, ey, gx, gy, x, y.
"""
import json
import sys
from fractions import Fraction as F
from pathlib import Path

HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[2]
sys.path.insert(0, str(ROOT / 'scripts'))
sys.path.insert(0, str(ROOT / 'scripts' / 'nine' / 'six_radial'))
sys.path.insert(0, str(ROOT / 'docs' / 'proof' / 'nine'))
import certlib  # noqa: E402
import radial as R  # noqa: E402
import export_common as X  # noqa: E402
from certlib import v, k, esarea  # noqa: E402
import check_six_boundary_two_top_convex as Ck  # noqa: E402

N0 = R.N0
S = F(8, 73)
ONE = N0(1)
PT = {0: (N0(0), v(0)), 1: (v(2), N0(0)), 2: (v(3), N0(0)), 3: (ONE, v(4)), 4: (v(6), v(7)),
      5: (v(8), v(9)), 6: (v(5), ONE), 7: (N0(0), v(1)), 8: (v(10), v(11))}


def pt(i):
    return PT.get(i, (N0(0), N0(0)))


a, h, b, c, d, f, ex, ey, gx, gy, x, y = [v(i) for i in range(12)]
FACTORS = [a - k(F(1, 8)), b - k(F(1, 8)), h - k(4 * S), c - k(4 * S), ONE - h, ONE - c,
           d - a, h - d, f - b, c - f, d - f, d - k(F(1, 8)), f - k(F(1, 8)),
           k(F(255, 511)) - d, k(F(17, 50)) - f, h - a - k(50 * S / 17), c - b - k(511 * S / 255),
           ex - f - k(F(64, 511)), ey - d - k(F(64, 511)), ONE - ex, ONE - ey,
           gx - f - k(F(64, 511)), gy - d - k(F(64, 511)), ONE - gx, ONE - gy,
           ex - gx - k(S), gy - ey - k(S), x - k(S), k(1 - S) - x, y - k(S), k(1 - S) - y]
BASE = [(tt, True) for tt in R.lex_triples(8)] + [((3, 6, 8), True)]
W = ONE - (h - d) * (c - f)
HC = h * c
DELTA = (ONE - d) * (ONE - f)
EARS = [(0, 1, 7), (0, 1, 2), (1, 2, 3), (2, 3, 6), (3, 6, 7), (0, 6, 7)]


def bnd(m):
    return S if m == 0 else 3 * S


def area(tr):
    return esarea(pt(tr[0]), pt(tr[1]), pt(tr[2]))


def extra(tb):
    sg = R.lookup(tb, (2, 7, 8))
    if sg is False:
        hw = [HC - k(4 * S), W - k(4 * S)]
    elif sg is True:
        hw = [HC - k(F(7, 11)), W - k(2 * S)]
    else:
        hw = [k(0), k(0)]
    return [DELTA - k(4 * S)] + hw + [k(F(13, 16)) - area(tr) for tr in EARS]


PKG = R.Pkg(8, 9, pt, FACTORS, BASE, bnd, [8], extra)
ORDER = [7, 1, 3, 4, 5, 0, 2, 6]
BR = {'l_low': k(F(11, 20)) - (h - a), 'l_high': h - a - k(F(2, 3)),
      'm_low': k(F(11, 20)) - (gx - f), 'g_high': f - k(F(1, 4)), 'c_low': k(F(2, 3)) - c,
      'k_low': h - gy}
RES31 = ['l_low', 'l_high', 'm_low', 'g_high', 'c_low', 'k_low']


def cert_weights(cert, fs, cut_pos):
    """cut_pos: hand branch name -> index in the cut facts of fs."""
    atoms = PKG.atoms(fs)
    off = PKG.offsets(fs)
    nf = len(FACTORS)
    br = [cert['branch']] if cert['branch'] != 'whole' else []

    def fmap(i):
        return i if i < nf else off['c'] + cut_pos[br[i - nf]]

    def qmap(qi):
        return off['x'] + qi if qi < 9 else off['t2'] + (qi - 9)
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
    data = json.loads((ROOT / 'docs' / 'proof' / 'nine' / 'six_boundary_two_top_convex_certificates.json').read_text())
    certs = {(c['index'], c['branch']): c for c in data['certificates']}
    tree = PKG.enum_tree(8, ORDER)
    words = sorted(R.tree_words(tree))
    assert tuple(words) == Ck.words(), 'enumeration differs from the checker'
    print('words', len(words), 'enumeration nodes', R.count_nodes(tree))
    DATA = ROOT / 'data' / 'nine' / 'six_two_top_convex'
    DATA.mkdir(parents=True, exist_ok=True)
    sizes = {}
    leaves = []

    def store(name, Wt):
        path = DATA / (name + '.txt')
        certlib.write_terms(path, Wt)
        rel = '../../../../data/nine/six_two_top_convex/%s.txt' % name
        sizes[rel] = len(Wt)
        return rel
    for i, wd in enumerate(words):
        wf = [('s', fct) for fct in R.word_facts(8, 8, list(wd))]
        facts = 'leafFacts %d' % i
        if i == 31:
            for j, b in enumerate(RES31):
                fs = wf + [('e', BR[b])]
                Wt = cert_weights(certs[(i, b)], fs, {b: 0})
                rel = store('w%d_%s' % (i, b), Wt)
                leaves.append(('res%d_%d' % (i, j), 'leafFacts %d ++ [Sum.inr (res%d.getD %d 0)]' % (i, i, j),
                               ('cert', rel), 'Word %d, branch `%s`.' % (i, b)))
            continue
        if i == 66:
            fs1 = wf + [('e', cut_atom(x, F(1, 2), True))]
            W1 = cert_weights(certs[(i, 'x_low')], fs1, {'x_low': 0})
            fs2 = wf + [('e', cut_atom(x, F(1, 2), False))]
            W2 = cert_weights(certs[(i, 'x_high')], fs2, {'x_high': 0})
            t = ('node', '.cut (v 10) (1 / 2)', [('cert', store('w%d_xl' % i, W1)),
                                                 ('cert', store('w%d_xh' % i, W2))])
            leaves.append(('tree%d' % i, facts, t, 'Word %d `%s`, split on `x` at `1/2`.' % (i, list(wd))))
            continue
        Wt = cert_weights(certs[(i, 'whole')], wf, {})
        leaves.append(('tree%d' % i, facts, ('cert', store('w%d' % i, Wt)), 'Word %d `%s`.' % (i, list(wd))))
    print('total terms', sum(sizes.values()))
    return words, tree, leaves, sizes


HEAD = '''module

public import Heilbronn.Nine.SixBoundary.RadialCover

/-! # The certificate model of the convex two-top package (`docs/proof/nine/SIX_BOUNDARY_TWO_TOP_CONVEX.md`)

Generated by `scripts/nine/six_two_top_convex/export.py` from
`docs/proof/nine/six_boundary_two_top_convex_certificates.json` (checker
`docs/proof/nine/check_six_boundary_two_top_convex.py`), in the generic form `Heilbronn.Nine.SixRadial`:

* points `0, …, 8` are `A, B, C, D, E, G, F, H, O` (the hull octagon (3) and `O`); variables
  `0, …, 11` are `a, h, b, c, d, f, e_x, e_y, g_x, g_y, x, y`;
* `factors`: the 31 affine factors; `base`: the 56 hull triangles and `[DFO] > 0` (`w₃ ≥ 3`);
  `extra`: the nine costs `δ - 4σ`, `hc - 4σ | 7/11`, `W - 4σ | 2σ` (by the sign of `[CHO]`)
  and `13/16 - [ear]`;
* `Heilbronn.Nine.SixBoundary.TwoTopConvexEnum`: the enumeration of the 94 radial words of `O`;
* the certificates (one per theorem) are in `Heilbronn.Nine.SixBoundary.TwoTopConvexTrees*`.
-/

@[expose] public section

namespace Heilbronn.Nine.SixBoundaryTwoTopConvex.Model

open Cert Cert.Expr Cover SixRadial

/-- The nine points as expressions. -/
def pt : ℕ → Expr × Expr
  | 0 => (0, v 0)
  | 1 => (v 2, 0)
  | 2 => (v 3, 0)
  | 3 => (1, v 4)
  | 4 => (v 6, v 7)
  | 5 => (v 8, v 9)
  | 6 => (v 5, 1)
  | 7 => (0, v 1)
  | 8 => (v 10, v 11)
  | _ => (0, 0)

/-- The 31 affine factors. -/
def factors : List Expr :=
  [%s]

/-- The hull triangles (positive) and `[DFO] > 0`. -/
def base : List SFact := (lexTriples 8).map (fun t => (t, true)) ++ [((3, 6, 8), true)]

/-- The occupancy bounds `σ`, `3σ`. -/
def bnd (m : ℕ) : ℚ := if m = 0 then 8 / 73 else 24 / 73

/-- `W = [HCDF] = 1 - (h-d)(c-f)`. -/
def eW : Expr := 1 - (v 1 - v 4) * (v 3 - v 5)

/-- `hc`. -/
def eHC : Expr := v 1 * v 3

/-- `δ = (1-d)(1-f)`. -/
def eDelta : Expr := (1 - v 4) * (1 - v 5)

/-- The doubled area of the triangle `t`. -/
def tri (t : ℕ × ℕ × ℕ) : Expr := esarea (pt t.1) (pt t.2.1) (pt t.2.2)

/-- The nine costs: `δ - 4σ`, `hc - 4σ | 7/11`, `W - 4σ | 2σ` (by the sign of `[CHO]`),
`13/16 - [ear]`. -/
def extra (tb : List SFact) : List Expr :=
  [eDelta - k (32 / 73)] ++
  (match lookup tb (2, 7, 8) with
    | some false => [eHC - k (32 / 73), eW - k (32 / 73)]
    | some true => [eHC - k (7 / 11), eW - k (16 / 73)]
    | none => [k 0, k 0]) ++
  [(0, 1, 7), (0, 1, 2), (1, 2, 3), (2, 3, 6), (3, 6, 7), (0, 6, 7)].map fun t => k (13 / 16) - tri t

/-- The package. -/
def pkg : Pkg := ⟨8, 9, pt, factors, base, bnd, [8], extra⟩

/-- The 94 words of `O`, in lexicographic order. -/
def words : List (List ℕ) :=
  %s

/-- The initial facts of the word `words[i]`. -/
def leafFacts (i : ℕ) : List Fact := (wordFacts 8 8 (words.getD i [])).map Sum.inl

/-- The excluded branches of word 31: `h-a ≤ 11/20`, `h-a ≥ 2/3`, `g_x-f ≤ 11/20`, `f ≥ 1/4`,
`c ≤ 2/3`, `g_y ≤ h` (as nonnegative expressions). -/
def res31 : List Expr :=
  [k (11 / 20) - (v 1 - v 0), v 1 - v 0 - k (2 / 3), k (11 / 20) - (v 8 - v 5), v 5 - k (1 / 4),
    k (2 / 3) - v 3, v 1 - v 9]

end Heilbronn.Nine.SixBoundaryTwoTopConvex.Model
'''


def write_lean(words, tree, leaves, sizes):
    index = {wd: i for i, wd in enumerate(words)}
    lf = ',\n    '.join(certlib.lean(e) for e in FACTORS)
    (ROOT / 'Heilbronn' / 'Nine' / 'SixBoundary' / 'TwoTopConvexModel.lean').write_text(HEAD % (lf, R.lean_words(words)))
    ns = 'Heilbronn.Nine.SixBoundaryTwoTopConvex.Model'
    (ROOT / 'Heilbronn' / 'Nine' / 'SixBoundary' / 'TwoTopConvexEnum.lean').write_text(R.lean_enum_module(
        tree, index, 8, 8, 'pkg', 'words', ns,
        'Convex two-top: the enumeration of the radial words of `O`',
        'public import Heilbronn.Nine.SixBoundary.TwoTopConvexModel\n'))
    chunks = X.write_chunks(leaves, sizes, ROOT / 'Heilbronn' / 'Nine' / 'SixBoundary' / 'TwoTopConvexTrees',
                            'Heilbronn.Nine.SixBoundary.TwoTopConvexModel', ns, 'Convex two-top certificates',
                            'Chunk')
    imports = ''.join('public import Heilbronn.Nine.SixBoundary.TwoTopConvexTrees.Chunk%d\n' % ci
                      for ci in range(len(chunks)))
    n = len(words)
    out = ['module\n\n', imports,
           '\n/-! # Convex two-top certificates: the assembly (generated) -/\n\n'
           '@[expose] public section\n\nnamespace %s\n\nopen Cert Cert.Expr Cover SixRadial\n\n' % ns]
    out.append('theorem all_ok (i : ℕ) (hi : i < %d) (h31 : i ≠ 31) :\n'
               '    ∃ T, checkTree (pkg.spec Pkg.noClosed) (leafFacts i) T = true := by\n'
               '  interval_cases i\n' % n)
    for i in range(n):
        out.append('  · exact absurd rfl h31\n' if i == 31 else '  · exact ⟨_, tree%d_ok⟩\n' % i)
    out.append('\ntheorem res31_ok (j : ℕ) (hj : j < 6) :\n'
               '    ∃ T, checkTree (pkg.spec Pkg.noClosed) (leafFacts 31 ++ [Sum.inr (res31.getD j 0)]) T = true := by\n'
               '  interval_cases j\n')
    for j in range(6):
        out.append('  · exact ⟨_, res31_%d_ok⟩\n' % j)
    out.append('\nend %s\n' % ns)
    (ROOT / 'Heilbronn' / 'Nine' / 'SixBoundary' / 'TwoTopConvexTrees.lean').write_text(''.join(out))
    print('chunks', [(len(cc), n) for cc, n in chunks])


if __name__ == '__main__':
    write_lean(*main())
