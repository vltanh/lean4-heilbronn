#!/usr/bin/env python3
"""Export docs/proof/nine/six_boundary_two_top_triangular_certificates.json to the radial cover of
Heilbronn/Nine/SixBoundary/TwoTopTriangularModel.lean and Heilbronn/Nine/SixBoundary/TwoTopTriangularTrees/*.lean.

Points 0..8 = A, B, C, D, X, F, H, P, Q; variables 0..11 = a, h, b, c, d, f, xx, xy, px, py, qx, qy.
One leaf per terminal cell (260 word pairs; the cells 230 and 238 split on [CPQ], [BPQ]); the
reused certificates are re-indexed on the atoms of the target cell (weaker tiers, extra factors
by polynomial) and rechecked.
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
import check_six_boundary_two_top_triangular as Ck  # noqa: E402

N0 = R.N0
S, RHO = F(8, 73), F(49, 60)
ONE = N0(1)
PT = {0: (N0(0), v(0)), 1: (v(2), N0(0)), 2: (v(3), N0(0)), 3: (ONE, v(4)), 4: (v(6), v(7)),
      5: (v(5), ONE), 6: (N0(0), v(1)), 7: (v(8), v(9)), 8: (v(10), v(11))}


def pt(i):
    return PT.get(i, (N0(0), N0(0)))


a, h, b, c, d, f, xx, xy, px, py, qx, qy = [v(i) for i in range(12)]
FACTORS = [a - k(F(1, 8)), b - k(F(1, 8)), h - k(4 * S), c - k(4 * S), ONE - h, ONE - c,
           d - a, h - d, f - b, c - f, d - f, h - a - k(S), c - b - k(S),
           k(F(319, 511)) - d, k(F(3, 7)) - f, xx - f - k(F(192, 511)), xy - d - k(F(192, 511)),
           ONE - xx, ONE - xy, px - f - k(F(64, 511)), py - d - k(F(64, 511)), k(1 - S) - px,
           k(1 - S) - py, qx - k(S), qy - k(S), k(1 - S) - qx, k(1 - S) - qy]
LOWER = [h - k(F(7, 11)), c - k(F(7, 11)), c - qx - k(2 * S), h - qy - k(2 * S),
         k(1 - S) - qx - qy]
C230 = [k(F(11, 60)) - f, xx - f - k(RHO), xy - k(F(2234, 2745)), h - a - k(F(480, 803))]
HULL = [(t, True) for t in R.lex_triples(7)]
BASE = HULL + [((3, 4, 7), True), ((4, 5, 7), True), ((3, 5, 7), False), ((3, 5, 8), True)]
BASE_P = HULL + [((3, 4, 7), True), ((4, 5, 7), True), ((3, 5, 7), False)]
BASE_Q = HULL + [((3, 5, 8), True)]
W = ONE - (h - d) * (c - f)
HC = h * c
DELTA = (ONE - d) * (ONE - f)
EARS = [(0, 1, 6), (0, 1, 2), (1, 2, 3), (2, 3, 5), (3, 5, 6), (0, 5, 6)]


def bnd(m):
    return S if m == 0 else 3 * S if m == 1 else RHO


def area(tr):
    return esarea(pt(tr[0]), pt(tr[1]), pt(tr[2]))


def extra(tb):
    sg = R.lookup(tb, (2, 6, 8))
    tail = [W - k(4 * S)] if sg is False else [HC - k(F(7, 11))] if sg is True else [k(0)]
    return [HC - k(4 * S), W - k(2 * S), DELTA - k(3 * S)] + tail + \
        [k(F(13, 16)) - area(tr) for tr in EARS]


PKG = R.Pkg(7, 9, pt, FACTORS, BASE, bnd, [7, 8], extra)
PKG_P = R.Pkg(7, 8, pt, [], BASE_P, bnd, [7], lambda tb: [])
PKG_Q = R.Pkg(7, 9, pt, [], BASE_Q, bnd, [8], lambda tb: [])
ORDER_P = [3, 4, 5, 6, 0, 1, 2]
ORDER_Q = [4, 2, 6, 0, 3, 1, 5]
SPLITV = {230: 2, 238: 1}


def pair_facts(wp, wq):
    return [((vv, 7, 8), wp[vv] < wq[vv]) for vv in range(7) if wp[vv] != wq[vv]]


def poly(e):
    return certlib.rat_value_poly(e)


def cell_facts(wp, wq, ci):
    fs = [('s', x) for x in R.word_facts(7, 7, list(wp)) + R.word_facts(7, 8, list(wq)) +
          pair_facts(wp, wq)]
    if wq[6] < 3:
        fs += [('e', e) for e in LOWER]
    if ci == 230:
        fs += [('e', e) for e in C230]
    return fs


def handfac_poly(e):
    """polynomial of a checker factor (dict monomial->Fraction) in certlib keys"""
    out = {}
    for mono, cf in e.items():
        key = 0
        for vv in mono:
            key += certlib.BASE ** vv
        out[key] = out.get(key, 0) + cf
    return {kk: vv for kk, vv in out.items() if vv}


def convert(cert, ref_cell, fs):
    atoms = PKG.atoms(fs)
    off = PKG.offsets(fs)
    tb = PKG.table(fs)
    lexpos = {t: i for i, t in enumerate(PKG.lex)}
    ref_fac = Ck.factors(ref_cell)
    ref_spec = Ck.cost_specs(ref_cell)
    cuts = [e for tag, e in fs if tag == 'e']
    cut_polys = [poly(e) for e in cuts]
    nf = len(FACTORS)
    lower = R.lookup(tb, (2, 6, 8)) is True

    def fmap(i):
        if i < nf:
            return i
        p = handfac_poly(ref_fac[i])
        for j, cp in enumerate(cut_polys):
            if cp == p:
                return off['c'] + j
        raise KeyError(('factor', i))

    def qmap(qi):
        kind, tr, sg, bound = ref_spec[qi]
        if kind == 'hc':
            return off['x'] + (0 if bound == 4 * S else 3)
        if kind == 'W':
            return off['x'] + (1 if bound == 2 * S else 3)
        if kind == 'delta':
            return off['x'] + 2
        if sg == -1 and bound == -F(13, 16):
            return off['x'] + 4 + EARS.index(tr)
        my = R.lookup(tb, tr)
        assert my is not None and (1 if my else -1) == sg, (tr, sg)
        n = len(R.inside_list(tb, [7, 8], (tr, my)))
        if bound == bnd(n):
            return off['t2'] + lexpos[tr]
        if bound == S:
            return off['t0'] + lexpos[tr]
        if bound == 3 * S and n >= 2:
            return off['t1'] + lexpos[tr]
        raise KeyError(('cost', tr, bound, n))
    terms = []
    for term in cert['terms']:
        wt = F(term[-1], cert['scale'])
        if term[0] == 'f':
            terms.append((wt, [fmap(i) for i in term[1]]))
        else:
            terms.append((wt, [qmap(term[1])] + ([fmap(term[2])] if term[2] >= 0 else [])))
    Wt = certlib.integer_weights(atoms, terms)
    assert certlib.check(atoms, Wt), ref_cell
    # the extra costs actually used must be valid in the target cell
    return Wt


def main():
    data = json.loads((ROOT / 'docs' / 'proof' / 'nine' / 'six_boundary_two_top_triangular_certificates.json').read_text())
    certs = data['certificates']
    cover = data['cover']
    treeP = PKG_P.enum_tree(7, ORDER_P)
    treeQ = PKG_Q.enum_tree(8, ORDER_Q)
    wordsP = sorted(R.tree_words(treeP))
    wordsQ = sorted(R.tree_words(treeQ))
    aw = Ck.ALL_WORDS
    assert wordsP == [tuple(aw[i]) for i in Ck.CAP], wordsP
    assert wordsQ == [tuple(aw[i]) for i in Ck.INNER]
    print('P words', len(wordsP), R.count_nodes(treeP), 'Q words', len(wordsQ), R.count_nodes(treeQ))
    DATA = ROOT / 'data' / 'nine' / 'six_two_top_triangular'
    DATA.mkdir(parents=True, exist_ok=True)
    sizes = {}
    leaves = []
    cellidx = {cell: n for n, cell in enumerate(Ck.CELLS)}

    def store(name, Wt):
        certlib.write_terms(DATA / (name + '.txt'), Wt)
        rel = '../../../../data/nine/six_two_top_triangular/%s.txt' % name
        sizes[rel] = len(Wt)
        return rel
    for ci, (i, j) in enumerate(Ck.CASES):
        wp, wq = tuple(aw[i]), tuple(aw[j])
        ip, iq = wordsP.index(wp), wordsQ.index(wq)
        assert Ck.CASES[ci] == (Ck.CAP[ip], Ck.INNER[iq])
        fs0 = cell_facts(wp, wq, ci)
        if ci in SPLITV:
            vv = SPLITV[ci]
            kids = []
            for bits, sgn in ((0, False), (1, True)):
                cell = (ci, bits)
                cert = certs[cover[cellidx[cell]]]
                fs = fs0 + [('s', ((vv, 7, 8), sgn))]
                Wt = convert(cert, tuple(cert['cell']), fs)
                kids.append(('cert', store('c%d_%d' % (ci, bits), Wt)))
            t = ('node', '.tri %d 7 8' % vv, kids)
        else:
            cell = (ci, 0)
            cert = certs[cover[cellidx[cell]]]
            Wt = convert(cert, tuple(cert['cell']), fs0)
            t = ('cert', store('c%d' % ci, Wt))
        leaves.append(('cell_%d_%d' % (ip, iq), 'cellFacts %d %d' % (ip, iq), t,
                       'Cell %d: `r(P) = %s`, `r(Q) = %s`.' % (ci, list(wp), list(wq))))
    print('total terms', sum(sizes.values()))
    return wordsP, wordsQ, treeP, treeQ, leaves, sizes




HEAD = '''module

public import Heilbronn.Nine.SixBoundary.RadialCover

/-! # The certificate model of the triangular two-top package
(`docs/proof/nine/SIX_BOUNDARY_TWO_TOP_TRIANGULAR.md`)

Generated by `scripts/nine/six_two_top_triangular/export.py` from
`docs/proof/nine/six_boundary_two_top_triangular_certificates.json` (checker
`docs/proof/nine/check_six_boundary_two_top_triangular.py`), in the generic form `Heilbronn.Nine.SixRadial`:

* points `0, …, 8` are `A, B, C, D, X, F, H, P, Q` (the hull heptagon (3), the inner cap point `P`
  and the hexagon point `Q`); variables `0, …, 11` are `a, h, b, c, d, f, x_x, x_y, p_x, p_y, q_x, q_y`;
* `factors`: the 27 common affine factors (10); `lowerF`: the five factors (16) of a lower `Q`;
  `c230F`: the four factors (18) of case 230;
* `base`: the 35 hull triangles, `P ∈ DXF` and `[DFQ] > 0`; `extra`: the costs (19)–(20)
  (`hc - 4σ`, `W - 2σ`, `δ - 3σ` always, then `W - 4σ` for an upper and `hc - 7/11` for a lower
  `Q`, then the ears); the occupancy bounds `σ, 3σ, ρ = 49/60`;
* `cellFacts ip iq`: the signs of the words `wordsP[ip]`, `wordsQ[iq]` and their pair-line
  signs, with the extra factors of the cell;
* the enumerations of the words of `P` and `Q` are in
  `Heilbronn.Nine.SixBoundary.TwoTopTriangularEnum*`, the certificates (one per cell) in
  `Heilbronn.Nine.SixBoundary.TwoTopTriangularTrees*`.
-/

@[expose] public section

namespace Heilbronn.Nine.SixBoundaryTwoTopTriangular.Model

open Cert Cert.Expr Cover SixRadial

/-- The nine points as expressions. -/
def pt : ℕ → Expr × Expr
  | 0 => (0, v 0)
  | 1 => (v 2, 0)
  | 2 => (v 3, 0)
  | 3 => (1, v 4)
  | 4 => (v 6, v 7)
  | 5 => (v 5, 1)
  | 6 => (0, v 1)
  | 7 => (v 8, v 9)
  | 8 => (v 10, v 11)
  | _ => (0, 0)

/-- The 27 common affine factors (10). -/
def factors : List Expr :=
  [%s]

/-- The five factors (16) of a lower `Q`. -/
def lowerF : List Expr :=
  [%s]

/-- The four factors (18) of case 230. -/
def c230F : List Expr :=
  [%s]

/-- The hull triangles of the heptagon. -/
def hull : List SFact := (lexTriples 7).map (fun t => (t, true))

/-- The initial signs: the hull, `P ∈ DXF` and `[DFQ] > 0`. -/
def base : List SFact :=
  hull ++ [((3, 4, 7), true), ((4, 5, 7), true), ((3, 5, 7), false), ((3, 5, 8), true)]

/-- The initial signs of the enumeration of the words of `P`. -/
def baseP : List SFact := hull ++ [((3, 4, 7), true), ((4, 5, 7), true), ((3, 5, 7), false)]

/-- The initial signs of the enumeration of the words of `Q`. -/
def baseQ : List SFact := hull ++ [((3, 5, 8), true)]

/-- The occupancy bounds `σ`, `3σ`, `ρ`. -/
def bnd (m : ℕ) : ℚ := if m = 0 then 8 / 73 else if m = 1 then 24 / 73 else 49 / 60

/-- `W = [HCDF] = 1 - (h-d)(c-f)`. -/
def eW : Expr := 1 - (v 1 - v 4) * (v 3 - v 5)

/-- `hc`. -/
def eHC : Expr := v 1 * v 3

/-- `δ = (1-d)(1-f)`. -/
def eDelta : Expr := (1 - v 4) * (1 - v 5)

/-- The doubled area of the triangle `t`. -/
def tri (t : ℕ × ℕ × ℕ) : Expr := esarea (pt t.1) (pt t.2.1) (pt t.2.2)

/-- The costs (19)–(20). -/
def extra (tb : List SFact) : List Expr :=
  [eHC - k (32 / 73), eW - k (16 / 73), eDelta - k (24 / 73)] ++
  (match lookup tb (2, 6, 8) with
    | some false => [eW - k (32 / 73)]
    | some true => [eHC - k (7 / 11)]
    | none => [k 0]) ++
  [(0, 1, 6), (0, 1, 2), (1, 2, 3), (2, 3, 5), (3, 5, 6), (0, 5, 6)].map fun t => k (13 / 16) - tri t

/-- The package. -/
def pkg : Pkg := ⟨7, 9, pt, factors, base, bnd, [7, 8], extra⟩

/-- The enumeration package of `P`. -/
def pkgP : Pkg := ⟨7, 8, pt, [], baseP, bnd, [7], fun _ => []⟩

/-- The enumeration package of `Q`. -/
def pkgQ : Pkg := ⟨7, 9, pt, [], baseQ, bnd, [8], fun _ => []⟩

/-- The five words (13) of `P`. -/
def wordsP : List (List ℕ) :=
  %s

/-- The 52 hexagon words of `Q`. -/
def wordsQ : List (List ℕ) :=
  %s

/-- The pair-line signs (`claim_pair_line_sign`): `[V_v P Q]` has the sign of `q_v - p_v`. -/
def pairFacts (wp wq : List ℕ) : List SFact :=
  (List.range 7).filterMap fun v =>
    if wp.getD v 0 = wq.getD v 0 then none else some ((v, 7, 8), decide (wp.getD v 0 < wq.getD v 0))

/-- The initial facts of the cell of the words `wordsP[ip]`, `wordsQ[iq]`. -/
def cellFacts (ip iq : ℕ) : List Fact :=
  (wordFacts 7 7 (wordsP.getD ip []) ++ wordFacts 7 8 (wordsQ.getD iq []) ++
      pairFacts (wordsP.getD ip []) (wordsQ.getD iq [])).map Sum.inl ++
    (if (wordsQ.getD iq []).getD 6 0 < 3 then lowerF.map Sum.inr else []) ++
    (if ip = %d ∧ iq = %d then c230F.map Sum.inr else [])

end Heilbronn.Nine.SixBoundaryTwoTopTriangular.Model
'''


def write_lean(wordsP, wordsQ, treeP, treeQ, leaves, sizes):
    aw = Ck.ALL_WORDS
    ip230 = wordsP.index(tuple(aw[Ck.CASES[230][0]]))
    iq230 = wordsQ.index(tuple(aw[Ck.CASES[230][1]]))
    L = lambda es: ',\n    '.join(certlib.lean(e) for e in es)
    (ROOT / 'Heilbronn' / 'Nine' / 'SixBoundary' / 'TwoTopTriangularModel.lean').write_text(HEAD % (
        L(FACTORS), L(LOWER), L(C230), R.lean_words(wordsP), R.lean_words(wordsQ), ip230, iq230))
    ns = 'Heilbronn.Nine.SixBoundaryTwoTopTriangular.Model'
    for nm, tree, words, p, pk, wn in (('P', treeP, wordsP, 7, 'pkgP', 'wordsP'),
                                       ('Q', treeQ, wordsQ, 8, 'pkgQ', 'wordsQ')):
        index = {wd: i for i, wd in enumerate(words)}
        (ROOT / 'Heilbronn' / 'Nine' / 'SixBoundary' / ('TwoTopTriangularEnum%s.lean' % nm)).write_text(
            R.lean_enum_module(tree, index, 7, p, pk, wn, ns + '.Enum' + nm,
                               'Triangular two-top: the enumeration of the words of `%s`' % nm,
                               'public import Heilbronn.Nine.SixBoundary.TwoTopTriangularModel\n'))
    chunks = X.write_chunks(leaves, sizes, ROOT / 'Heilbronn' / 'Nine' / 'SixBoundary' / 'TwoTopTriangularTrees',
                            'Heilbronn.Nine.SixBoundary.TwoTopTriangularModel', ns,
                            'Triangular two-top certificates', 'Chunk')
    imports = ''.join('public import Heilbronn.Nine.SixBoundary.TwoTopTriangularTrees.Chunk%d\n' % ci
                      for ci in range(len(chunks)))
    out = ['module\n\n', imports,
           '\n/-! # Triangular two-top certificates: the assembly (generated) -/\n\n'
           '@[expose] public section\n\nnamespace %s\n\nopen Cert Cert.Expr Cover SixRadial\n\n' % ns]
    out.append('theorem all_ok (ip : ℕ) (hp : ip < %d) (iq : ℕ) (hq : iq < %d) :\n'
               '    ∃ T, checkTree (pkg.spec Pkg.noClosed) (cellFacts ip iq) T = true := by\n'
               '  interval_cases ip\n' % (len(wordsP), len(wordsQ)))
    for ip in range(len(wordsP)):
        out.append('  · interval_cases iq\n')
        for iq in range(len(wordsQ)):
            out.append('    · exact ⟨_, cell_%d_%d_ok⟩\n' % (ip, iq))
    out.append('\nend %s\n' % ns)
    (ROOT / 'Heilbronn' / 'Nine' / 'SixBoundary' / 'TwoTopTriangularTrees.lean').write_text(''.join(out))
    print('chunks', [(len(cc), n) for cc, n in chunks])
    print('case230 indices', ip230, iq230)


if __name__ == '__main__':
    write_lean(*main())
