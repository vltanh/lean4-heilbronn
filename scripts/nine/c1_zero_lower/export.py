#!/usr/bin/env python3
"""Export the zero-lower C1 certificate package (docs/proof/nine/c1_zero_lower_certificates.json) for Lean.

1. Cross-checks the mirror model.py against the hand checker: base signs (order and values),
   three-top-cap seeds, strengthened cost bounds, and that every certificate's rational residual
   is the checker's.
2. Converts each certificate to integer weights for `Cert.check` on the Lean atom list
   `factors ++ qcosts ++ triangle costs ++ cubics` (certlib.integer_weights), rechecks the
   monomial bound, and writes data/nine/c1_zero_lower/cNNN.txt (term_rows% format).
3. Writes the cover trees as Lean modules Heilbronn/Nine/C1/ZeroLowerTrees/ChunkN.lean, each with a
   kernel check of its cases, and Heilbronn/Nine/C1/ZeroLowerTrees.lean collecting them.

usage: export.py [--only N]   (N: export just the first N cases into one test chunk)
"""
import json
import sys
from fractions import Fraction as F
from pathlib import Path

HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[2]
sys.path.insert(0, str(HERE))
import model as M  # noqa: E402
import certlib  # noqa: E402
import check_c1_zero_lower_certificates as Ck  # noqa: E402

DATA = ROOT / 'data' / 'nine' / 'c1_zero_lower'
LEAN = ROOT / 'Heilbronn' / 'Nine' / 'C1' / 'ZeroLowerTrees'
CHUNK_TERMS = 2600


def crosscheck():
    for ids in Ck.SURVIVORS:
        ks = list(ids)
        mine = M.base_signs(ks)
        theirs = [(t, sg == 1) for t, sg in Ck.base_signs(ids).items()]
        assert mine == theirs, ids
    for ids in [(3, 3, 3, 4), (3, 3, 3, 5), (3, 3, 3, 6), (3, 3, 3, 7)]:
        for i in range(3):
            mine = M.seed(list(ids), i)
            theirs = [(t, sg == 1) for t, sg in Ck.top_three_seed(ids, i)]
            assert mine == theirs, (ids, i)
    print('cross-check of signs and seeds: PASS')


def cert_terms(cert):
    ks = list(cert['case'])
    fs = [(tuple(t), sg == 1) for t, sg in cert['additional']]
    fac, qs, tri, cub = M.atoms(ks, fs)
    # bounds agree with the checker's cost_specs
    specs = Ck.cost_specs(tuple(ks), [(tuple(t), sg) for t, sg in cert['additional']])
    tb = M.base_signs(ks) + fs
    assert [(t, sg == 1) for t, sg, _ in specs] == tb
    assert [b for _, _, b in specs] == [M.bnd(len(M.inside_list(tb, [5, 6, 7, 8], f)))
                                        for f in tb]
    nf, nq = len(fac), len(qs) + len(tri)
    atoms = fac + qs + tri + cub
    terms = []
    for term in cert['terms']:
        if term[0] == 'f':
            terms.append((F(term[2], cert['scale']), list(term[1])))
        elif term[0] == 'q':
            terms.append((F(term[3], cert['scale']), [nf + term[1]] + ([term[2]] if term[2] >= 0
                                                                        else [])))
        else:
            terms.append((F(term[2], cert['scale']), [nf + nq + term[1]]))
    W = certlib.integer_weights(atoms, terms)
    assert certlib.check(atoms, W), cert['case']
    return W


def lean_tree(nodes, idx, cert_file):
    node = nodes[idx]
    if 'split' in node:
        a, b, c = node['split']
        return '.node (.tri %d %d %d) [%s, %s]' % (
            a, b, c, lean_tree(nodes, node['negative'], cert_file),
            lean_tree(nodes, node['positive'], cert_file))
    assert node['leaf'] == 'certificate'
    return '.cert (term_rows%% "../../../../data/nine/c1_zero_lower/%s")' % cert_file(node['certificate'])


