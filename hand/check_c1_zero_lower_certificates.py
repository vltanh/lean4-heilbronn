"""Fixed rational polynomial certificates for the complete zero-lower C1 case.

No optimizer, floating arithmetic, or coordinate subdivision is used here.
The finite cover consists of anchor-ray words and binary signs of actual
triangles.  All polynomial coefficients are exact fractions.
"""
from fractions import Fraction as F
from itertools import product, combinations, combinations_with_replacement
import json
from pathlib import Path
from check_c1_zero_lower import verify_caps

VARIABLES = 'h c d f x0 y0 x1 y1 x2 y2 x3 y3'.split()
S, RHO, N = F(8, 73), F(49, 60), 5


def const(c):
    return {(): F(c)} if c else {}


def add(*polys):
    out = {}
    for p in polys:
        for m, c in p.items():
            out[m] = out.get(m, F(0)) + c
    return {m: c for m, c in out.items() if c}


def scale(p, c):
    return {m: F(c)*v for m, v in p.items() if c*v}


def sub(p, q):
    return add(p, scale(q, -1))


def mul(p, q):
    out = {}
    for m, c in p.items():
        for n, d in q.items():
            key = tuple(sorted(m+n))
            out[key] = out.get(key, F(0)) + c*d
    return {m: c for m, c in out.items() if c}


def area(P, Q, R):
    return sub(mul(sub(Q[0], P[0]), sub(R[1], P[1])),
               mul(sub(Q[1], P[1]), sub(R[0], P[0])))


VARS = [{(i,): F(1)} for i in range(12)]
h, c, d, f = VARS[:4]
XY = list(zip(VARS[4::2], VARS[5::2]))
ZERO, ONE = const(0), const(1)
POINTS = [(ZERO, ZERO), (c, ZERO), (ONE, d), (f, ONE), (ZERO, h)] + XY
TRIPLES = list(combinations(range(9), 3))
AREAS = {t: area(*(POINTS[i] for i in t)) for t in TRIPLES}
W = sub(ONE, mul(sub(h, d), sub(c, f)))


def sign(word, i, j):
    return (j-i) % N <= word[i]


def inside(word, triangle):
    return all(sign(word, triangle[i], triangle[(i+1) % 3]) for i in range(3))


ALL_WORDS = [w for w in product(range(N), repeat=N)
             if all((j <= w[i]) == (N-j > w[(i+j) % N])
                    for i in range(N) for j in range(1, N))]
WORDS, CATS = [], []
for word in ALL_WORDS:
    if not sign(word, 4, 1):
        continue
    negative_edges = [i for i in range(N) if not sign(word, i, (i+1) % N)]
    if len(negative_edges) > 1 or any(i in negative_edges for i in (0, 4)):
        continue
    WORDS.append(word)
    CATS.append(negative_edges[0] if negative_edges else -1)


def counts(ids):
    cats = [CATS[i] for i in ids]
    return tuple(cats.count(cat) for cat in (-1, 1, 2, 3))


def upper_sector(word):
    return sign(word, 4, 2), sign(word, 1, 3)


def upper_pair_signs(P, Q):
    pHD, qHD = (1 if sign(r, 4, 2) else -1 for r in (P, Q))
    pCF, qCF = (1 if sign(r, 1, 3) else -1 for r in (P, Q))
    assert (pHD, pCF) != (qHD, qCF)
    if pHD != qHD and pCF != qCF:
        return {4: -pHD, 2: pHD, 1: -pCF, 3: pCF}
    if pHD == qHD:
        isolated = 3 if pHD > 0 else 1
        side = pCF if isolated == 3 else -pCF
    else:
        isolated = 4 if pCF > 0 else 2
        side = -pHD if isolated == 4 else pHD
    return {v: side if v == isolated else -side for v in (1, 2, 3, 4)}


def conflicting(ids):
    for a, b in combinations(range(4), 2):
        if CATS[ids[a]] != -1 or CATS[ids[b]] != -1:
            continue
        p, q = WORDS[ids[a]], WORDS[ids[b]]
        forced = upper_pair_signs(p, q)
        if any(p[v] != q[v] and sg != (1 if p[v] < q[v] else -1)
               for v, sg in forced.items()):
            return True
    return False


