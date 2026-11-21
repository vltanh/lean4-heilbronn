"""Exact domains for the two-side-cap IIRL line catalogue."""

from fractions import Fraction as F
from itertools import combinations

LABELS = "ABCEFHPQRS"
VARIABLES = "a b c e f h p q u v r w j k".split()
HULL = "ABCREFSH"
S = F(93, 1000)
LONG_TRIANGLES = ("AEF", "BEF", "ABE", "ABF", "CRS", "CSH", "CRH", "RSH")


def canonical(word):
    ids = [LABELS.index(letter) for letter in word]
    assert len(set(ids)) == len(ids)
    inversions = sum(a > b for a, b in combinations(ids, 2))
    return "".join(LABELS[i] for i in sorted(ids)), (-1)**inversions


def put(signs, word, orientation):
    name, parity = canonical(word)
    value = parity * orientation
    assert signs.get(name, value) == value
    signs[name] = value


def edges(polygon):
    return tuple(a + b for a, b in zip(polygon, polygon[1:] + polygon[0]))


def roots():
    boundary = edges(HULL)
    excluded = {frozenset(("BC", "SH")), frozenset(("CR", "HA"))}
    return tuple((boundary[i], boundary[j]) for i, j in combinations(range(8), 2)
                 if min(j-i, 8+i-j) in (3, 4)
                 and frozenset((boundary[i], boundary[j])) not in excluded)


def containers(index):
    crossed = "".join(roots()[index])
    return {point: ("HCEF", crossed) for point in "PQ"}


def coarse_box():
    ell = F(31, 251)
    offset = F(31657, 55000)
    large = 1-offset + S/(1-ell)
    return ([(ell, offset)] * 2 + [(1-offset, 1-ell)] * 4
            + [(ell, 1-ell)] * 4 + [(large, F(1)), (ell, offset),
                                     (ell, offset), (large, F(1))])


def base(index):
    signs = {}
    for triple in combinations(HULL, 3):
        put(signs, "".join(triple), 1)
    for point, regions in containers(index).items():
        for polygon in (HULL, *regions):
            for edge in edges(polygon):
                put(signs, edge+point, 1)
    # Each free point lies on the specified side of the six contact edges.
    for point in "PQRS":
        for edge in ("AB", "BC", "FH", "CE", "EF", "HC"):
            orientation = -1 if (point, edge) in (("R", "CE"), ("S", "FH")) else 1
            put(signs, edge+point, orientation)
    first, second = (edges(HULL).index(edge) for edge in roots()[index])
    arc = HULL[first+1:second+1]
    for vertex in HULL:
        put(signs, vertex+"PQ", 1 if (vertex in arc) == ("A" in arc) else -1)
    assert signs[canonical("APQ")[0]] == canonical("APQ")[1]
    return signs


def verify_domain(index, tables):
    domain = tables.domain
    assert domain["coordinates"] == VARIABLES and domain["labels"] == LABELS
    assert domain["base"] == base(index)
    assert [tuple(map(F, pair)) for pair in domain["box"]] == coarse_box()
    return coarse_box()


def chord_rules(pair, signs):
    """Yields triangle-cap witnesses and their forced signed diagonals."""
    first, second = pair
    name, parity = canonical(first[0] + "PQ")
    if signs[name] * parity < 0:
        first, second = second, first
    i, j = first
    k, l = second
    caps = [frozenset((HULL*2)[u:u+4]) for u in range(8)]
    long = {frozenset(t) for t in LONG_TRIANGLES}
    for tri, target, orientation in [(i+j+k, i+k+"Q", 1), (i+k+l, i+k+"P", -1),
                                     (i+j+l, j+l+"Q", -1), (j+k+l, j+l+"P", 1)]:
        if any(set(tri) <= cap for cap in caps) or frozenset(tri) in long:
            yield [first, second, tri, target, orientation]


def arc_cap_rules(pair, signs):
    """Each crossed edge lies in three four-vertex boundary caps."""
    for edge in pair:
        name, parity = canonical(edge[0] + "PQ")
        point = "Q" if signs[name] * parity > 0 else "P"
        for i in range(8):
            hull = (HULL * 2)[i:i+4]
            if edge in edges(hull)[:3]:
                yield [hull, edge, point, hull[0] + hull[-1] + point, 1]


def arc_long_rules(pair, signs):
    """The far point cannot be in a capacity-one triangle at a line end."""
    for edge in pair:
        name, parity = canonical(edge[0] + "PQ")
        point = "Q" if signs[name] * parity > 0 else "P"
        for triangle in LONG_TRIANGLES:
            if edge in edges(triangle):
                yield [triangle, edge, point]


def central_triangle(pair):
    """The segment crosses either adjacent edges HC,CE or adjacent edges HC,FH."""
    if not any(edge in ("HA", "AB", "BC") for edge in pair):
        return None
    if any(edge in ("CR", "RE") for edge in pair):
        return "HCE"
    if any(edge in ("FS", "SH") for edge in pair):
        return "HCF"
    return None
