#!/usr/bin/env python3
"""Export the one-lower hexagon packages (top cap, side cap) for Lean.

Mirror of Heilbronn/Nine/C1/OneLower/HexModel.lean. For every cell of the hand checker
(docs/proof/nine/check_c1_one_lower_top_cap.py: 205 cells; docs/proof/nine/check_c1_one_lower_side_cap.py: 153 cells)
it picks a certificate applicable by the checker's reuse rule and converts it to integer weights
for `Cert.check` on the cell's own Lean atoms (`factors ++ [W - 8s] ++ table costs`); a cost whose
Lean bound exceeds the certificate's is split off as a nonnegative constant (common.convert).
Writes data/nine/c1_one_lower_{top,side}_cap/*.txt and the chunk modules
Heilbronn/Nine/C1/OneLower/{TopCap,SideCap}Trees/ChunkN.lean with their collectors.

usage: hex.py top|side
"""
import json
import sys
from fractions import Fraction as F
from pathlib import Path

HERE = Path(__file__).resolve().parent
sys.path.insert(0, str(HERE))
from common import (ROOT, N, v, k, LEX, table_atoms, convert, checker_poly, certlib)  # noqa

one = N(1)
S = F(8, 73)

LOWER_W = [[1, 4, 4, 3, 2, 1], [2, 4, 3, 3, 2, 1], [3, 4, 3, 2, 2, 1], [4, 4, 3, 2, 1, 1]]
UPPER_TOP = [[1, 1, 4, 4, 3, 2], [1, 2, 4, 3, 3, 2], [1, 3, 4, 3, 2, 2], [2, 1, 2, 4, 3, 3],
             [2, 1, 3, 4, 3, 2], [2, 2, 2, 3, 3, 3], [2, 2, 3, 3, 3, 2], [2, 3, 2, 3, 2, 3],
             [2, 3, 3, 3, 2, 2], [3, 2, 2, 1, 3, 4], [3, 2, 2, 2, 3, 3], [3, 2, 3, 2, 3, 2],
             [3, 3, 2, 1, 2, 4], [3, 3, 2, 2, 2, 3], [3, 3, 3, 2, 2, 2], [4, 3, 2, 1, 1, 4],
             [4, 3, 2, 2, 1, 3], [4, 3, 3, 2, 1, 2]]
UPPER_SIDE = [[1, 1, 4, 4, 3, 2], [1, 2, 4, 3, 3, 2], [1, 3, 4, 3, 2, 2], [2, 1, 1, 4, 4, 3],
              [2, 1, 2, 4, 3, 3], [2, 1, 3, 4, 3, 2], [2, 2, 1, 3, 4, 3], [2, 2, 2, 3, 3, 3],
              [2, 2, 3, 3, 3, 2], [2, 3, 2, 3, 2, 3], [2, 3, 3, 3, 2, 2], [3, 2, 1, 2, 4, 3],
              [3, 2, 2, 2, 3, 3], [3, 2, 3, 2, 3, 2], [3, 3, 2, 2, 2, 3], [3, 3, 3, 2, 2, 2],
              [4, 3, 2, 2, 1, 3], [4, 3, 3, 2, 1, 2]]


def pt_top(i):
    return {0: (N(0), N(0)), 1: (v(1), N(0)), 2: (N(1), v(2)), 3: (v(4), v(5)), 4: (v(3), N(1)),
            5: (N(0), v(0)), 6: (v(6), v(7)), 7: (v(8), v(9)), 8: (v(10), v(11))}[i]


def pt_side(i):
    return {0: (N(0), N(0)), 1: (v(1), N(0)), 2: (N(1), v(2)), 3: (v(3), N(1)), 4: (v(4), v(5)),
            5: (N(0), v(0)), 6: (v(6), v(7)), 7: (v(8), v(9)), 8: (v(10), v(11))}[i]


def hsign(w, i, j):
    return (j + 6 - i) % 6 <= w[i]


def upper_pair(side, p, q, vv):
    iF = 3 if side else 4
    pHD, qHD, pCF, qCF = hsign(p, 5, 2), hsign(q, 5, 2), hsign(p, 1, iF), hsign(q, 1, iF)
    if pHD == qHD and pCF == qCF:
        return None
    if vv not in (5, 1, 2, iF):
        return None
    if pHD != qHD and pCF != qCF:
        return (not pHD) if vv == 5 else pHD if vv == 2 else (not pCF) if vv == 1 else pCF
    if pHD == qHD:
        iso = iF if pHD else 1
        sd = pCF if pHD else (not pCF)
    else:
        iso = 5 if pCF else 2
        sd = (not pHD) if pCF else pHD
    return sd if vv == iso else (not sd)