def fan_excluded(ids):
    return any(sum(WORDS[i][0] == j for i in ids) > 2 for j in (1, 3))


def candidate_cases():
    out = []
    for ids in combinations_with_replacement(range(len(WORDS)), 4):
        ws = [WORDS[i] for i in ids]
        u, r, t, l = counts(ids)
        if u > 2 or r > 2 or t > 3 or l > 1:
            continue
        if r == 2 and (l or t > 1):
            continue
        if l and t > 1 or r and t > 2:
            continue
        if any(sum(inside(w, triangle) for w in ws) > 2
               for triangle in combinations(range(N), 3)):
            continue
        if sum(inside(w, (2, 3, 4)) for w in ws) > 1:
            continue
        upper = [w for i, w in zip(ids, ws) if CATS[i] == -1]
        if len(upper) == 2 and upper_sector(upper[0]) == upper_sector(upper[1]):
            continue
        if conflicting(ids):
            continue
        out.append(ids)
    return out


CASES = candidate_cases()
SURVIVORS = [ids for ids in CASES if not fan_excluded(ids)]


def factors(ids):
    u, r, t, l = counts(ids)
    out = [sub(h, const(S)), sub(c, const(S)), sub(ONE, h), sub(ONE, c),
           sub(d, const(S)), sub(const(1-S), d),
           sub(f, const(S)), sub(const(1-S), f),
           sub(h, d), sub(c, f), sub(d, f)]
    if t:
        out += [sub(const(F(67, 100)), f), sub(const(F(57, 65)), d)]
    if t >= 2:
        out += [sub(const(F(3, 7)), f), sub(const(F(41, 65)), d)]
    if t >= 3:
        out += [sub(const(F(13, 64)), f), sub(const(F(204, 715)), d)]
    if r:
        out += [sub(d, const(4*S)), sub(c, const(F(1, 7))), sub(const(F(6, 7)), c)]
    if r == 2:
        out += [sub(d, const(RHO)), sub(const(1-3*S), c)]
    if l:
        out += [sub(f, const(4*S)), sub(h, const(F(1, 7))), sub(const(F(6, 7)), h)]
    for i, (x, y) in zip(ids, XY):
        cat = CATS[i]
        out += [sub(x, const(S)), sub(y, const(S))]
        if cat == -1:
            out += [sub(const(1-S), x), sub(const(1-S), y)]
        elif cat == 1:
            out += [sub(ONE, x), sub(sub(d, y), const(S)), sub(sub(x, c), const(S))]
        elif cat == 2:
            out += [sub(ONE, x), sub(ONE, y), sub(sub(x, f), const(S)), sub(sub(y, d), const(S))]
        else:
            out += [sub(sub(f, x), const(F(8, 41))), sub(ONE, y),
                    sub(sub(y, h), const(F(8, 65))), sub(x, const(7*S/6))]
    return out


def base_signs(ids):
    ws = [WORDS[i] for i in ids]
    out = {}
    for triangle in TRIPLES:
        if triangle[2] < 5:
            out[triangle] = 1
        elif triangle[1] < 5:
            out[triangle] = 1 if sign(ws[triangle[2]-5], triangle[0], triangle[1]) else -1
    for a, b in combinations(range(4), 2):
        forced = upper_pair_signs(ws[a], ws[b]) if CATS[ids[a]] == CATS[ids[b]] == -1 else {}
        if ids[a] == ids[b]:
            forced[0] = 1
            if CATS[ids[a]] == 1:
                forced.update({1: 1, 2: -1})
        for v in range(5):
            sg = forced.get(v)
            if ws[a][v] != ws[b][v]:
                radial = 1 if ws[a][v] < ws[b][v] else -1
                assert sg is None or sg == radial
                sg = radial
            if sg is not None:
                out[(v, a+5, b+5)] = sg
    return out


def oriented_sign(signs, triangle):
    sg = signs.get(tuple(sorted(triangle)))
    if sg is None:
        return None
    inversions = sum(triangle[i] > triangle[j] for i in range(3) for j in range(i+1, 3))
    return sg if inversions % 2 == 0 else -sg


