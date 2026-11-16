#!/usr/bin/env python3
"""Python mirror of Heilbronn/Nine/C1/OneLower/ModelB.lean (group B of the one-lower packages).

Atoms of a table cell are `pre ++ [costAtom pt bnd f (insideList tb free f).length for f in tb]
++ post` (Lean `tableAtoms`). Expressions are certlib.E trees built exactly as in Lean.

`hull_table(n, ws)` mirrors `hullTable`; `convert` turns a hand-checker certificate into rational
terms over the Lean atoms of a target cell: a checker cost (t, sg, b_src) is the Lean cost of
(t, sg) with bound b_tgt >= b_src plus the nonnegative constant b_tgt - b_src (this realizes the
checkers' reuse rule).
"""
import sys
from fractions import Fraction as F
from pathlib import Path

ROOT = Path(__file__).resolve().parents[3]
sys.path.insert(0, str(ROOT / 'scripts'))
sys.path.insert(0, str(ROOT / 'docs' / 'proof' / 'nine'))
from certlib import E, v, k, esarea  # noqa: E402,F401
import certlib  # noqa: E402

N = lambda n: E.lift(n)  # noqa: E731  Lean numerals (OfNat) are `const n`
SQ = F(8, 73)
RHO = F(49, 60)


def bnd(n):
    return F(8, 73) if n == 0 else F(24, 73) if n == 1 else F(49, 60)


LEX = [(a, b, c) for a in range(9) for b in range(9) for c in range(9) if a < b < c]


def lookup(tb, t):
    for key, sg in tb:
        if key == t:
            return sg
    return None


def oriented_lookup(tb, a, b, c):
    if a < b < c:
        return lookup(tb, (a, b, c))
    if b < c < a:
        return lookup(tb, (b, c, a))
    if c < a < b:
        return lookup(tb, (c, a, b))
    flip = lambda s: None if s is None else (not s)  # noqa: E731
    if b < a < c:
        return flip(lookup(tb, (b, a, c)))
    if a < c < b:
        return flip(lookup(tb, (a, c, b)))
    if c < b < a:
        return flip(lookup(tb, (c, b, a)))
    return None


def inside_list(tb, free, f):
    (a, b, c), sg = f
    return [j for j in free if oriented_lookup(tb, a, b, j) == sg
            and oriented_lookup(tb, b, c, j) == sg and oriented_lookup(tb, c, a, j) == sg]


def cost_atom(pt, f, n):
    (a, b, c), sg = f
    e = esarea(pt(a), pt(b), pt(c))
    return (e if sg else k(-1) * e) - k(bnd(n))


def table_atoms(pre, post, pt, free, tb):
    """Lean `tableAtoms`; also returns {(t, sg): (index, bound)} for the costs."""
    costs, index = [], {}
    for f in tb:
        n = len(inside_list(tb, free, f))
        index.setdefault(f, (len(pre) + len(costs), bnd(n)))
        costs.append(cost_atom(pt, f, n))
    return pre + costs + post, index


def hsign(n, w, i, j):
    return ((j + n - i) % n) <= w[i]


def hinside(n, w, a, b, c):
    return hsign(n, w, a, b) and hsign(n, w, b, c) and hsign(n, w, c, a)


def hull_table(n, ws):
    """Lean `hullTable n ws`."""
    out = []
    for t in LEX:
        if t[2] < n:
            out.append((t, True))
        elif t[1] < n:
            out.append((t, hsign(n, ws[t[2] - n], t[0], t[1])))
    m = len(ws)
    for a in range(m):
        for b in range(m):
            if a < b:
                for vv in range(n):
                    x, y = ws[a][vv], ws[b][vv]
                    if x != y:
                        out.append(((vv, n + a, n + b), x < y))
    return out


def convert(cert, qmap, cmap=None):
    """Rational terms over Lean atoms.

    qmap(qi) -> (lean_index, extra) where extra = b_tgt - b_src >= 0 (0 if exact);
    cmap(ci) -> lean index of the cubic cost ci."""
    out = []
    scale = cert['scale']
    for term in cert['terms']:
        if term[0] == 'f':
            out.append((F(term[2], scale), list(term[1])))
        elif term[0] == 'q':
            _, qi, fi, w = term
            li, extra = qmap(qi)
            assert extra >= 0
            fac = [fi] if fi >= 0 else []
            out.append((F(w, scale), [li] + fac))
            if extra:
                out.append((F(w, scale) * extra, fac))
        else:
            ci, w = (term[1], term[2]) if len(term) == 3 else (0, term[1])
            out.append((F(w, scale), [cmap(ci)]))
    merged = {}
    for w, idx in out:
        key = tuple(sorted(idx))
        merged[key] = merged.get(key, 0) + w
    return [(w, list(key)) for key, w in merged.items()]


