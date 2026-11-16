#!/usr/bin/env python3
"""Export the single-side package (docs/proof/nine/six_boundary_single_side_certificates.json) for Lean.

1. Cross-checks the mirror model.py against the hand checker: words, the 536 base cases, the base
   signs, the split vertices of the five split cases.
2. For each of the 543 cells, picks an applicable certificate (the checker's reuse rule; among
   the applicable records the one giving the fewest Lean terms) and converts it to integer weights
   for `Cert.check` on the Lean atom list of the cell (`factors ++ triangle costs ++ extra costs`,
   model.atoms). A reused record whose cost has a larger threshold on the target cell is rewritten
   with `q_ref = q_tgt + δ` (`δ > 0`), so the expanded polynomial is unchanged; every cell's
   expansion is compared with the checker's residual and its monomial bound rechecked.
   Writes data/nine/six_single_side/cNNN.txt.
3. Writes the cover trees as Lean modules Heilbronn/Nine/SixBoundary/SingleSide/Trees/ChunkN.lean (about 2,500
   terms per module, one `tree_decide` theorem per base case) and
   Heilbronn/Nine/SixBoundary/SingleSide/Trees.lean collecting them.

The full run exports 543 cells with 44,012 terms in 19 chunks.

usage: export.py [--only N]      (N: export just the first N cases into one test chunk)
       export.py --collector K   (rewrite only Trees.lean, for K chunks)
"""
import json
import sys
from fractions import Fraction as F
from pathlib import Path

HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[2]
sys.path.insert(0, str(HERE))
sys.path.insert(0, str(ROOT / 'docs' / 'proof' / 'nine'))
import model as M  # noqa: E402
import certlib  # noqa: E402
import check_six_boundary_single_side as Ck  # noqa: E402

DATA = ROOT / 'data' / 'nine' / 'six_single_side'
LEAN = ROOT / 'Heilbronn' / 'Nine' / 'SixBoundary' / 'SingleSide' / 'Trees'
CHUNK_TERMS = 2500


def ck_case(p, q):
    return ('mixed' if M.mixed(p, q) else 'upper', tuple(M.WORDS[p]), tuple(M.WORDS[q]))


def crosscheck():
    assert M.ALL_WORDS == [list(w) for w in Ck.WORDS]
    assert M.WORDS == [list(w) for w in Ck.ALLOWED]
    assert sorted(ck_case(p, q) for p, q in M.CASES) == sorted(Ck.CASES)
    for p, q in M.CASES:
        case = ck_case(p, q)
        branch = 0 if case in Ck.SPLITS else -1
        ks = Ck.known_signs(case, branch)
        base = dict(M.base_signs(p, q))
        sv = tuple(vv for vv in range(7) if (vv, 7, 8) not in base)
        if case in Ck.SPLITS:
            assert sv == Ck.SPLITS[case]
            for vv in sv:
                del ks[(vv, 7, 8)]
        assert base == {t: s == 1 for t, s in ks.items()}, (p, q)
    print('cross-check of words, cases and signs: PASS')


def split_vertices(p, q):
    return Ck.SPLITS.get(ck_case(p, q), ())


def cell_lean(p, q, branch):
    sv = split_vertices(p, q)
    sfs = [((vv, 7, 8), bool(branch >> j & 1)) for j, vv in enumerate(sv)]
    return M.atoms(p, q, sfs)


def poly_sig(e):
    return tuple(sorted(certlib.rat_value_poly(e).items()))


def ck_poly_to_key(p):
    out = {}
    for m, c in p.items():
        key = 0
        for i in m:
            key += 32 ** i
        out[key] = out.get(key, 0) + c
    return {m: c for m, c in out.items() if c}


def target_index(p, q, branch):
    """(area key, sign) -> (Lean atom index, threshold) on the target cell; the stronger threshold
    for a duplicated key, as the checker's cost_map."""
    atoms, tb, nf = cell_lean(p, q, branch)
    cidx = {}

    def put(key, idx, th):
        if key not in cidx or th > cidx[key][1]:
            cidx[key] = (idx, th)
    for n, (t, sg) in enumerate(tb):
        cnt = len(M.inside_list(tb, [7, 8], (t, sg)))
        put((t, 1 if sg else -1), nf + n, M.bnd(cnt))
    m = M.mixed(p, q)
    base = nf + len(tb)
    put(('W', 1), base, 4 * M.S if m else 8 * M.S)
    put(('HC', 1), base + 1, F(7, 11) if m else 4 * M.S)
    put(((0, 1, 6), -1), base + 2, -3 * M.S)
    put(((1, 2, 3), -1), base + 3, -3 * M.S)
    for e, t in enumerate(M.EARS):
        put((t, -1), base + 4 + e, F(-13, 16))
    return atoms, nf, cidx