def cost_specs(ids, additional=()):
    signs = base_signs(ids)
    for triangle, sg in additional:
        triangle = tuple(triangle)
        assert triangle in AREAS and sg in (-1, 1)
        assert triangle not in signs or signs[triangle] == sg
        signs[triangle] = sg
    out = []
    for triangle, sg in signs.items():
        contained = sum(all(oriented_sign(signs, (triangle[i], triangle[(i+1) % 3], j)) == sg
                            for i in range(3))
                        for j in range(5, 9) if j not in triangle)
        if contained > 2:
            return None
        out.append((triangle, sg, (S, 3*S, RHO)[contained]))
    return out


def costs(ids, additional=()):
    u, r, t, l = counts(ids)
    out = []
    if u == 2:
        out.append(sub(W, const(8*S)))
    if r == 2:
        out.append(sub(mul(d, sub(ONE, c)), const(3*S)))
    if t >= 2:
        out.append(sub(mul(sub(ONE, d), sub(ONE, f)), const(3*S if t == 2 else F(7, 11))))
    specs = cost_specs(ids, additional)
    assert specs is not None
    out += [sub(scale(AREAS[triangle], sg), const(bound)) for triangle, sg, bound in specs]
    return out


def cubic_costs(ids):
    u, r, t, l = counts(ids)
    out = []
    if r:
        out.append(sub(mul(mul(d, c), sub(ONE, c)), const(S)))
    if l:
        out.append(sub(mul(mul(f, h), sub(ONE, h)), const(S)))
    return out


def residual(cert):
    ids = tuple(cert['case'])
    additional = [(tuple(t), sg) for t, sg in cert.get('additional', [])]
    fac, qs, cs = factors(ids), costs(ids, additional), cubic_costs(ids)
    assert type(cert['scale']) is int and cert['scale'] > 0
    out = {}
    for term in cert['terms']:
        if term[0] == 'f':
            _, indices, weight = term
            assert 1 <= len(indices) <= 3 and indices == sorted(indices)
            assert all(type(i) is int and 0 <= i < len(fac) for i in indices)
            p = const(1)
            for i in indices:
                p = mul(p, fac[i])
        elif term[0] == 'q':
            _, qi, fi, weight = term
            assert type(qi) is int and 0 <= qi < len(qs)
            assert type(fi) is int and -1 <= fi < len(fac)
            p = qs[qi]
            if fi >= 0:
                p = mul(p, fac[fi])
        else:
            assert term[0] == 'c'
            _, ci, weight = term
            assert type(ci) is int and 0 <= ci < len(cs)
            p = cs[ci]
        assert type(weight) is int and weight > 0
        out = add(out, scale(p, F(weight, cert['scale'])))
    assert all(len(m) <= 3 for m in out)
    return out


def cube_upper(p):
    return p.get((), F(0)) + sum((max(c, F(0)) for m, c in p.items() if m), F(0))


def cyclic_consistent(ids, additional):
    signs = base_signs(ids)
    signs.update((tuple(t), sg) for t, sg in additional)
    for a, b in combinations(range(5, 9), 2):
        seq = [signs[(v, a, b)] for v in range(5) if (v, a, b) in signs]
        if seq and sum(seq[j] != seq[(j+1) % len(seq)] for j in range(len(seq))) > 2:
            return False
    return True


def top_three_seed(ids, inner):
    """All three choices of the interior point from Lemma 3."""
    caps = [i+5 for i, word in enumerate(ids) if CATS[word] == 2]
    assert len(caps) == 3 and inner in range(3)
    T = caps[inner]
    R, U = [i for i in caps if i != T]
    signs = {}
    def assign(triangle, sg):
        inversions = sum(triangle[i] > triangle[j] for i in range(3) for j in range(i+1, 3))
        sorted_triangle = tuple(sorted(triangle))
        value = sg if inversions % 2 == 0 else -sg
        assert sorted_triangle not in signs or signs[sorted_triangle] == value
        signs[sorted_triangle] = value
    for vertex in range(5):
        assign((vertex, R, U), 1)
    for vertex in range(5, 9):
        if vertex not in (R, U):
            assign((R, U, vertex), 1)
    for vertex in (R, U):
        assign((2, vertex, T), 1)
        assign((3, vertex, T), -1)
    old = base_signs(ids)
    assert all(triangle not in old or old[triangle] == sg for triangle, sg in signs.items())
    return [(triangle, sg) for triangle, sg in signs.items() if triangle not in old]