def main():
    only = int(sys.argv[sys.argv.index('--only') + 1]) if '--only' in sys.argv else None
    crosscheck()
    data = json.loads((ROOT / 'docs' / 'proof' / 'nine' / 'c1_zero_lower_certificates.json').read_text())
    certs = data['certificates']
    DATA.mkdir(parents=True, exist_ok=True)
    LEAN.mkdir(parents=True, exist_ok=True)
    name = lambda i: 'c%03d.txt' % i  # noqa: E731
    covers = data['cover'][:only] if only else data['cover']
    used = set()
    cases = []
    for cv in covers:
        def leaves(nodes):
            return [n['certificate'] for n in nodes if 'leaf' in n]
        if 'top_three' in cv:
            trees = cv['top_three']
            body = '.node .three [%s]' % ', '.join(lean_tree(t, 0, name) for t in trees)
            ls = [c for t in trees for c in leaves(t)]
        else:
            body = lean_tree(cv['tree'], 0, name)
            ls = leaves(cv['tree'])
        used.update(ls)
        cases.append((cv['case'], body, sum(len(certs[c]['terms']) for c in ls)))
    total = 0
    for ci in sorted(used):
        W = cert_terms(certs[ci])
        certlib.write_terms(DATA / name(ci), W)
        total += len(W)
    print('exported %d certificates, %d terms' % (len(used), total))
    # chunks
    chunks, cur, size = [], [], 0
    for c in cases:
        if cur and size + c[2] > CHUNK_TERMS:
            chunks.append(cur)
            cur, size = [], 0
        cur.append(c)
        size += c[2]
    if cur:
        chunks.append(cur)
    for n, chunk in enumerate(chunks):
        lines = ['module', '', 'public import Heilbronn.Nine.C1.ZeroLowerModel',
                 'public import Heilbronn.Common.DataReader', '',
                 '/-! # Zero-lower C1 cover, chunk %d (generated by '
                 '`scripts/nine/c1_zero_lower/export.py`)' % n, '',
                 'The sign trees of %d word cases of `docs/proof/nine/c1_zero_lower_certificates.json` '
                 '(%d certificate terms), checked by the kernel. -/' %
                 (len(chunk), sum(c[2] for c in chunk)), '',
                 '@[expose] public section', '',
                 'namespace Heilbronn.Nine.C1ZeroLower.Trees', '', 'open Cover Model', '',
                 '/-- The cases of chunk %d with their trees. -/' % n,
                 'def chunk%d : List (List ℕ × Cover.Tree Split) := [' % n]
        lines[-2:] = []
        for j, c in enumerate(chunk):
            lines += ['/-- The sign tree of the case %s. -/' % list(c[0]),
                      'noncomputable def tree%d_%d : Cover.Tree Split :=' % (n, j), '  ' + c[1], '']
        lines += ['/-- The cases of chunk %d with their trees. -/' % n,
                  'noncomputable def chunk%d : List (List ℕ × Cover.Tree Split) :=' % n]
        lines.append('  [' + ',\n    '.join('(%s, tree%d_%d)' % (list(c[0]), n, j)
                                            for j, c in enumerate(chunk)) + ']')
        lines += ['', 'theorem chunk%d_ok : chunk%d.all (fun p => checkTree (spec p.1) [] p.2) = true'
                  ' := by' % (n, n), '  decide +kernel', '', 'end Heilbronn.Nine.C1ZeroLower.Trees', '']
        (LEAN / ('Chunk%d.lean' % n)).write_text('\n'.join(lines))
        print('chunk %d: %d cases, %d terms' % (n, len(chunk), sum(c[2] for c in chunk)))
    if not only:
        write_collector(len(chunks), [c[0] for c in cases])
    return len(chunks)


def write_collector(nchunks, keys):
    imports = ['public import Heilbronn.Nine.C1.ZeroLowerTrees.Chunk%d' % n for n in range(nchunks)]
    allc = ' ++\n    '.join(' ++ '.join('chunk%d' % n for n in range(i, min(i + 7, nchunks)))
                            for i in range(0, nchunks, 7))
    oks = ',\n      '.join(', '.join('chunk%d_ok' % n for n in range(i, min(i + 6, nchunks)))
                           for i in range(0, nchunks, 6))
    text = '''module

%s

/-! # Zero-lower C1 cover: all cases (generated by `scripts/nine/c1_zero_lower/export.py`)

The sign trees of the %d word cases of `docs/proof/nine/c1_zero_lower_certificates.json`, collected from the
chunks `Heilbronn.Nine.C1.ZeroLowerTrees.ChunkN`, each checked there by the kernel. -/

@[expose] public section

namespace Heilbronn.Nine.C1ZeroLower.Trees

open Cover Model

/-- All the cases with their sign trees. -/
noncomputable def allCases : List (List ℕ × Cover.Tree Split) :=
  %s

theorem allCases_ok : ∀ p ∈ allCases, checkTree (spec p.1) [] p.2 = true := by
  intro p hp
  have h : allCases.all (fun p => checkTree (spec p.1) [] p.2) = true := by
    simp only [allCases, List.all_append, %s, Bool.and_self]
  exact List.all_eq_true.1 h p hp

/-- The word cases covered (the checker's `SURVIVORS`). -/
def caseKeys : List (List ℕ) := %s

theorem caseKeys_eq : allCases.map Prod.fst = caseKeys := by decide +kernel

end Heilbronn.Nine.C1ZeroLower.Trees
''' % ('\n'.join(imports), len(keys), allc, oks,
       '[' + ',\n    '.join(', '.join(str(list(k)) for k in keys[i:i + 6])
                         for i in range(0, len(keys), 6)) + ']')
    (ROOT / 'Heilbronn' / 'Nine' / 'C1' / 'ZeroLowerTrees.lean').write_text(text)


if __name__ == '__main__':
    main()