def cell_terms(tgt, cert):
    atoms, nf, cidx = tgt
    ref = (cert['case'][0], tuple(cert['case'][1]), tuple(cert['case'][2]))
    rspec = Ck.cost_specs(ref, cert['branch'])
    # the factor lists agree
    sc = cert['scale']
    terms = []
    for term in cert['terms']:
        if term[0] == 'f':
            _, ids, w = term
            terms.append((F(w, sc), list(ids)))
        else:
            _, qi, fi, w = term
            key, sg, bound = rspec[qi]
            idx, tbound = cidx[(key, sg)]
            assert tbound >= bound
            fl = [fi] if fi != -1 else []
            terms.append((F(w, sc), [idx] + fl))
            if tbound > bound:
                terms.append((F(w, sc) * (tbound - bound), fl))
    return atoms, terms


def verify_terms(atoms, terms, cert):
    total = {}
    for w, idx in terms:
        pl = {0: F(1)}
        for i in idx:
            pl = certlib._pmul(pl, certlib.rat_value_poly(atoms[i]))
        total = certlib._padd(total, certlib._pscale(w, pl))
    assert total == ck_poly_to_key(Ck.residual(cert))
    W = certlib.integer_weights(atoms, terms)
    assert certlib.check(atoms, W)
    return W


def main():
    only = int(sys.argv[sys.argv.index('--only') + 1]) if '--only' in sys.argv else None
    crosscheck()
    # the Lean factors are the checker's factors
    for a, b in zip(M.factors(), Ck.FACTORS):
        assert poly_sig(a) == tuple(sorted(ck_poly_to_key(b).items()))
    assert len(M.factors()) == len(Ck.FACTORS) == 27
    data = json.loads((ROOT / 'docs' / 'proof' / 'nine' / 'six_boundary_single_side_certificates.json').read_text())
    certs = data['certificates']
    DATA.mkdir(parents=True, exist_ok=True)
    LEAN.mkdir(parents=True, exist_ok=True)
    ncases = only if only else len(M.CASES)
    cells = []
    for ci in range(ncases):
        p, q = M.CASES[ci]
        sv = split_vertices(p, q)
        for br in (range(1 << len(sv)) if sv else (-1,)):
            cells.append((ci, br))
    Ws = {}
    for ci, br in cells:
        p, q = M.CASES[ci]
        target = (ck_case(p, q), br)
        tgt = target_index(p, q, br)
        best = None
        for cert in certs:
            if Ck.applicable(cert, target):
                atoms, terms = cell_terms(tgt, cert)
                if best is None or len(terms) < len(best[1]):
                    best = (atoms, terms, cert)
        assert best is not None, target
        atoms, terms, cert = best
        Ws[(ci, br)] = verify_terms(atoms, terms, cert)
        certlib.write_terms(DATA / ('c%03d_%d.txt' % (ci, br + 1)), Ws[(ci, br)])
    total = sum(len(W) for W in Ws.values())
    print('exported %d cells, %d terms' % (len(Ws), total))
    write_lean(ncases, Ws, only)


def lean_case_tree(ci, Ws):
    p, q = M.CASES[ci]
    sv = split_vertices(p, q)

    def leaf(br):
        return '.cert (term_rows%% "../../../../../data/nine/six_single_side/c%03d_%d.txt")' % (ci, br + 1)
    if not sv:
        return leaf(-1)
    if len(sv) == 1:
        return '.node (.tri %d 7 8) [%s,\n    %s]' % (sv[0], leaf(0), leaf(1))
    assert len(sv) == 2
    inner = lambda b0: '.node (.tri %d 7 8) [%s,\n      %s]' % (sv[1], leaf(b0), leaf(b0 | 2))  # noqa: E731
    return '.node (.tri %d 7 8) [%s,\n    %s]' % (sv[0], inner(0), inner(1))


