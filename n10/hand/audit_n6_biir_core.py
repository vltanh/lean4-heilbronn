"""Exact replay for a fixed nine-point BIIR crossing pair."""

from fractions import Fraction
from functools import cached_property, partial
from itertools import product
from math import prod
from pathlib import Path

from audit_c1_iirtt_lifted import V, add, const, mul, scale
from audit_n6_biir import (
    BIIRGeometry, BIIRSources, HULL, S, chord_signs, compatible_patterns, crossing_patterns,
)
from c1_iirtt_tables import Tables
from n6_contact_rows import RegionGeometry
from n6_contact_tables import audit_six


DOMAINS = dict(crossing_patterns(reduced=True, extended=True))
CAP_TRIANGLES = ("BCE", "SEF", "ACS", "EFH")
CONTACT_TRIANGLE_CAPS = {"ABF": (4, 1), "ABE": (3, 1), "AEF": (0, -1),
                         "BEF": (1, -1), "EFH": (3, -1), "CEF": (4, -1)}
CONTACT_QUADS = {"ABEF", "CFHS", "EFHS"}
UNUSED_SOURCES = {
    "lower_cost", "lower_sum", "biir_lower_sum",
    "biir_upper_sum_Q", "biir_upper_sum_R",
}
UPPER_SUMS = {"biir_core_upper_sum_Q": ("CHQ", 8),
              "biir_core_upper_sum_R": ("CHR", 10)}
# Direction of the projection from the first crossed edge to the second.
ARC_DIRECTIONS = {
    ("AB", "SE"): (1, 0), ("AB", "EF"): (1, 1), ("AB", "FH"): (0, 1),
    ("BC", "EF"): (0, 1), ("BC", "FH"): (0, 1), ("CS", "EF"): (0, 1),
    ("CS", "FH"): (-1, 1), ("CS", "HA"): (-1, 0), ("SE", "FH"): (-1, 1),
    ("SE", "HA"): (-1, 0), ("EF", "HA"): (-1, 0),
}
assert set(ARC_DIRECTIONS) == set(DOMAINS)
CONTACT_AXES = dict(zip(HULL, (("0", 0), (1, "0"), (2, "0"), (12, 13),
                              ("1", 3), (4, "1"), ("0", 5)), strict=True))
REFINED_RIGHT = {"biir_core_a_floor": (0, 1), "biir_core_b_floor": (1, 1),
                 "biir_core_c_cap": (2, -1), "biir_core_f_cap": (4, -1),
                 "biir_core_h_cap": (5, -1), "biir_core_k_floor": (13, 1)}


def upper_placements(edges):
    fixed = DOMAINS[edges]
    regions = ("ABEF", "BCE", "AFH")
    for first, second in product(regions, repeat=2):
        if first == second == "BCE":
            continue
        if any(len({BIIRGeometry.sign(fixed, vertex + "QR") for vertex in region}) == 1
               for region in (first, second)):
            continue
        placement = {}
        chord_signs(placement, first, "Q")
        chord_signs(placement, second, "R")
        if any(fixed.get(name, sign) != sign for name, sign in placement.items()):
            continue
        for chord in ("BE", "AF"):
            order = placement[chord + "R"] - placement[chord + "Q"]
            endpoints = (BIIRGeometry.sign(fixed, chord[0] + "QR")
                         - BIIRGeometry.sign(fixed, chord[1] + "QR"))
            if order * endpoints < 0:
                break
        else:
            yield fixed | placement


UPPER_PLACEMENTS = {edges: tuple(upper_placements(edges)) for edges in DOMAINS}


def crossing_caps(edges):
    fixed = DOMAINS[edges]
    for edge in edges:
        farther = "R" if BIIRGeometry.sign(fixed, edge[0] + "QR") == 1 else "Q"
        for triangle in CAP_TRIANGLES:
            boundaries = tuple(a+b for a,b in zip(triangle, triangle[1:] + triangle[0]))
            if edge in boundaries:
                yield [triangle, edge, farther]