def lean_rows(path):
    return '(term_rows%% "%s")' % path


def checker_poly(p):
    """A hand-checker polynomial (dict sorted-variable-tuple -> Fraction) in certlib keys."""
    out = {}
    for m, c in p.items():
        key = sum(certlib.BASE ** i for i in m)
        out[key] = out.get(key, 0) + c
    return {m: c for m, c in out.items() if c}


def same_poly(e, p):
    """The Lean expression e equals the hand-checker polynomial p."""
    return certlib.rat_value_poly(e) == checker_poly(p)


def lean_expr_list(atoms, indent='    '):
    return '[' + (',\n' + indent).join(certlib.lean(a) for a in atoms) + ']'


def write_chunks(lean_dir, module_prefix, namespace, model_import, key_type, cells, doc,
                 chunk_terms=2600, spec_call='spec', split_type='C1ZeroLower.Model.Split'):
    """Write Lean tree chunks and a collector.

    cells: list of (key_lean, tree_lean, nterms, key_python); each chunk module defines
    `chunkN : List (key_type × Tree)` with a kernel check, the collector `allCases` and
    `allCases_ok : ∀ p ∈ allCases, checkTree (spec_call p.1) [] p.2 = true`."""
    lean_dir.mkdir(parents=True, exist_ok=True)
    chunks, cur, size = [], [], 0
    for c in cells:
        if cur and size + c[2] > chunk_terms:
            chunks.append(cur)
            cur, size = [], 0
        cur.append(c)
        size += c[2]
    if cur:
        chunks.append(cur)
    base = module_prefix.split('.')[-1]
    for n, chunk in enumerate(chunks):
        lines = ['module', '', 'public import %s' % model_import,
                 'public import Heilbronn.Common.DataReader', '',
                 '/-! # %s, chunk %d (generated)' % (doc, n), '',
                 '%d cells, %d certificate terms, checked by the kernel. -/' %
                 (len(chunk), sum(c[2] for c in chunk)), '',
                 '@[expose] public section', '', 'namespace %s' % namespace, '', 'open Cover', '']
        for j, c in enumerate(chunk):
            lines += ['/-- The tree of the cell `%s`. -/' % c[0],
                      'noncomputable def tree%d_%d : Cover.Tree %s :=' % (n, j, split_type),
                      '  ' + c[1], '']
        lines += ['/-- The cells of chunk %d with their trees. -/' % n,
                  'noncomputable def chunk%d : List ((%s) × Cover.Tree %s) :=' % (n, key_type, split_type),
                  '  [' + ',\n    '.join('(%s, tree%d_%d)' % (c[0], n, j) for j, c in enumerate(chunk)) + ']',
                  '', 'theorem chunk%d_ok : chunk%d.all (fun p => checkTree (%s p.1) [] p.2) = true := by' % (n, n, spec_call),
                  '  decide +kernel', '', 'end %s' % namespace, '']
        (lean_dir / ('Chunk%d.lean' % n)).write_text('\n'.join(lines))
    imports = ['public import %s.Chunk%d' % (module_prefix, n) for n in range(len(chunks))]
    allc = ' ++\n    '.join(' ++ '.join('chunk%d' % n for n in range(i, min(i + 7, len(chunks))))
                            for i in range(0, len(chunks), 7))
    oks = ',\n      '.join(', '.join('chunk%d_ok' % n for n in range(i, min(i + 6, len(chunks))))
                           for i in range(0, len(chunks), 6))
    keys = [c[0] for c in cells]
    text = '''module

%s

/-! # %s: all cells (generated)

The trees of the %d cells, collected from the chunks, each checked there by the kernel. -/

@[expose] public section

namespace %s

open Cover

/-- All the cells with their trees. -/
noncomputable def allCases : List ((%s) × Cover.Tree %s) :=
  %s

theorem allCases_ok : ∀ p ∈ allCases, checkTree (%s p.1) [] p.2 = true := by
  intro p hp
  have h : allCases.all (fun p => checkTree (%s p.1) [] p.2) = true := by
    simp only [allCases, List.all_append, %s, Bool.and_self]
  exact List.all_eq_true.1 h p hp

/-- The keys of the cells. -/
def caseKeys : List (%s) := %s

theorem caseKeys_eq : allCases.map Prod.fst = caseKeys := by decide +kernel

end %s
''' % ('\n'.join(imports), doc, len(cells), namespace, key_type, split_type, allc, spec_call, spec_call, oks,
       key_type, '[' + ',\n    '.join(', '.join(k for k in keys[i:i + 6]) for i in range(0, len(keys), 6)) + ']',
       namespace)
    (lean_dir.parent / (base + '.lean')).write_text(text)
    return len(chunks)