def write_lean(ncases, Ws, only):
    cases = []
    for ci in range(ncases):
        size = sum(len(W) for c, W in Ws.items() if c[0] == ci)
        cases.append((ci, M.CASES[ci], lean_case_tree(ci, Ws), size))
    chunks, cur, size = [], [], 0
    for c in cases:
        if cur and size + c[3] > CHUNK_TERMS:
            chunks.append(cur)
            cur, size = [], 0
        cur.append(c)
        size += c[3]
    if cur:
        chunks.append(cur)
    for n, chunk in enumerate(chunks):
        lines = ['module', '', 'public import Heilbronn.Nine.SixBoundary.SingleSide.Model',
                 'public import Heilbronn.Common.DataReader', '',
                 '/-! # Single-side cover, chunk %d (generated by '
                 '`scripts/nine/six_single_side/export.py`)' % n, '',
                 'The cell trees of %d base cases of '
                 '`docs/proof/nine/six_boundary_single_side_certificates.json` (%d certificate terms), each '
                 'checked by the kernel. -/' % (len(chunk), sum(c[3] for c in chunk)), '',
                 '@[expose] public section', '',
                 'namespace Heilbronn.Nine.SixBoundarySingleSide.Trees', '', 'open Cover Model', '']
        for c in chunk:
            ci = c[0]
            lines += ['/-- The cell tree of the base case %d, words %s (%d terms). -/'
                      % (ci, list(c[1]), c[3]),
                      'noncomputable def tree%d : Cover.Tree Split :=' % ci, '  ' + c[2], '',
                      'theorem tree%d_ok : checkTree (spec %d %d) [] tree%d = true := by'
                      % (ci, c[1][0], c[1][1], ci),
                      '  tree_decide', '']
        lines += ['/-- The base cases of chunk %d with their trees. -/' % n,
                  'noncomputable def chunk%d : List ((ℕ × ℕ) × Cover.Tree Split) :=' % n]
        lines.append('  [' + ',\n    '.join('((%d, %d), tree%d)' % (c[1][0], c[1][1], c[0])
                                            for c in chunk) + ']')
        lines += ['', 'theorem chunk%d_ok : ∀ x ∈ chunk%d, checkTree (spec x.1.1 x.1.2) [] x.2 = true := by'
                  % (n, n),
                  '  simp only [chunk%d, List.forall_mem_cons, List.not_mem_nil, IsEmpty.forall_iff,' % n,
                  '    implies_true, and_true]',
                  '  exact ⟨%s⟩' % ', '.join('tree%d_ok' % c[0] for c in chunk), '',
                  'end Heilbronn.Nine.SixBoundarySingleSide.Trees', '']
        (LEAN / ('Chunk%d.lean' % n)).write_text('\n'.join(lines))
        print('chunk %d: %d cases, %d terms' % (n, len(chunk), sum(c[3] for c in chunk)))
    if not only:
        write_collector(len(chunks))


def write_collector(nchunks):
    imports = ['public import Heilbronn.Nine.SixBoundary.SingleSide.Trees.Chunk%d' % n for n in range(nchunks)]
    alls = ' ++ '.join('chunk%d' % n for n in range(nchunks))
    nested = 'chunk0_ok'
    for n in range(1, nchunks):
        nested = '⟨%s, chunk%d_ok⟩' % (nested, n)
    text = '\n'.join(['module', ''] + imports + [
        '',
        '/-! # Single-side cover: all base cases (generated by `scripts/nine/six_single_side/export.py`)',
        '', 'The cell trees of the 536 base cases of `docs/proof/nine/six_boundary_single_side_certificates.json`',
        '(543 cells), collected from the chunks `Heilbronn.Nine.SixBoundary.SingleSide.Trees.ChunkN`, each',
        'checked there by the kernel. -/', '', '@[expose] public section', '',
        'namespace Heilbronn.Nine.SixBoundarySingleSide.Trees', '', 'open Cover Model', '',
        '/-- All the base cases with their cell trees. -/',
        'noncomputable def allCases : List ((ℕ × ℕ) × Cover.Tree Split) :=',
        '  ' + alls, '',
        'theorem allCases_ok : ∀ x ∈ allCases, checkTree (spec x.1.1 x.1.2) [] x.2 = true := by',
        '  simp only [allCases, List.forall_mem_append]',
        '  exact %s' % nested,
        '',
        '/-- The base cases covered are the model\'s `cases`. -/',
        'theorem allCases_keys : allCases.map Prod.fst = cases := by decide +kernel', '',
        'end Heilbronn.Nine.SixBoundarySingleSide.Trees', ''])
    (LEAN.parent / 'Trees.lean').write_text(text)


if __name__ == '__main__':
    if '--collector' in sys.argv:
        write_collector(int(sys.argv[sys.argv.index('--collector') + 1]))
    else:
        main()