class CoreGeometry(BIIRGeometry):
    labels = "ABCEFHQRS"

    def __init__(self, edges, stage=None):
        self.edges = edges
        super().__init__(stage)
        del self.containers["P"]

    def base(self):
        retained = {name: direction for name, direction in RegionGeometry("biir").base().items()
                    if "P" not in name}
        for name, direction in DOMAINS[self.edges].items():
            self.put(retained, name, direction)
        return retained

    @classmethod
    def put(cls, known, word, orientation):
        assert "P" not in word
        super().put(known, word, orientation)

    def cap_value(self, triangle, orientation, witness):
        assert "P" not in triangle
        if witness == ["biir_core_contact_cap", triangle]:
            assert orientation == 1
            coordinate, sign = CONTACT_TRIANGLE_CAPS[triangle]
            return self.box[coordinate][1] if sign == 1 else 1 - self.box[coordinate][0]
        return super().cap_value(triangle, orientation, witness)

    def quad_cap(self, known, hull, witness):
        if witness != ["biir_core_quad_cap"]:
            return super().quad_cap(known, hull, witness)
        assert self.convex(known, hull)
        name = "".join(sorted(hull))
        assert name in CONTACT_QUADS

        def gap(i, j):
            return max(0, self.box[i][0] - self.box[j][1])

        if name == "ABEF":
            return 1 - gap(3, 0)*gap(4, 1)
        if name == "CFHS":
            height = max(gap(5, 13), S/(1-self.box[2][0]))
            return self.box[12][1] - gap(2, 4)*height
        width = max(gap(12, 4), S/self.box[3][1])
        return 1 - self.box[13][0] - width*gap(5, 3)

    def relation(self, known, relation, witness):
        if witness[0] == "biir_core_quad_spread":
            _, hull, diagonal, area_witness = witness
            assert diagonal in (0, 1) and self.convex(known, hull)
            assert all(self.inside(known, hull, point) for point in "QR")
            a, b, c, d = hull
            for chord in (a+c, b+d):
                first, second = [self.sign(known, chord+point) for point in "QR"]
                assert first and first == -second
            clearance_chord = (a+c, b+d)[diagonal]
            coefficients = {self.key(a+b+c): 1, self.key(a+c+d): 1,
                            **{self.key(clearance_chord+p): -1 for p in "QR"}}
            assert relation[:2] == ["linear", coefficients]
            if area_witness:
                assert self.quad_cap(known, hull, area_witness) <= 11*S
                rate = 6
            else:
                rate = Fraction(1457, 250)
            assert Fraction(relation[2]) == rate*S
            return
        if witness[0] != "biir_core_quad_cap":
            return super().relation(known, relation, witness)
        _, hull, diagonal = witness
        assert diagonal in (0, 1)
        a, b, c, d = hull
        parts = (a+b+c, a+c+d) if diagonal == 0 else (a+b+d, b+c+d)
        assert relation[:2] == ["linear", {self.key(word):-1 for word in parts}]
        assert Fraction(relation[2]) == -self.quad_cap(known, hull, ["biir_core_quad_cap"])

    def extra_sign_rule(self, known, row):
        assert row[0] not in ("biir_place", "biir_joint_arc", "biir_joint_chords")
        if row[0] == "biir_core_place":
            _, name, direction = row
            fits = compatible_patterns(known, UPPER_PLACEMENTS[self.edges])
            assert fits and name == self.key(name) and not self.sign(known, name)
            assert direction in (-1, 1) and all(p.get(name) == direction for p in fits)
            self.put(known, name, direction)
            return True
        if row[0] == "biir_core_arc_cap":
            _, triangle, edge, point, name, direction = row
            assert [triangle, edge, point] in list(crossing_caps(self.edges))
            tests = [a+b+point for a,b in zip(triangle, triangle[1:] + triangle[0])]
            assert name in tests and direction == -1 and not self.sign(known, name)
            assert all(self.sign(known, test) == 1 for test in tests if test != name)
            self.put(known, name, direction)
            return True
        return super().extra_sign_rule(known, row)

    def terminal(self, known, row):
        assert row[0] not in ("biir_place", "biir_joint_arc", "biir_joint_chords")
        if row == ["biir_core_place"]:
            assert not compatible_patterns(known, UPPER_PLACEMENTS[self.edges])
            return
        if row[0] == "biir_core_arc_cap":
            _, triangle, edge, point = row
            assert [triangle, edge, point] in list(crossing_caps(self.edges))
            assert self.inside(known, triangle, point)
            return
        super().terminal(known, row)


