"""Exact finite proof cover for both N6-06 rows.

Run with Python's standard library only.  This checks fixed positive
combinations, exhaustive sign/coordinate splits, determinant identities,
and the eleven signs needed by SHARP_EF_HIGH.md.  It runs no optimizer.
"""

from fractions import Fraction as F
from itertools import product
import json
from pathlib import Path

import double_top_polynomials as p


# A node (coordinate, cut, lower, upper) is the complete closed split
# z_coordinate <= cut or z_coordinate >= cut.  None denotes a leaf.
HALF = F(1, 2)
CONVEX_BOX_TREE = (3, HALF, None, (11, HALF, None, None))
SIGN_SPLITS = {230: (2,), 235: (1, 2), 238: (1,)}
TRIANGLE_BOX_TREES = {
    (92, ()): None,
    (93, ()): (10, HALF, (9, HALF, None, (11, HALF, None, None)), None),
    (230, ((2, 1),)): (10, HALF, None,
                       (9, HALF, None, (11, HALF, None, None))),
    (233, ()): None,
}


def tree_paths(node, path=()):
    if node is None:
        return (path,)
    coordinate, cut, lower, upper = node
    assert type(coordinate) is int and 0 <= coordinate < 12
    assert F(0) < cut < F(1)
    return (tree_paths(lower, path + ((coordinate, cut, -1),)) +
            tree_paths(upper, path + ((coordinate, cut, 1),)))


def triangle_targets():
    targets = []
    for index, case in enumerate(p.triangle_cases()):
        vertices = SIGN_SPLITS.get(index, ())
        known = p.known_signs(case)
        assert all((vertex, 7, 8) not in known for vertex in vertices)
        for signs in product((-1, 1), repeat=len(vertices)):
            extra = tuple(zip(vertices, signs))
            # Reconstructing the signs also checks that no split is repeated.
            p.known_signs(case, extra)
            targets.append((index, extra))
    return tuple(targets)


def convex_signed(word, triple):
    i, j, k = sorted(triple)
    inversions = sum(triple[u] > triple[v]
                     for u in range(3) for v in range(u + 1, 3))
    sign = 1 if k < 8 else p.radial_sign(word, i, j)
    return (-1) ** inversions * sign


