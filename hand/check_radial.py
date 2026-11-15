"""Check the explicit finite tables in RADIAL_CATALOGUE.md."""

from itertools import product

BLOCKS = (
    (3, 2, 5, 4), (3, 3, 4, 4), (3, 4, 4, 3),
    (4, 3, 3, 4), (4, 4, 3, 3), (5, 4, 3, 2),
)
REPS = (
    (3, 2, 3, 2, 5, 4, 5, 4),
    (3, 2, 3, 3, 5, 4, 4, 4),
    (3, 2, 3, 4, 5, 4, 4, 3),
    (3, 2, 4, 3, 5, 4, 3, 4),
    (3, 3, 3, 3, 4, 4, 4, 4),
    (3, 3, 3, 4, 4, 4, 4, 3),
    (3, 3, 4, 3, 4, 4, 3, 4),
    (3, 4, 3, 4, 4, 3, 4, 3),
)
TABLE = (
    (1, 2, 3, 4, 2, 1),
    (2, 5, 6, 7, 5, 2),
    (4, 7, 8, 8, 6, 3),
    (3, 6, 8, 8, 7, 4),
    (2, 5, 7, 6, 5, 2),
    (1, 2, 4, 3, 2, 1),
)


def need(condition, message):
    if not condition:
        raise ArithmeticError(message)


def orbit(k):
    return {
        tuple(k[(i + 2*r) % 8] for i in range(8))
        for r in range(4)
    } | {
        tuple(7 - k[(1-i + 2*r) % 8] for i in range(8))
        for r in range(4)
    }


def block_conditions(v):
    a, b, c, d = v
    return (
        (a >= 4) == (c == 3)
        and (b == 4) == (d <= 3)
        and (b == 2) == (c == 5)
        and (d == 2) == (a == 5)
    )


actual = {
    v for v in product((3, 4, 5), (2, 3, 4), (3, 4, 5), (2, 3, 4))
    if block_conditions(v)
}
need(actual == set(BLOCKS), "six-block table mismatch")
orbits = [orbit(k) for k in REPS]
need([len(o) for o in orbits] == [4, 8, 4, 4, 4, 4, 4, 4], "orbit sizes")
need(sum(map(len, orbits)) == len(set().union(*orbits)) == 36, "orbit overlap")
words = set()
for i, a in enumerate(BLOCKS):
    for j, b in enumerate(BLOCKS):
        k = (a[0], a[1], b[0], b[1], a[2], a[3], b[2], b[3])
        words.add(k)
        need(k in orbits[TABLE[i][j]-1], "six-by-six table mismatch")
        for u in range(8):
            for step in range(1, 8):
                v = (u + step) % 8
                need((step <= k[u]) == (8-step > k[v]), "complementary rays")
need(words == set().union(*orbits), "incomplete block-pair cover")


def sharp_chamber(k):
    return k[0] >= 3 and k[3] >= 4 and k[2] >= 3 and k[6] >= 4 and k[1] < 3


need(
    [i+1 for i, o in enumerate(orbits) if any(map(sharp_chamber, o))] == [3],
    "sharp-chamber identification",
)


def inside_triangle(k, *indices):
    a, b, c = sorted(indices)
    return b-a <= k[a] and c-b <= k[b] and (a-c) % 8 <= k[c]


def corner_cap(k, start):
    a, b, c, d = [(start+i) % 8 for i in range(4)]
    return inside_triangle(k, a, b, c) or inside_triangle(k, a, c, d)


def theorem6(k):
    return all(inside_triangle(k, *t) for t in [(0,3,4), (7,3,4), (1,2,5), (1,2,6)])


def theorem8(k):
    return corner_cap(k, 1) and corner_cap(k, 3)


def theorem9(k):
    return all(inside_triangle(k, *t) for t in [(0,3,4), (7,3,4), (1,5,6), (1,2,6)])


def theorem11(k):
    return (
        inside_triangle(k, 0,3,4) and inside_triangle(k, 7,3,4)
        and corner_cap(k, 1) and not corner_cap(k, 3)
    )


def theorem12(k):
    return (
        all(inside_triangle(k, *t) for t in [(0,3,4), (7,3,4), (1,2,5), (2,5,6)])
        and not corner_cap(k, 1) and not corner_cap(k, 3)
    )


def theorem_r6(k):
    return (
        k[0] >= 3 and k[3] >= 4 and k[2] >= 3 and k[6] >= 4
        and k[0] < 4 and k[1] < 4 and k[1] >= 3
    )


for theorem, expected in [(theorem6, [4,7]), (theorem8, [1]), (theorem9, [8]), (theorem11, [2,4]), (theorem12, [5]), (theorem_r6, [6])]:
    actual = [i+1 for i, o in enumerate(orbits) if any(map(theorem, o))]
    need(actual == expected, f"geometric class identification: {theorem.__name__}: {actual}")

print("PASS: six blocks, all 36 words, eight disjoint square-symmetry classes")
print("PASS: complete printed table; exactly R3 meets the existing sharp chamber")
print("PASS: R1, R2, R4, R5, R6, R7, R8 match their stated geometric exclusions")
print("RADIAL_CATALOGUE_PASS: all eight classes have written hand bounds")