def verify_identities():
    x, y = XY[0]
    # The two single-side-cap cubic inequalities.
    assert add(mul(c, scale(AREAS[(1, 2, 5)], -1)),
               mul(sub(ONE, c), AREAS[(0, 1, 5)])) == mul(mul(c, d), sub(x, c))
    assert add(mul(h, scale(AREAS[(3, 4, 5)], -1)),
               mul(sub(ONE, h), scale(AREAS[(0, 4, 5)], -1))) == mul(mul(f, h), sub(y, h))
    # Upper-point projection identities, with cyclic orders C,D,F and F,H,D.
    lhs = add(mul(sub(ONE, f), AREAS[(1, 2, 5)]),
              mul(sub(ONE, c), AREAS[(2, 3, 5)]))
    assert lhs == mul(AREAS[(1, 2, 3)], sub(ONE, x))
    lhs = add(mul(sub(ONE, d), AREAS[(3, 4, 5)]),
              mul(sub(ONE, h), AREAS[(2, 3, 5)]))
    assert lhs == mul(AREAS[(2, 3, 4)], sub(ONE, y))
    assert 1+S-S/(1-RHO) < RHO
    assert S/(1-4*S) == F(8, 41)
    assert S/(1-S) == F(8, 65)
    assert len(ALL_WORDS) == 16 and len(WORDS) == 11
    assert len(CASES) == 127 and len(SURVIVORS) == 112


def verify():
    verify_caps()
    verify_identities()
    data = json.loads(Path(__file__).with_name('c1_zero_lower_certificates.json').read_text())
    assert data['version'] == 1 and data['variables'] == VARIABLES
    assert data['vertices'] == ['O', 'C', 'D', 'F', 'H', 'X0', 'X1', 'X2', 'X3']
    certs = data['certificates']
    worst, total_terms = None, 0
    for cert in certs:
        assert tuple(cert['case']) in SURVIVORS
        upper = cube_upper(residual(cert))
        assert upper == F(cert['upper_bound']) and upper < -F(3, 4)
        worst = upper if worst is None else max(worst, upper)
        total_terms += len(cert['terms'])
    covered = set()
    leaves = 0
    for cover in data['cover']:
        ids = tuple(cover['case'])
        assert ids in SURVIVORS and ids not in covered
        covered.add(ids)
        def check_tree(nodes, seed):
            nonlocal leaves
            visited = set()
            def visit(index, expected):
                nonlocal leaves
                assert type(index) is int and 0 <= index < len(nodes) and index not in visited
                visited.add(index)
                node = nodes[index]
                assert node['additional'] == [[list(t), sg] for t, sg in expected]
                if 'split' in node:
                    triangle = tuple(node['split'])
                    assert triangle in AREAS
                    known = base_signs(ids)
                    known.update(expected)
                    assert triangle not in known
                    visit(node['negative'], expected+[(triangle, -1)])
                    visit(node['positive'], expected+[(triangle, 1)])
                    return
                leaves += 1
                if node['leaf'] == 'capacity':
                    assert cost_specs(ids, expected) is None
                elif node['leaf'] == 'cyclic':
                    assert not cyclic_consistent(ids, expected)
                else:
                    assert node['leaf'] == 'certificate'
                    ci = node['certificate']
                    assert type(ci) is int and 0 <= ci < len(certs)
                    cert = certs[ci]
                    assert tuple(cert['case']) == ids
                    assert cert['additional'] == node['additional']
            visit(0, seed)
            assert visited == set(range(len(nodes)))
        if 'top_three' in cover:
            assert 'tree' not in cover and len(cover['top_three']) == 3
            for inner, nodes in enumerate(cover['top_three']):
                check_tree(nodes, top_three_seed(ids, inner))
        else:
            check_tree(cover['tree'], [])
    assert covered == set(SURVIVORS)
    print(f'PASS: {len(certs)} exact cubic certificates; {total_terms} positive terms; '
          f'{len(covered)} complete word multisets; {leaves} sign leaves; worst bound {worst}')


if __name__ == '__main__':
    verify()
