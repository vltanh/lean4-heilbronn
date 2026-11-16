"""Fixed rational certificates for one lower C1 point and a right-cap pair."""
from fractions import Fraction as F
from itertools import combinations, combinations_with_replacement
import json
from pathlib import Path
from check_c1_zero_lower_certificates import (
    S, RHO, VARIABLES, VARS, XY, ZERO, ONE, POINTS, TRIPLES, AREAS, W,
    const, add, scale, sub, mul, sign, inside, WORDS, ALL_WORDS,
    oriented_sign, cube_upper,
)

h, c, d, f = VARS[:4]
LOWER = [w for w in ALL_WORDS if inside(w, (0, 1, 4)) and sign(w, 0, 2)]
RIGHT = WORDS[0]
UPPER = [w for w in WORDS if inside(w, (1, 2, 4)) and sign(w, 0, 2)]
TOP = WORDS[3]
CASES = []
for kind, choices in (('upper', UPPER), ('top', [TOP])):
    for li, lower in enumerate(LOWER):
        for qi, other in enumerate(choices):
            words = [RIGHT, RIGHT, lower, other]
            if any(sum(inside(w, t) for w in words) > 2 for t in combinations(range(5), 3)):
                continue
            if sum(inside(w, (0, 3, 4)) for w in words) > 1:
                continue
            CASES.append((kind, li, qi))


def case_words(case):
    kind, li, qi = case
    return [RIGHT, RIGHT, LOWER[li], UPPER[qi] if kind == 'upper' else TOP]


def factors(case):
    kind, li, qi = case
    out = [sub(h, const(RHO)), sub(c, const(3*S)), sub(ONE, h),
           sub(const(1-3*S), c), sub(d, const(RHO)), sub(const(1-S), d),
           sub(f, const(S)), sub(const(1-3*S), f), sub(h, d), sub(c, f), sub(d, f)]
    if kind == 'top':
        out += [sub(const(F(323, 803)), f), sub(const(F(57, 65)), d)]
    for x, y in XY[:2]:
        out += [sub(x, const(S)), sub(y, const(S)), sub(ONE, x),
                sub(sub(d, y), const(S)), sub(sub(x, c), const(S))]
    lx, ly = XY[2]
    out += [sub(lx, const(S)), sub(ly, const(S)), sub(sub(c, lx), const(2*S)),
            sub(sub(h, ly), const(2*S)), sub(sub(sub(ONE, lx), ly), const(S))]
    x, y = XY[3]
    out += [sub(x, const(S)), sub(y, const(S))]
    if kind == 'upper':
        out += [sub(const(1-S), x), sub(const(1-S), y)]
    else:
        out += [sub(ONE, x), sub(ONE, y), sub(sub(x, f), const(S)), sub(sub(y, d), const(S))]
    return out


def base_signs(case):
    ws = case_words(case)
    signs = {}
    for t in TRIPLES:
        if t[2] < 5:
            signs[t] = 1
        elif t[1] < 5:
            signs[t] = 1 if sign(ws[t[2]-5], t[0], t[1]) else -1
    for a, b in combinations(range(4), 2):
        forced = {0: 1, 1: 1, 2: -1} if (a, b) == (0, 1) else {}
        for v in range(5):
            sg = forced.get(v)
            if ws[a][v] != ws[b][v]:
                radial = 1 if ws[a][v] < ws[b][v] else -1
                assert sg is None or sg == radial
                sg = radial
            if sg is not None:
                signs[(v, a+5, b+5)] = sg
    return signs


def cost_specs(case, additional=()):
    signs = base_signs(case)
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


def costs(case, additional=()):
    out = [sub(mul(h, c), const(3*S)), sub(mul(d, sub(ONE, c)), const(3*S)),
           sub(const(3*S), AREAS[(2, 3, 4)]), sub(const(RHO), AREAS[(0, 3, 4)])]
    if case[0] == 'upper':
        out.append(sub(W, const(4*S)))
    specs = cost_specs(case, additional)
    assert specs is not None
    out += [sub(scale(AREAS[t], sg), const(bound)) for t, sg, bound in specs]
    return out


def cubic_costs(case):
    return [sub(mul(mul(d, c), sub(ONE, c)), const(S))]


def residual(cert):
    case = tuple(cert['case'])
    additional = [(tuple(t), sg) for t, sg in cert.get('additional', [])]
    fac, qs, cs = factors(case), costs(case, additional), cubic_costs(case)
    out = {}
    assert type(cert['scale']) is int and cert['scale'] > 0
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
            p = qs[qi] if fi == -1 else mul(qs[qi], fac[fi])
        else:
            assert term[0] == 'c'
            _, ci, weight = term
            assert ci == 0
            p = cs[ci]
        assert type(weight) is int and weight > 0
        out = add(out, scale(p, F(weight, cert['scale'])))
    return out


def verify_bounds():
    assert len(LOWER) == 2 and len(UPPER) == 3 and len(CASES) == 7
    assert 1-RHO < 3*S
    assert 1-3*S < RHO
    assert 1-S/(1-RHO) == F(323, 803)
    assert all(len(base_signs(case)) > 60 for case in CASES)


def verify():
    verify_bounds()
    data = json.loads(Path(__file__).with_name('c1_one_lower_right_pair_certificates.json').read_text())
    assert data['version'] == 1 and data['variables'] == VARIABLES
    assert data['vertices'] == ['O', 'C', 'D', 'F', 'H', 'X', 'Y', 'L', 'Q']
    certs = data['certificates']
    assert len(certs) == 15
    worst = None
    terms = 0
    for cert in certs:
        assert tuple(cert['case']) in CASES
        p = residual(cert)
        assert all(len(m) <= 3 for m in p)
        upper = cube_upper(p)
        assert upper == F(cert['upper_bound']) and upper < -F(3, 4)
        worst = upper if worst is None else max(worst, upper)
        terms += len(cert['terms'])
    covered = set()
    leaves = 0
    for cover in data['cover']:
        case = tuple(cover['case'])
        assert case in CASES and case not in covered
        covered.add(case)
        nodes = cover['tree']
        visited = set()
        def visit(index, expected):
            nonlocal leaves
            assert type(index) is int and 0 <= index < len(nodes) and index not in visited
            visited.add(index)
            node = nodes[index]
            assert node['additional'] == [[list(t), sg] for t, sg in expected]
            if 'split' in node:
                triangle = tuple(node['split'])
                known = base_signs(case)
                known.update(expected)
                assert triangle in AREAS and triangle not in known
                visit(node['negative'], expected+[(triangle, -1)])
                visit(node['positive'], expected+[(triangle, 1)])
                return
            leaves += 1
            if node['leaf'] == 'capacity':
                assert cost_specs(case, expected) is None
            else:
                assert node['leaf'] == 'certificate'
                ci = node['certificate']
                assert type(ci) is int and 0 <= ci < len(certs)
                cert = certs[ci]
                assert tuple(cert['case']) == case and cert['additional'] == node['additional']
        visit(0, [])
        assert visited == set(range(len(nodes)))
    assert covered == set(CASES) and leaves == 15 and terms == 1525
    assert worst == -F(77021124287, 77678914560)
    print(f'PASS: all {len(CASES)} one-lower right-pair words; {leaves} exact cubic '
          f'certificates; {terms} positive terms; worst {worst}')


if __name__ == '__main__':
    verify()