def pair_sign(side, ws, a, b, vv):
    wa, wb = ws[a], ws[b]
    if wa[vv] != wb[vv]:
        return wa[vv] < wb[vv]
    if (a, b) == (1, 2):
        return upper_pair(side, wa, wb, vv)
    return None


def base_signs(side, ws):
    out = []
    for t in LEX:
        if t[2] < 6:
            out.append((t, True))
        elif t[1] < 6:
            out.append((t, hsign(ws[t[2] - 6], t[0], t[1])))
    for a, b in [(0, 1), (0, 2), (1, 2)]:
        for vv in range(6):
            sg = pair_sign(side, ws, a, b, vv)
            if sg is not None:
                out.append(((vv, a + 6, b + 6), sg))
    return out


FACTORS_TOP = [
    v(0) - k(F(24, 73)), v(1) - k(F(24, 73)), one - v(0), one - v(1), v(2) - k(S),
    k(F(57, 65)) - v(2), v(3) - k(S), k(F(67, 100)) - v(3), v(0) - v(2), v(1) - v(3), v(2) - v(3),
    v(4) - v(3) - k(S), v(5) - v(2) - k(S), one - v(4), one - v(5),
    v(6) - k(S), v(7) - k(S), v(1) - v(6) - k(F(16, 73)), v(0) - v(7) - k(F(16, 73)),
    one - v(6) - v(7) - k(S),
    v(8) - k(S), k(F(65, 73)) - v(8), v(9) - k(S), k(F(65, 73)) - v(9),
    v(10) - k(S), k(F(65, 73)) - v(10), v(11) - k(S), k(F(65, 73)) - v(11)]
FACTORS_SIDE = [
    v(0) - k(F(24, 73)), v(1) - k(F(32, 73)), k(F(6, 7)) - v(0), one - v(1), v(2) - k(S),
    v(0) - v(2), v(3) - k(F(32, 73)), k(F(65, 73)) - v(3), v(1) - v(3), v(4) - k(F(28, 219)),
    v(3) - v(4) - k(F(8, 49)), v(5) - v(0) - k(F(8, 65)), one - v(5), k(F(57, 73)) - v(4),
    v(5) - k(F(32, 73)),
    v(6) - k(F(28, 219)), v(7) - k(S), v(1) - v(6) - k(F(56, 219)), v(0) - v(7) - k(F(16, 73)),
    one - v(6) - v(7) - k(S),
    v(8) - k(F(28, 219)), k(F(65, 73)) - v(8), v(9) - k(S), k(F(65, 73)) - v(9),
    v(10) - k(F(28, 219)), k(F(65, 73)) - v(10), v(11) - k(S), k(F(65, 73)) - v(11)]
W_COST = one - (v(0) - v(2)) * (v(1) - v(3)) - k(F(64, 73))

# the (0, 8, 10) split of the top cap: branch b = eps_X + 2 eps_F, tree split (3,6,7) then (4,6,7)
SPLIT_PATHS = {b: [((3, 6, 7), bool(b & 1)), ((4, 6, 7), bool(b & 2))] for b in range(4)}


def lean_split_tree(leaf):
    """The Lean tree of the split case: node (3,6,7) [node (4,6,7) [b0, b2], node (4,6,7) [b1, b3]]."""
    return ('.node (.tri 3 6 7) [.node (.tri 4 6 7) [%s, %s], .node (.tri 4 6 7) [%s, %s]]'
            % (leaf(0), leaf(2), leaf(1), leaf(3)))