def verify_geometry():
    s = p.S
    assert F(1, 8) * F(7, 8) == s
    assert s / F(7, 8) == F(1, 8)
    assert 3 * s / F(7, 8) == F(3, 8)
    assert 1 - 4 * s / F(7, 8) == F(1, 2)
    assert (1 - F(11, 32)) ** 2 < 4 * s
    assert 1 - 3 * s / F(7, 8) == F(5, 8)
    assert (1 - F(7, 16)) ** 2 < 3 * s
    assert F(7, 8) ** 2 == F(49, 64)
    assert (F(31, 11)) ** 2 < 8  # s(3+2sqrt(2)) > 7/11.
    assert 0 < p.RHO / s - 4 and (p.RHO / s - 4) ** 2 < 12
    for threshold in p.THRESHOLDS:
        # threshold < (9 sqrt(65)-55)/160 = 2 A_0.
        assert threshold > 0 and (55 + 160 * threshold) ** 2 < 81 * 65
    assert p.THRESHOLDS == tuple(sorted(p.THRESHOLDS))

    a, h, b, c, d, f, x, y, px, py, qx, qy = p.COORDINATES
    one = p.ONE
    for mode in ("convex", "triangle"):
        vertices = p.vertices(mode)
        A, B, C, D = vertices[:4]
        Fp = vertices[6 if mode == "convex" else 5]
        H = vertices[7 if mode == "convex" else 6]
        Q = vertices[8]
        assert p.area(A, B, C) == p.mul(a, p.sub(c, b))
        assert p.area(A, B, H) == p.mul(b, p.sub(h, a))
        assert p.areas(mode)["delta"] == p.area(D, (one, one), Fp)
        assert p.areas(mode)["W"] == p.add(p.area(H, C, D), p.area(H, D, Fp))
        assert p.add(p.mul(p.sub(one, f), p.area(C, D, Q)),
                     p.mul(p.sub(one, c), p.area(D, Fp, Q))) == \
            p.mul(p.area(C, D, Fp), p.sub(one, qx))
        assert p.add(p.mul(p.sub(one, d), p.area(Fp, H, Q)),
                     p.mul(p.sub(one, h), p.area(D, Fp, Q))) == \
            p.mul(p.area(D, Fp, H), p.sub(one, qy))
        for Z in ((x, y), (px, py)):
            zx, zy = Z
            cap = p.area(D, Z, Fp)
            assert cap == p.sub(p.mul(p.sub(one, d), p.sub(zx, f)),
                                p.mul(p.sub(one, f), p.sub(one, zy)))
            assert cap == p.sub(p.mul(p.sub(one, f), p.sub(zy, d)),
                                p.mul(p.sub(one, d), p.sub(one, zx)))

    vertices = p.vertices("convex")
    D, E, G, Fp = (vertices[i] for i in (3, 4, 5, 6))
    u, v = p.sub(x, px), p.sub(py, y)
    assert p.area(D, E, G) == p.sub(p.mul(u, p.sub(y, d)),
                                      p.mul(p.sub(one, x), v))
    assert p.area(Fp, E, G) == p.sub(p.mul(v, p.sub(px, f)),
                                       p.mul(p.sub(one, py), u))
    vertices = p.vertices("triangle")
    D, X, Fp, P = (vertices[i] for i in (3, 4, 5, 7))
    assert p.area(D, X, P) == p.sub(p.mul(p.sub(y, d), p.sub(one, px)),
                                      p.mul(p.sub(one, x), p.sub(py, d)))
    assert p.area(X, Fp, P) == p.sub(p.mul(p.sub(x, f), p.sub(one, py)),
                                       p.mul(p.sub(one, y), p.sub(px, f)))

    # Sharp labels (A',B',C',D',E',F',G',H')=(A,B,C,D,E,G,F,H).
    # Thus e'=ey, f'=gx, g'=f, r'=1-ex, k'=gy.
    critical = ((0, 1, 7), (0, 1, 2), (0, 6, 7),
                (3, 4, 5), (6, 7, 5), (6, 4, 5),
                (0, 3, 8), (3, 7, 8), (1, 8, 4),
                (6, 2, 8), (8, 2, 5))
    assert all(convex_signed(p.SHARP, triple) == 1 for triple in critical)
    assert p.sub(one, x) == p.sub(one, p.vertices("convex")[4][0])
    assert p.sub(p.sub(one, px), p.sub(one, x)) == p.sub(x, px)
    assert len(p.common_factors("convex")) == 37
    assert len(p.common_factors("triangle")) == 33


def verify_record(mode, certificate):
    bound = p.cube_upper(p.residual(mode, certificate))
    assert bound == F(certificate["upper_bound"])
    assert bound <= -F(3, 4)
    return len(certificate["terms"]), bound


def verify_convex(records):
    words = p.convex_words()
    assert len(words) == 94 and words[31] == p.SHARP
    assert words[66] == (4, 4, 4, 4, 3, 3, 3, 3)
    whole_expected = set(range(94)) - {31, 66}
    box_expected = set(tree_paths(CONVEX_BOX_TREE))
    assert len(whole_expected) == 92 and len(box_expected) == 3
    whole_seen, box_seen, sharp_seen = set(), set(), set()
    total = 0
    worst = None
    for certificate in records:
        index = certificate["index"]
        assert type(index) is int and 0 <= index < len(words)
        assert tuple(certificate["word"]) == words[index]
        conditions = p.condition_tuple(certificate["conditions"])
        scope, branch = certificate["scope"], certificate["branch"]
        if scope == "whole":
            assert index in whole_expected and index not in whole_seen
            assert branch == "whole" and not conditions
            whole_seen.add(index)
        elif scope == "box":
            assert index == 66 and branch == "whole"
            assert certificate["factor_prefix"] == 37
            assert conditions in box_expected and conditions not in box_seen
            box_seen.add(conditions)
        else:
            assert scope == "sharp" and index == 31 and not conditions
            assert branch in p.SHARP_BRANCHES and branch not in sharp_seen
            sharp_seen.add(branch)
        terms, bound = verify_record("convex", certificate)
        total += terms
        worst = bound if worst is None else max(worst, bound)
    assert whole_seen == whole_expected and box_seen == box_expected
    assert sharp_seen == set(p.SHARP_BRANCHES)
    assert len(records) == 102 and total == 24786
    print("PASS: 94 convex words; 92 whole exclusions, one three-leaf split,")
    print("      and all seven complements of the sharp E/F chamber")
    print("Convex certificates:", len(records), "; positive terms:", total,
          "; largest exact cube upper bound:", worst)
    return total, worst


