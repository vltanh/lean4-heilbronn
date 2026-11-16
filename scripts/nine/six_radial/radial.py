"""Python mirror of Heilbronn/Nine/SixBoundary/RadialCover.lean (generic radial-word certificate covers).

A package: n (hull polygon 0..n-1), N points, pt(i) -> (E, E), factors, base signed triangles,
bnd(m), free points, extra(tb) -> [E].  Facts: ('s', ((a, b, c), sg)) or ('e', expr).
Atoms of a case: factors ++ tier 2 ++ tier 0 ++ tier 1 ++ extra(table) ++ cut atoms.
"""
import sys
from itertools import combinations
from pathlib import Path

ROOT = Path(__file__).resolve().parents[3]
sys.path.insert(0, str(ROOT / 'scripts'))
from certlib import E, v, k, esarea, lean  # noqa: E402,F401

N0 = E.lift


def lex_triples(N):
    return list(combinations(range(N), 3))


def lookup(tb, t):
    for f in tb:
        if f[0] == t:
            return f[1]
    return None


def oriented_lookup(tb, a, b, c):
    if a < b < c:
        return lookup(tb, (a, b, c))
    if b < c < a:
        return lookup(tb, (b, c, a))
    if c < a < b:
        return lookup(tb, (c, a, b))
    for (p, q, r) in [(b, a, c), (a, c, b), (c, b, a)]:
        if p < q < r:
            x = lookup(tb, (p, q, r))
            return None if x is None else (not x)
    return None


def inside_list(tb, free, f):
    (a, b, c), sg = f
    return [j for j in free if oriented_lookup(tb, a, b, j) == sg and
            oriented_lookup(tb, b, c, j) == sg and oriented_lookup(tb, c, a, j) == sg]


def orient(a, b, c, sg):
    if a < b < c:
        return ((a, b, c), sg)
    if b < c < a:
        return ((b, c, a), sg)
    if c < a < b:
        return ((c, a, b), sg)
    if b < a < c:
        return ((b, a, c), not sg)
    if a < c < b:
        return ((a, c, b), not sg)
    return ((c, b, a), not sg)


def branch_facts(n, p, i, val):
    return [orient(i, (i + j + 1) % n, p, j + 1 <= val) for j in range(n - 1)]


def word_facts(n, p, w):
    out = []
    for i in range(n):
        out += branch_facts(n, p, i, w[i])
    return out


def consistent(tb, b):
    return all(lookup(tb, f[0]) in (None, f[1]) for f in b)


class Pkg:
    def __init__(self, n, N, pt, factors, base, bnd, free, extra):
        self.n, self.N, self.pt, self.factors, self.base = n, N, pt, factors, base
        self.bnd, self.free, self.extra = bnd, free, extra
        self.lex = lex_triples(N)

    def table(self, fs):
        return self.base + [f[1] for f in fs if f[0] == 's']

    def cost_atom(self, f, m):
        (a, b, c), sg = f
        e = esarea(self.pt(a), self.pt(b), self.pt(c))
        return (e if sg else k(-1) * e) - k(self.bnd(m))

    def tier(self, m, tb):
        out = []
        for t in self.lex:
            sg = lookup(tb, t)
            if sg is None:
                out.append(k(0))
            else:
                out.append(self.cost_atom((t, sg), min(m, len(inside_list(tb, self.free, (t, sg))))))
        return out

    def atoms(self, fs):
        tb = self.table(fs)
        return (list(self.factors) + self.tier(2, tb) + self.tier(0, tb) + self.tier(1, tb) +
                list(self.extra(tb)) + [f[1] for f in fs if f[0] == 'e'])

    def offsets(self, fs):
        """Start indices of the blocks: factors, tier2, tier0, tier1, extra, cuts."""
        nf, L = len(self.factors), len(self.lex)
        tb = self.table(fs)
        ne = len(self.extra(tb))
        return {'f': 0, 't2': nf, 't0': nf + L, 't1': nf + 2 * L, 'x': nf + 3 * L,
                'c': nf + 3 * L + ne}

    def vertex_branches(self, fs, p, i):
        tb = self.table(fs)
        out = []
        for val in range(1, self.n - 1):
            b = branch_facts(self.n, p, i, val)
            if consistent(tb, b):
                out.append((val, b))
        return out

    def enum_tree(self, p, order, fs=None, assigned=None):
        """('node', p, i, [(val, child)]) or ('word', tuple)."""
        fs = fs or []
        assigned = assigned or {}
        if len(assigned) == self.n:
            return ('word', tuple(assigned[i] for i in range(self.n)))
        i = order[len(assigned)]
        kids = []
        for val, b in self.vertex_branches(fs, p, i):
            a = dict(assigned)
            a[i] = val
            kids.append((val, self.enum_tree(p, order, fs + [('s', f) for f in b], a)))
        return ('node', p, i, kids)


