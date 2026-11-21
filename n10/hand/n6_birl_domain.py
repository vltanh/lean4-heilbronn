"""Lower/upper placements for the two-side-cap BIRL arc proof."""

from itertools import combinations

from n6_iirl_domain import HULL, coarse_box, edges, put


LOWER_EDGES = ("HA", "AB", "BC")


def roots():
    boundary = edges(HULL)
    return tuple((boundary[i], boundary[j]) for i, j in combinations(range(8), 2)
                 if min(j-i, 8+i-j) in (3, 4) and
                 (boundary[i] in LOWER_EDGES) != (boundary[j] in LOWER_EDGES))


def cut_edges(index):
    first, second = roots()[index]
    return (first, second) if first in LOWER_EDGES else (second, first)


def containers(index):
    lower, upper = cut_edges(index)
    cross = "".join(roots()[index])
    lower_cell = {"HA":"HAC", "AB":"HABC", "BC":"HBC"}[lower]
    upper_cell = {"CR":"HCR", "RE":"HCRE", "EF":"HCEF",
                  "FS":"HCFS", "SH":"HCS"}[upper]
    return {"P": tuple(dict.fromkeys(("HABC", cross, lower_cell))),
            "Q": tuple(dict.fromkeys(("HCEF", cross, upper_cell)))}


def base(index):
    signs = {}
    for triple in combinations(HULL, 3):
        put(signs, "".join(triple), 1)
    for point, regions in containers(index).items():
        for polygon in (HULL, *regions):
            for edge in edges(polygon):
                put(signs, edge+point, 1)
    for point in "PQRS":
        for edge in ("AB", "BC", "FH", "CE", "EF", "HC"):
            inward = (point, edge) not in (("P","HC"), ("R","CE"), ("S","FH"))
            put(signs, edge+point, 1 if inward else -1)
    lower, upper = (edges(HULL).index(edge) for edge in cut_edges(index))
    length = (upper-lower) % 8
    negative_vertices = (2*HULL)[lower+1:lower+length+1]
    for vertex in HULL:
        put(signs, vertex+"PQ", -1 if vertex in negative_vertices else 1)
    return signs
