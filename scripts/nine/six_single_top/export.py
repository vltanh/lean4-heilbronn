#!/usr/bin/env python3
"""Export the single-top package (docs/proof/nine/six_boundary_single_top_certificates.json) for Lean.

1. Cross-checks the mirror model.py against the hand checker: words, the 884 base pairs, the base
   signs, the split vertices of the four split pairs.
2. For each of the 893 cells, converts its certificate (the reference record or a reused one) to
   integer weights for `Cert.check` on the Lean atom list of the cell
   (`factors ++ cuts ++ triangle costs ++ extra costs`, model.atoms). A reused record whose cost
   has a larger threshold on the target cell is rewritten with `q_ref = q_tgt + δ` (`δ > 0`), so the
   expanded polynomial is unchanged; every cell's expansion is compared with the checker's
   residual and its monomial bound rechecked. Writes data/nine/six_single_top/cNNN.txt.
3. Writes the cover trees as Lean modules Heilbronn/Nine/SixBoundary/SingleTop/Trees/ChunkN.lean, each with a
   kernel check of its cases, and Heilbronn/Nine/SixBoundary/SingleTop/Trees.lean collecting them.

usage: export.py [--only N]   (N: export just the first N cases into one test chunk)
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
import check_six_boundary_single_top as Ck  # noqa: E402

DATA = ROOT / 'data' / 'nine' / 'six_single_top'
LEAN = ROOT / 'Heilbronn' / 'Nine' / 'SixBoundary' / 'SingleTop' / 'Trees'
CHUNK_TERMS = 2500
CUTS = {213: (4, F(1, 2)), 271: (3, F(7, 8)), 274: (10, F(1, 2))}


def crosscheck():
    assert M.WORDS == [list(w) for w in Ck.WORDS]
    assert len(M.ALL_WORDS) == 57 and M.ALL_WORDS == [list(w) for w in Ck.ALL_WORDS]
    assert M.CASES == Ck.CASES and len(M.CASES) == 884
    for ci, (i, j) in enumerate(M.CASES):
        assert dict(M.base_signs(i, j)) == {t: s == 1 for t, s in Ck.base_signs(ci).items()}, ci
        known = {t for t, _ in M.base_signs(i, j)}
        sv = [vv for vv in range(7) if (vv, 7, 8) not in known]
        if ci in Ck.SPLIT_CASES:
            assert sv == Ck.split_vertices(ci)
    print('cross-check of words, pairs and signs: PASS')


def cell_lean(cell):
    """The sign facts, cut atoms and Lean atoms of a checker cell."""
    ci, bits, direction = cell
    p, q = M.CASES[ci]
    sv = Ck.split_vertices(ci)
    sfs = [((vv, 7, 8), bool(bits >> j & 1)) for j, vv in enumerate(sv)]
    cuts = []
    cut = Ck.scalar_cut(ci, bits)
    if cut:
        var, val = cut
        cuts = [certlib.k(val) - certlib.v(var)] if direction == -1 else \
            [certlib.v(var) - certlib.k(val)]
    atoms, tb, nf = M.atoms(p, q, sfs, cuts)
    return atoms, tb, nf


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


def cell_terms(cell, cert):
    atoms, tb, nf = cell_lean(cell)
    ci = cell[0]
    p, q = M.CASES[ci]
    # factor lookup by polynomial
    fidx = {}
    for i in range(nf):
        fidx.setdefault(poly_sig(atoms[i]), i)
    # cost lookup by (kind, tri, sign)
    cidx = {}
    for n, (t, sg) in enumerate(tb):
        cnt = len(M.inside_list(tb, [7, 8], (t, sg)))
        cidx[('area', t, 1 if sg else -1)] = (nf + n, M.bnd(cnt))
    m = M.mixed(p, q)
    base = nf + len(tb)
    cidx[('hc', (), 1)] = (base, F(7, 11) if m else 4 * M.SQ)
    cidx[('W', (), 1)] = (base + 1, 4 * M.SQ if m else 8 * M.SQ)
    cidx[('delta', (), 1)] = (base + 2, M.SQ)
    for e, t in enumerate(M.EARS):
        cidx[('area', t, -1)] = (base + 3 + e, F(-13, 16))
    ref = tuple(cert['cell'])
    rfac = Ck.factors(ref)
    rspec = Ck.cost_specs(ref)
    sc = cert['scale']
    terms = []

    def fmap(i):
        return fidx[tuple(sorted(certlib.rat_value_poly(lean_factor(rfac[i])).items()))]
    for term in cert['terms']:
        if term[0] == 'f':
            _, ids, w = term
            terms.append((F(w, sc), [fmap(i) for i in ids]))
        else:
            _, qi, fi, w = term
            kind, tr, sg, bound = rspec[qi]
            idx, tbound = cidx[(kind, tr, sg)]
            assert tbound >= bound
            fl = [fmap(fi)] if fi != -1 else []
            terms.append((F(w, sc), [idx] + fl))
            if tbound > bound:
                terms.append((F(w, sc) * (tbound - bound), fl))
    return atoms, terms


def lean_factor(p):
    """A checker polynomial (dict of monomial tuples) as a certlib expression (sum of terms)."""
    e = certlib.k(0)
    for m, c in sorted(p.items()):
        t = certlib.k(c)
        for i in m:
            t = t * certlib.v(i)
        e = e + t
    return e


def export_cells(cover, certs):
    out = {}
    for n, (cell, ci) in enumerate(zip(Ck.CELLS, cover)):
        cert = certs[ci]
        assert Ck.applies(cert, cell)
        atoms, terms = cell_terms(cell, cert)
        # the expansion is the checker's residual of the record
        total = {}
        for w, idx in terms:
            pl = {0: F(1)}
            for i in idx:
                pl = certlib._pmul(pl, certlib.rat_value_poly(atoms[i]))
            total = certlib._padd(total, certlib._pscale(w, pl))
        assert total == ck_poly_to_key(Ck.residual(cert)), n
        W = certlib.integer_weights(atoms, terms)
        assert certlib.check(atoms, W), n
        out[cell] = W
    return out


def lean_case_tree(ci, cell_file):
    sv = Ck.split_vertices(ci)
    cut = CUTS.get(ci)

    def leaf(bits, direction):
        return '.cert (term_rows%% "../../../../../data/nine/six_single_top/%s")' % cell_file(
            (ci, bits, direction))

    def cutnode(bits):
        c = Ck.scalar_cut(ci, bits)
        if not c:
            return leaf(bits, 0)
        var, val = c
        return '.node (.cut %d (%d / %d)) [%s, %s]' % (var, val.numerator, val.denominator,
                                                     leaf(bits, -1), leaf(bits, 1))
    if not sv:
        return cutnode(0)
    if len(sv) == 1:
        return '.node (.tri %d 7 8) [%s, %s]' % (sv[0], cutnode(0), cutnode(1))
    assert len(sv) == 2
    inner = lambda b0: '.node (.tri %d 7 8) [%s, %s]' % (sv[1], cutnode(b0), cutnode(b0 | 2))  # noqa: E731
    return '.node (.tri %d 7 8) [%s, %s]' % (sv[0], inner(0), inner(1))


def main():
    only = int(sys.argv[sys.argv.index('--only') + 1]) if '--only' in sys.argv else None
    crosscheck()
    data = json.loads((ROOT / 'docs' / 'proof' / 'nine' / 'six_boundary_single_top_certificates.json').read_text())
    certs, cover = data['certificates'], data['cover']
    DATA.mkdir(parents=True, exist_ok=True)
    LEAN.mkdir(parents=True, exist_ok=True)
    cells = list(Ck.CELLS)
    cellno = {c: n for n, c in enumerate(cells)}
    name = lambda c: 'c%03d.txt' % cellno[c]  # noqa: E731
    ncases = only if only else len(M.CASES)
    use = [(c, ci) for c, ci in zip(cells, cover) if c[0] < ncases]
    Ws = {}
    for cell, ci in use:
        cert = certs[ci]
        assert Ck.applies(cert, cell)
        atoms, terms = cell_terms(cell, cert)
        total = {}
        for w, idx in terms:
            pl = {0: F(1)}
            for i in idx:
                pl = certlib._pmul(pl, certlib.rat_value_poly(atoms[i]))
            total = certlib._padd(total, certlib._pscale(w, pl))
        assert total == ck_poly_to_key(Ck.residual(cert)), cell
        W = certlib.integer_weights(atoms, terms)
        assert certlib.check(atoms, W), cell
        Ws[cell] = W
        certlib.write_terms(DATA / name(cell), W)
    total = sum(len(W) for W in Ws.values())
    print('exported %d cells, %d terms' % (len(Ws), total))
    cases = []
    for ci in range(ncases):
        size = sum(len(W) for c, W in Ws.items() if c[0] == ci)
        cases.append((ci, M.CASES[ci], lean_case_tree(ci, name), size))
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
        lines = ['module', '', 'public import Heilbronn.Nine.SixBoundary.SingleTop.Model',
                 'public import Heilbronn.Common.DataReader', '',
                 '/-! # Single-top cover, chunk %d (generated by '
                 '`scripts/nine/six_single_top/export.py`)' % n, '',
                 'The cell trees of %d base pairs of '
                 '`docs/proof/nine/six_boundary_single_top_certificates.json` (%d certificate terms), each '
                 'checked by the kernel in its own theorem. -/' % (len(chunk), sum(c[3] for c in chunk)), '',
                 '@[expose] public section', '',
                 'namespace Heilbronn.Nine.SixBoundarySingleTop.Trees', '', 'open Cover Model', '']
        for j, c in enumerate(chunk):
            lines += ['/-- The cell tree of the base pair %d, words %s. -/' % (c[0], list(c[1])),
                      'noncomputable def tree%d_%d : Cover.Tree Split :=' % (n, j), '  ' + c[2],
                      '',
                      'theorem tree%d_%d_ok : checkTree (spec %d %d) [] tree%d_%d = true := by'
                      % (n, j, c[1][0], c[1][1], n, j),
                      '  decide +kernel', '']
        lines += ['/-- The base pairs of chunk %d with their trees. -/' % n,
                  'noncomputable def chunk%d : List ((ℕ × ℕ) × Cover.Tree Split) :=' % n]
        lines.append('  [' + ',\n    '.join('((%d, %d), tree%d_%d)' % (c[1][0], c[1][1], n, j)
                                            for j, c in enumerate(chunk)) + ']')
        oks = ', '.join('tree%d_%d_ok' % (n, j) for j in range(len(chunk)))
        lines += ['', 'theorem chunk%d_ok :' % n,
                  '    chunk%d.all (fun p => checkTree (spec p.1.1 p.1.2) [] p.2) = true := by' % n,
                  '  simp only [chunk%d, List.all_cons, List.all_nil, %s, Bool.and_true]' % (n, oks),
                  '', 'end Heilbronn.Nine.SixBoundarySingleTop.Trees', '']
        (LEAN / ('Chunk%d.lean' % n)).write_text('\n'.join(lines))
        print('chunk %d: %d cases, %d terms' % (n, len(chunk), sum(c[3] for c in chunk)))
    if not only:
        write_collector(len(chunks))
    return len(chunks)


def write_collector(nchunks):
    imports = ['public import Heilbronn.Nine.SixBoundary.SingleTop.Trees.Chunk%d' % n for n in range(nchunks)]
    alls = ' ++ '.join('chunk%d' % n for n in range(nchunks))
    oks = ', '.join('chunk%d_ok' % n for n in range(nchunks))
    text = '\n'.join(['module', ''] + imports + [
        '', '/-! # Single-top cover: all base pairs (generated by `scripts/nine/six_single_top/export.py`)',
        '', 'The cell trees of the 884 base pairs of `docs/proof/nine/six_boundary_single_top_certificates.json`,',
        'collected from the chunks `Heilbronn.Nine.SixBoundary.SingleTop.Trees.ChunkN`, each checked there by',
        'the kernel. -/', '', '@[expose] public section', '',
        'namespace Heilbronn.Nine.SixBoundarySingleTop.Trees', '', 'open Cover Model', '',
        '/-- All the base pairs with their cell trees. -/',
        'noncomputable def allCases : List ((ℕ × ℕ) × Cover.Tree Split) :=',
        '  ' + alls, '',
        'theorem allCases_ok : ∀ p ∈ allCases, checkTree (spec p.1.1 p.1.2) [] p.2 = true := by',
        '  intro p hp',
        '  have h : allCases.all (fun p => checkTree (spec p.1.1 p.1.2) [] p.2) = true := by',
        '    simp only [allCases, List.all_append, %s, Bool.and_self]' % oks,
        '  exact List.all_eq_true.1 h p hp', '',
        '/-- The base pairs covered are the model\'s `cases`. -/',
        'theorem allCases_keys : allCases.map Prod.fst = cases := by decide +kernel', '',
        'end Heilbronn.Nine.SixBoundarySingleTop.Trees', ''])
    (LEAN.parent / 'Trees.lean').write_text(text)


if __name__ == '__main__':
    main()