def tree_words(t):
    if t[0] == 'word':
        return [t[1]]
    out = []
    for _, c in t[3]:
        out += tree_words(c)
    return out


def count_nodes(t):
    if t[0] == 'word':
        return 0
    return 1 + sum(count_nodes(c) for _, c in t[3])


def lean_enum_tree(t, index):
    if t[0] == 'word':
        return '.closed %d' % index[t[1]]
    return '.node (.vertex %d %d) [%s]' % (t[1], t[2], ', '.join(lean_enum_tree(c, index)
                                                               for _, c in t[3]))


def lean_words(words):
    return '[' + ',\n    '.join('[' + ', '.join(map(str, w)) + ']' for w in words) + ']'


def lean_enum_tree_nat(t, index):
    if t[0] == 'word':
        return '.closed %d' % index[t[1]]
    return '.node %d [%s]' % (t[2], ', '.join(lean_enum_tree_nat(c, index) for _, c in t[3]))


def lean_enum_module(tree, index, n, p, pkg, words_name, ns, mod_doc, imports):
    """A module checking the enumeration `tree` in depth-two pieces."""
    i0 = tree[2]
    out = ['module\n\n%s\n/-! # %s (generated) -/\n\n@[expose] public section\n\nnamespace %s\n\n'
           'open Cert Cert.Expr Cover SixRadial\n\n' % (imports, mod_doc, ns)]
    spec = '(%s.enumSpec %d %s)' % (pkg, p, words_name)
    kids0 = []
    for v0, c0 in tree[3]:
        assert c0[0] == 'node'
        i1 = c0[2]
        names = []
        for v1, c1 in c0[3]:
            nm = 'enumSub_%d_%d' % (v0, v1)
            names.append(nm)
            fs = '[] ++ branchFacts %d %d %d %d ++ branchFacts %d %d %d %d' % (n, p, i0, v0, n, p, i1, v1)
            out.append('/-- The enumeration below `r_%d = %d`, `r_%d = %d`. -/\n'
                       'def %s : Cover.Tree ℕ :=\n  %s\n\n'
                       'theorem %s_ok : checkTree %s (%s) %s = true := by\n  decide +kernel\n\n'
                       % (i0, v0, i1, v1, nm, lean_enum_tree_nat(c1, index), nm, spec, fs, nm))
        out.append('theorem enumBr_%d : %s.enumBranches %d ([] ++ branchFacts %d %d %d %d) %d = [%s] := by\n'
                   '  decide +kernel\n\n' % (v0, pkg, p, n, p, i0, v0, i1,
                                              ', '.join('branchFacts %d %d %d %d' % (n, p, i1, v1)
                                                        for v1, _ in c0[3])))
        kids0.append((v0, i1, names))
    out.append('theorem enumBr_root : %s.enumBranches %d [] %d = [%s] := by\n  decide +kernel\n\n'
               % (pkg, p, i0, ', '.join('branchFacts %d %d %d %d' % (n, p, i0, v0) for v0, _ in tree[3])))
    out.append('/-- The enumeration of the words. -/\ndef enumTree : Cover.Tree ℕ :=\n  .node %d [%s]\n\n'
               % (i0, ',\n    '.join('.node %d [%s]' % (i1, ', '.join(nm)) for _, i1, nm in kids0)))
    # `Bool.and_eq_true` splits the conjunction of two or more children (unused for one child)
    out.append('theorem enum_ok : checkTree %s [] enumTree = true := by\n'
               '  rw [enumTree, checkTree_node, show %s.branches = %s.enumBranches %d from rfl, enumBr_root]\n'
               '  simp only [checkChildren_cons, checkChildren_nil, Bool.and_true%s]\n'
               '%s' % (spec, spec, pkg, p, ', Bool.and_eq_true' if len(kids0) > 1 else '',
                       ('  refine ⟨%s⟩\n' % ', '.join('?_' for _ in kids0)) if len(kids0) > 1 else ''))
    for v0, i1, nm in kids0:
        if nm:
            out.append('  · rw [checkTree_node, show %s.branches = %s.enumBranches %d from rfl, enumBr_%d]\n'
                       '    simp only [checkChildren_cons, checkChildren_nil, Bool.and_true%s]\n'
                       '    exact %s\n' % (spec, pkg, p, v0, ', Bool.and_eq_true' if len(nm) > 1 else '',
                                          ('⟨%s⟩' % ', '.join(x + '_ok' for x in nm)) if len(nm) > 1 else nm[0] + '_ok'))
        else:
            out.append('  · rw [checkTree_node, show %s.branches = %s.enumBranches %d from rfl, enumBr_%d]\n'
                       '    rfl\n' % (spec, pkg, p, v0))
    out.append('\nend %s\n' % ns)
    return ''.join(out)