class ArcRoot(CoreGeometry):
    @classmethod
    def put(cls, known, word, orientation):
        BIIRGeometry.put(known, word, orientation)


class FullArcGeometry(BIIRGeometry):
    def __init__(self, edges, stage):
        self.edges = edges
        super().__init__(stage)

    def base(self):
        known = super().base()
        for name, direction in DOMAINS[self.edges].items():
            self.put(known, name, direction)
        return known


class CoreSources(BIIRSources):
    @cached_property
    def right_refinement(self):
        a, b, f, h, k = (self.box[i][side] for i, side in ((0,0), (1,0), (4,1), (5,1), (13,0)))
        c = self.box[2][1]
        e_lo, e_hi = self.box[3]
        j_hi = self.box[12][1]
        triangles = ("ABC", "ABH", "BCS", "CES", "EFH")
        assert tuple(self.stage["signs"][t] for t in triangles) == (1, 1, 1, -1, 1)
        abc, abh, bcs, cse, efh = (self.bounds[t][0] for t in triangles)
        precision = 10**6

        def down(value):
            return Fraction(value*precision // 1, precision)

        def up(value):
            return -down(-value)

        for _ in range(4):
            f = min(f, c)
            if 1-e_lo-efh < 0 or c <= b:
                break
            h = min(h, up(e_lo + (1-e_lo-efh)/(1-f)))
            a = max(a, down(abc/(c-b)))
            k = max(k, down(bcs/(c-b)))
            if h <= a or e_hi <= k:
                break
            b = max(b, down(abh/(h-a)))
            c = min(c, up(1-(cse+e_lo*(1-j_hi))/(e_hi-k)))
        return {0: a, 1: b, 2: c, 4: min(f,c), 5: h, 13: k}

    @cached_property
    def projected(self):
        known = self.stage["signs"]
        found = [edges for edges, arc in DOMAINS.items()
                 if all(CoreGeometry.sign(known, p+"QR") == CoreGeometry.sign(arc, p+"QR")
                        for p in HULL)]
        assert len(found) == 1
        edges, = found
        first, second = edges
        forward = CoreGeometry.sign(known, first[0]+"QR")
        delta = [scale(add(V[10+i], scale(V[8+i], -1)), forward) for i in range(2)]
        gaps = {
            ("AB", "SE", 0): 4*S/self.box[3][1],
            ("AB", "FH", 1): S/self.box[1][1],
            ("CS", "EF", 1): S/(1-self.box[2][0]),
            ("CS", "FH", 1): S/(1-self.box[2][0]),
            ("SE", "FH", 0): S/self.box[3][1],
            ("SE", "HA", 0): Fraction(71, 100),
        }

        def endpoint(vertex, axis, side):
            coordinate = CONTACT_AXES[vertex][axis]
            return self.box[coordinate][side] if isinstance(coordinate, int) else int(coordinate)

        result = {}
        directions = ARC_DIRECTIONS[edges]
        known_gap = [0, 0]
        for axis, direction in enumerate(directions):
            if not direction:
                continue
            early, late = edges if direction == 1 else (second, first)
            gap = max(gaps.get((*edges, axis), 0),
                      min(endpoint(p, axis, 0) for p in late)
                      - max(endpoint(p, axis, 1) for p in early))
            known_gap[axis] = gap
            displacement = scale(delta[axis], direction)
            prefix = "biir_core_axis_" + "xy"[axis]
            result[prefix] = displacement
            if gap > 0:
                other = 1-axis
                for sign, name in ((1, "p"), (-1, "m")):
                    if sign == directions[other]:
                        continue
                    result[prefix+"_"+name] = add(displacement, scale(delta[other], sign*gap))
        for positive, negative in product(HULL, repeat=2):
            if (CoreGeometry.sign(known, positive+"QR"),
                    CoreGeometry.sign(known, negative+"QR")) != (1, -1):
                continue
            coefficients = []
            correction = [0, 0]
            for axis, direction in enumerate(directions):
                other = 1-axis
                sign = forward if axis == 0 else -forward
                lower, upper = sorted((
                    sign*(endpoint(positive, other, 0) - endpoint(negative, other, 1)),
                    sign*(endpoint(positive, other, 1) - endpoint(negative, other, 0)),
                ))
                if direction:
                    coefficients.append(upper if direction == 1 else lower)
                elif lower == upper:
                    coefficients.append(lower)
                elif known_gap[other] >= Fraction(1, 3):
                    coefficients.append((lower + upper) / 2)
                    correction[other] = directions[other]*(upper - lower)/(2*known_gap[other])
                else:
                    break
            else:
                floor = sum(self.bounds[CoreGeometry.key(vertex+"QR")][0]
                            for vertex in (positive, negative))
                result["biir_core_axis_clear_"+positive+negative] = add(
                    scale(delta[0], coefficients[0] + correction[0]),
                    scale(delta[1], coefficients[1] + correction[1]), const(-floor))
        return result

    def additional(self):
        names = [name for name in super().additional() if name not in UNUSED_SOURCES]
        return names + list(UPPER_SUMS) + list(self.projected) + list(REFINED_RIGHT)

    def __getitem__(self, name):
        assert name not in UNUSED_SOURCES
        if name in UPPER_SUMS:
            triangle, coordinate = UPPER_SUMS[name]
            assert CoreGeometry.sign(self.stage["signs"], triangle) == -1
            maximum = max(self.box[2][1], self.box[5][1])
            product_lower = max(4 * S, self.box[2][0] * self.box[5][0],
                                self.bounds["ABC"][0] + self.bounds["ABH"][0] + 2 * S)
            area_lower = self.bounds[triangle][0]
            return add(V[coordinate], V[coordinate + 1],
                       const(-(product_lower + area_lower) / maximum))
        if name.startswith("biir_core_axis_"):
            return self.projected[name]
        if name in REFINED_RIGHT:
            coordinate, sign = REFINED_RIGHT[name]
            return scale(add(V[coordinate], const(-self.right_refinement[coordinate])), sign)
        return super().__getitem__(name)


class LowerSources(CoreSources):
    lower_names = ("biir_retained_lower_hc", "biir_retained_lower_ab")
    endpoint_names = ("biir_retained_lower_p", "biir_retained_lower_q")

    def additional(self):
        return super().additional() + list(self.lower_names) + list(self.lower_endpoints)

    @cached_property
    def lower_terms(self):
        a_lo, a_hi = self.box[0]
        b_lo, b_hi = self.box[1]
        c_lo, c_hi = self.box[2]
        h_lo, h_hi = self.box[5]
        p = S / min(h_hi-a_lo, self.bounds["AEH"][1])
        q = S / min(c_hi-b_lo, self.bounds["BCF"][1])
        lower_remainder = add(mul(V[5], V[2]), scale(V[5], -p), scale(V[2], -q), const(-S))
        lower_base = add(scale(V[0], p), scale(V[1], q), scale(mul(V[0], V[1]), -1), const(-S))
        return lower_remainder, lower_base, max(a_hi/h_lo, b_hi/c_lo)

    @cached_property
    def lower_endpoints(self):
        remainder, base, _ = self.lower_terms
        ends = (add(mul(V[0], remainder), mul(V[5], base)),
                add(mul(V[1], remainder), mul(V[2], base)))

        def upper(poly):
            assert all(len(monomial) == len(set(monomial)) for monomial in poly)
            indices = sorted({i for monomial in poly for i in monomial})
            return max(sum(coefficient * prod(vertex[i] for i in monomial)
                           for monomial, coefficient in poly.items())
                       for corners in product(*(self.box[i] for i in indices))
                       for vertex in [dict(zip(indices, corners, strict=True))])

        return {name: ends[i] for i, name in enumerate(self.endpoint_names)
                if upper(ends[1-i]) < 0}

    def __getitem__(self, name):
        if name in self.endpoint_names:
            return self.lower_endpoints[name]
        if name not in self.lower_names:
            return super().__getitem__(name)
        lower_remainder, lower_base, ratio = self.lower_terms
        if name == "biir_retained_lower_hc":
            return lower_remainder
        return add(scale(lower_remainder, ratio), lower_base)


class FullArcSources(BIIRSources):
    central_names = ("biir_central_p_floor", "biir_central_q_floor", "biir_central_span")

    def lower_signs(self):
        known = self.stage["signs"]
        return tuple(BIIRGeometry.sign(known, triangle) for triangle in ("ACP", "HBP"))

    def additional(self):
        names = super().additional()
        signs = self.lower_signs()
        if signs == (1, 1):
            names.extend(self.central_names)
        if -1 in signs:
            names.append("biir_lower_ear_cost")
        return names

    def __getitem__(self, name):
        if name == "biir_lower_ear_cost":
            signs = self.lower_signs()
            assert -1 in signs
            rate = 12 if signs == (-1, -1) else Fraction(149, 20)
            return add(mul(V[5], V[2]), const(-rate*S))
        if name not in self.central_names:
            return super().__getitem__(name)
        assert self.lower_signs() == (1, 1)
        a_lo, b_lo = self.box[0][0], self.box[1][0]
        c_hi, h_hi = self.box[2][1], self.box[5][1]
        if name == "biir_central_p_floor":
            return add(V[6], const(-S*(c_hi+b_lo)/(h_hi*(c_hi-b_lo))))
        if name == "biir_central_q_floor":
            return add(V[7], const(-S*(h_hi+a_lo)/(c_hi*(h_hi-a_lo))))
        a, b, c, h = (V[i] for i in (0, 1, 2, 5))
        product_bound = scale(mul(add(h, scale(a, -1)), add(c, scale(b, -1))), c_hi*h_hi)
        clearance = add(scale(mul(h, c), 3), scale(mul(a, c), -1),
                        scale(mul(b, h), -1), scale(mul(a, b), -1))
        return add(product_bound, scale(clearance, -S))


LOWER_ARCS = {("BC", "EF"), ("BC", "FH"), ("CS", "FH"), ("SE", "HA")}


def source_factory(edges):
    return LowerSources if edges in LOWER_ARCS else CoreSources


def uses_lower_triangles(stage):
    return any("P" in word for word in stage["signs"])


def staged_geometry(edges, stage):
    if not stage:
        return ArcRoot(edges)
    if uses_lower_triangles(stage):
        assert edges in LOWER_ARCS
        return FullArcGeometry(edges, stage)
    return CoreGeometry(edges, stage)


def staged_sources(edges, stage):
    if uses_lower_triangles(stage):
        assert edges in LOWER_ARCS
        return FullArcSources(stage)
    return source_factory(edges)(stage)


def check(edges):
    folder = Path(__file__).with_name("N6_BIIR_CORE_TABLES") / "_".join(edges)
    return audit_six(Tables(folder), partial(staged_geometry, edges),
                     partial(staged_sources, edges), global_stages=0)


if __name__ == "__main__":
    import sys

    chosen = [tuple(word.split("/")) for word in sys.argv[1:]]
    for pair in chosen or DOMAINS:
        print("/".join(pair), check(pair), flush=True)