def verify_triangle(records):
    words = p.radial_words(7)
    assert len(words) == 57
    assert sum(word[3] == 1 for word in words) == 5
    assert sum(word[3] >= 2 for word in words) == 52
    cases = p.triangle_cases()
    assert len(cases) == 260
    targets = triangle_targets()
    assert len(targets) == 265
    box_expected = {(index, extra, path)
                    for (index, extra), tree in TRIANGLE_BOX_TREES.items()
                    for path in tree_paths(tree)}
    assert len(box_expected) == 10
    sign_expected = {(index, extra) for index, extra in targets
                     if index in (235, 238) or (index == 230 and extra == ((2, -1),))}
    assert len(sign_expected) == 7
    whole_seen, sign_seen, box_seen = set(), set(), set()
    regular = []
    total = 0
    worst = None
    for certificate in records:
        index = certificate["index"]
        assert type(index) is int and 0 <= index < len(cases)
        case = p.tuple_case(certificate["case"])
        assert case == cases[index]
        extra = tuple(map(tuple, certificate["extra"]))
        p.known_signs(case, extra)
        conditions = p.condition_tuple(certificate["conditions"])
        scope = certificate["scope"]
        if scope == "whole":
            assert not extra and not conditions and index not in whole_seen
            assert certificate["factor_prefix"] == 27
            whole_seen.add(index)
            regular.append(certificate)
        elif scope == "sign":
            key = (index, extra)
            assert not conditions and key in sign_expected and key not in sign_seen
            sign_seen.add(key)
            regular.append(certificate)
        else:
            assert scope == "box" and certificate["factor_prefix"] == 33
            key = (index, extra, conditions)
            assert key in box_expected and key not in box_seen
            box_seen.add(key)
        terms, bound = verify_record("triangle", certificate)
        total += terms
        worst = bound if worst is None else max(worst, bound)
    assert len(whole_seen) == 210 and sign_seen == sign_expected
    assert box_seen == box_expected
    assert len(records) == 227 and total == 31772
    final_cells = 0
    for index, extra in targets:
        key = (index, extra)
        if key in TRIANGLE_BOX_TREES:
            paths = tree_paths(TRIANGLE_BOX_TREES[key])
            assert all((index, extra, path) in box_seen for path in paths)
            final_cells += len(paths)
        else:
            target = cases[index], extra
            assert any(p.applies(certificate, target) for certificate in regular), key
            final_cells += 1
    assert final_cells == 271
    print("PASS: 260 triangular radial pairs, 265 sign cells, 271 final cells")
    print("PASS: all reused costs match their signs and have valid stronger thresholds")
    print("Triangle certificates:", len(records), "; positive terms:", total,
          "; largest exact cube upper bound:", worst)
    return total, worst


def verify():
    verify_geometry()
    data = json.loads(Path(__file__).with_name(
        "six_boundary_double_top_certificates.json").read_text())
    assert data["version"] == 1
    assert data["variables"] == p.VARIABLES and data["vertices"] == p.LABELS
    assert tuple(data["sharp_word"]) == p.SHARP
    convex_total, convex_worst = verify_convex(data["convex"])
    triangle_total, triangle_worst = verify_triangle(data["triangle"])
    assert convex_total + triangle_total == 56558
    print("PASS: all 329 rational cubic certificates and 56,558 positive terms")
    print("PASS: geometric identities, rational comparisons, and all eleven sharp signs")
    print("Largest exact cube upper bound:", max(convex_worst, triangle_worst))


if __name__ == "__main__":
    verify()