def main():
    side = sys.argv[1] == 'side'
    if side:
        import check_c1_one_lower_side_cap as Ck
        pkg, upper, fac, pt, tag = 'side_cap', UPPER_SIDE, FACTORS_SIDE, pt_side, 'SideCap'
    else:
        import check_c1_one_lower_top_cap as Ck
        pkg, upper, fac, pt, tag = 'top_cap', UPPER_TOP, FACTORS_TOP, pt_top, 'TopCap'
    data = json.loads((ROOT / 'docs' / 'proof' / 'nine' / ('c1_one_lower_%s_certificates.json' % pkg)).read_text())
    certs = data['certificates']
    assert [list(w) for w in Ck.LOWER] == LOWER_W and [list(w) for w in Ck.UPPER] == upper
    assert len(fac) == 28
    for e, p in zip(fac, Ck.FACTORS):
        assert certlib.rat_value_poly(e) == checker_poly(p)
    DATA = ROOT / 'data' / 'nine' / ('c1_one_lower_%s' % pkg)
    LEANDIR = ROOT / 'Heilbronn' / 'Nine' / 'C1' / 'OneLower' / ('%sTrees' % tag)
    DATA.mkdir(parents=True, exist_ok=True)
    LEANDIR.mkdir(parents=True, exist_ok=True)
    cells = sorted(Ck.cells())
    nf = len(fac)
    # for each cell pick an applicable certificate (prefer its own)
    by_cell = {(tuple(c['case']), c['branch']): c for c in certs}
    out_cells = []  # (case, branch, int terms)
    total = 0
    for cell in cells:
        case, branch = cell
        cand = [by_cell[cell]] if cell in by_cell else []
        cand += [c for c in certs if Ck.applicable(c, cell)]
        assert cand, cell
        best = None
        for cert in cand:
            if not Ck.applicable(cert, cell):
                continue
            ws = [LOWER_W[case[0]], upper[case[1]], upper[case[2]]]
            fs = SPLIT_PATHS[branch] if branch >= 0 else []
            tb = base_signs(side, ws) + fs
            atoms, index = table_atoms(fac + [W_COST], [], pt, [6, 7, 8], tb)
            # cross-check: checker cost polynomials of the target cell
            tspecs = Ck.cost_specs(case, branch)
            tsign = {(t, sg): b for t, sg, b in tspecs}
            for (t, sg), (li, lb) in index.items():
                key = (t, 1 if sg else -1)
                assert key in tsign, (cell, key)
                assert lb >= tsign[key], (cell, key)
            assert len(index) == len(tspecs) - 1, cell
            sspecs = Ck.cost_specs(tuple(cert['case']), cert['branch'])

            def qmap(qi):
                t, sg, b = sspecs[qi]
                if t == ():
                    return nf, 0
                li, lb = index[(t, sg == 1)]
                return li, lb - b
            terms = convert(cert, nf, qmap)
            W = certlib.integer_weights(atoms, terms)
            if certlib.check(atoms, W):
                best = W
                break
        assert best is not None, cell
        total += len(best)
        out_cells.append((case, branch, best))
    print('%s: %d cells, %d terms' % (pkg, len(out_cells), total))
    # group the cells by case
    cases = {}
    for case, branch, W in out_cells:
        cases.setdefault(case, {})[branch] = W
    names = {}
    for n, (case, brs) in enumerate(sorted(cases.items())):
        for b, W in brs.items():
            name = 'c%03d%s.txt' % (n, '' if b < 0 else 'b%d' % b)
            certlib.write_terms(DATA / name, W)
            names[(case, b)] = name
    # chunks of about 2500 terms, one theorem per case
    rel = '../../../../../data/nine/c1_one_lower_%s/' % pkg
    items = []
    for n, (case, brs) in enumerate(sorted(cases.items())):
        size = sum(len(W) for W in brs.values())
        if -1 in brs:
            body = '.cert (term_rows%% "%s%s")' % (rel, names[(case, -1)])
        else:
            body = lean_split_tree(lambda b: '.cert (term_rows%% "%s%s")' % (rel, names[(case, b)]))
        items.append((n, case, body, size))
    chunks, cur, sz = [], [], 0
    for it in items:
        if cur and sz + it[3] > 2500:
            chunks.append(cur)
            cur, sz = [], 0
        cur.append(it)
        sz += it[3]
    if cur:
        chunks.append(cur)
    sideB = 'true' if side else 'false'
    ns = 'Heilbronn.Nine.C1OneLowerHex.Trees%s' % tag
    for m, chunk in enumerate(chunks):
        lines = ['module', '', 'public import Heilbronn.Nine.C1.OneLower.HexModel',
                 'public import Heilbronn.Common.DataReader', '',
                 '/-! # The %s certificates, chunk %d (generated by '
                 '`scripts/nine/c1_one_lower/hex.py`)' % (pkg.replace('_', ' '), m), '',
                 'Kernel checks of %d cases (%d terms), one theorem per case. -/'
                 % (len(chunk), sum(it[3] for it in chunk)), '',
                 '@[expose] public section', '', 'namespace %s' % ns, '',
                 'open Cover C1OneLowerHex.Model', '']
        for n, case, body, size in chunk:
            lines += ['/-- The tree of the case %s. -/' % list(case),
                      'noncomputable def tree%d : Cover.Tree C1ZeroLower.Model.Split :=' % n,
                      '  ' + body, '',
                      'theorem tree%d_ok : checkTree (spec %s %d %d %d) [] tree%d = true := by'
                      % (n, sideB, case[0], case[1], case[2], n),
                      '  decide +kernel', '']
        lines += ['/-- The cases of chunk %d. -/' % m,
                  'noncomputable def chunk%d : List ((ℕ × ℕ × ℕ) × Cover.Tree C1ZeroLower.Model.Split) :='
                  % m,
                  '  [' + ',\n    '.join('((%d, %d, %d), tree%d)' % (c[0], c[1], c[2], n)
                                        for n, c, _, _ in chunk) + ']', '',
                  'theorem chunk%d_ok : ∀ p ∈ chunk%d,' % (m, m),
                  '    checkTree (spec %s p.1.1 p.1.2.1 p.1.2.2) [] p.2 = true := by' % sideB,
                  '  intro p hp',
                  '  simp only [chunk%d, List.mem_cons, List.not_mem_nil, or_false] at hp' % m,
                  '  rcases hp with %s' % ' | '.join(['rfl'] * len(chunk)),
                  '  exacts [%s]' % ', '.join('tree%d_ok' % n for n, _, _, _ in chunk), '',
                  'end %s' % ns, '']
        (LEANDIR / ('Chunk%d.lean' % m)).write_text('\n'.join(lines))
    keys = [c for _, c, _, _ in items]
    imports = '\n'.join('public import Heilbronn.Nine.C1.OneLower.%sTrees.Chunk%d' % (tag, m)
                        for m in range(len(chunks)))
    allc = ' ++ '.join('chunk%d' % m for m in range(len(chunks)))
    text = '''module

%s

/-! # The %s cover: all cases (generated by `scripts/nine/c1_one_lower/hex.py`)

The %d word cases, collected from the chunks, with the kernel-checked trees. -/

@[expose] public section

namespace %s

open Cover C1OneLowerHex.Model

/-- All the cases with their trees. -/
noncomputable def allCases : List ((ℕ × ℕ × ℕ) × Cover.Tree C1ZeroLower.Model.Split) :=
  %s

theorem allCases_ok : ∀ p ∈ allCases,
    checkTree (spec %s p.1.1 p.1.2.1 p.1.2.2) [] p.2 = true := by
  intro p hp
  simp only [allCases, List.mem_append, or_assoc] at hp
  rcases hp with %s
  exacts [%s]

/-- The cases covered. -/
def caseKeys : List (ℕ × ℕ × ℕ) :=
  [%s]

theorem caseKeys_eq : allCases.map Prod.fst = caseKeys := by decide +kernel

theorem trees_ok : ∀ x ∈ caseKeys, ∃ T, checkTree (spec %s x.1 x.2.1 x.2.2) [] T = true := by
  intro x hx
  rw [← caseKeys_eq] at hx
  obtain ⟨p, hp, rfl⟩ := List.mem_map.1 hx
  exact ⟨p.2, allCases_ok p hp⟩

end %s
''' % (imports, pkg.replace('_', ' '), len(keys), ns, allc, sideB,
       ' | '.join(['hp'] * len(chunks)) if len(chunks) > 1 else 'hp',
       ', '.join('chunk%d_ok p hp' % m for m in range(len(chunks))),
       ',\n    '.join(', '.join('(%d, %d, %d)' % c for c in keys[i:i + 8])
                      for i in range(0, len(keys), 8)),
       sideB, ns)
    (ROOT / 'Heilbronn' / 'Nine' / 'C1' / 'OneLower' / ('%sTrees.lean' % tag)).write_text(text)
    print('%d chunks' % len(chunks))


if __name__ == '__main__':
    main()
