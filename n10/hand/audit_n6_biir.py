"""Geometry and exact-table audit for the six-contact count BIIR."""

from fractions import Fraction
from functools import cache
from itertools import combinations, product
from pathlib import Path

from audit_c1_iirtt_lifted import V, add, const, mul, scale
from c1_iirtt_tables import Tables
from n6_contact_rows import RegionGeometry, RegionSources
from n6_contact_tables import audit_six


HULL = "ABCSEFH"
LOWER_EDGES = ("HA", "AB", "BC")
RIGHT_EDGES = ("CS", "SE")
S = Fraction(93, 1000)


def edges(polygon):
    return tuple(a + b for a, b in zip(polygon, polygon[1:] + polygon[0]))


def chord_signs(signs, polygon, point):
    for first, second in combinations(range(len(HULL)), 2):
        a, b = HULL[first], HULL[second]
        directions = {-1 if first < HULL.index(vertex) < second else 1
                      for vertex in polygon if vertex not in (a, b)}
        if len(directions) == 1:
            RegionGeometry.put(signs, a + b + point, next(iter(directions)))


def crossing_patterns(*, reduced=False, extended=False):
    hull_edges = edges(HULL)
    for first, second in combinations(range(len(HULL)), 2):
        arc = HULL[first + 1 : second + 1]
        other_arc = HULL[second + 1 :] + HULL[: first + 1]
        short_arc = min((arc, other_arc), key=len)
        if len(short_arc) == 1 and short_arc != "H":
            continue
        if reduced and short_arc == "H":
            continue
        if short_arc in ("AB", "BC", "CS"):
            continue
        ends = hull_edges[first], hull_edges[second]
        container = "".join(dict.fromkeys("".join(ends)))
        interior = tuple("HC" if edge in LOWER_EDGES else
                         "CE" if edge in RIGHT_EDGES else edge for edge in ends)
        triangle = {
            frozenset(("HC", "CE")): "HCE",
            frozenset(("HC", "FH")): "HCF",
            frozenset(("CE", "EF")): "CEF",
        }.get(frozenset(interior))
        signs = {}
        for vertex in HULL:
            orientation = 1 if (vertex in arc) == ("A" in arc) else -1
            RegionGeometry.put(signs, vertex + "QR", orientation)
        for polygon in (container, triangle) if triangle else (container,):
            for edge in edges(polygon):
                for point in "QR":
                    RegionGeometry.put(signs, edge + point, 1)
            if extended:
                for point in "QR":
                    chord_signs(signs, polygon, point)
        yield ends, signs


PATTERNS = tuple(signs for _, signs in crossing_patterns())
REDUCED_PATTERNS = tuple(signs for _, signs in crossing_patterns(reduced=True))
assert len(PATTERNS) == 12
assert len(REDUCED_PATTERNS) == 11


def placement_patterns(*, extended=False):
    orientation = ((1,-1), (-1,-1), (1,1))
    for placement in product(range(3), repeat=3):
        if not all(placement.count(i) <= cap for i, cap in enumerate((2, 1, 2))):
            continue
        signs = {}
        for point, region in zip("PQR", placement, strict=True):
            for edge, direction in zip(("BE", "AF"), orientation[region], strict=True):
                RegionGeometry.put(signs, edge + point, direction)
            if extended:
                chord_signs(signs, ("ABEF", "BCE", "AFH")[region], point)
        yield signs


PLACEMENTS = tuple(placement_patterns())


def joint_patterns(*, extended=False):
    def region(placement, point):
        if placement["BE" + point] < 0:
            return "BCE"
        return "AFH" if placement["AF" + point] > 0 else "ABEF"

    for _, arc in crossing_patterns(reduced=True, extended=extended):
        def signs_of(vertices):
            return {RegionGeometry.sign(arc, vertex + "QR") for vertex in vertices}

        for placement in placement_patterns(extended=extended):
            if any(arc.get(name, direction) != direction for name, direction in placement.items()):
                continue
            if any(len(signs_of(region(placement, point))) == 1 for point in "QR"):
                continue
            for chord in ("BE", "AF"):
                order = placement[chord + "R"] - placement[chord + "Q"]
                endpoints = (RegionGeometry.sign(arc, chord[0] + "QR")
                             - RegionGeometry.sign(arc, chord[1] + "QR"))
                if order * endpoints < 0:
                    break
            else:
                sides = set()
                for polygon in ("HABC", region(placement, "P")):
                    side = signs_of(polygon)
                    if len(side) == 1:
                        sides.update(side)
                if len(sides) == 2:
                    continue
                pattern = arc | placement
                if sides:
                    pattern["PQR"] = next(iter(sides))
                yield pattern


JOINT_PATTERNS = tuple(joint_patterns())
JOINT_CHORDS = tuple(joint_patterns(extended=True))
SIGN_RULES = {"biir_arc": PATTERNS, "biir_reduced_arc": REDUCED_PATTERNS,
              "biir_place": PLACEMENTS, "biir_joint_arc": JOINT_PATTERNS,
              "biir_joint_chords": JOINT_CHORDS}


def compatible_patterns(known, patterns=PATTERNS):
    return [pattern for pattern in patterns
            if all(known.get(name, orientation) == orientation
                   for name, orientation in pattern.items())]


@cache
def right_contact_ranges():
    alpha = Fraction(1037, 10000)
    scale = 10**6
    endpoints = (4*S/(1-alpha),) + tuple(Fraction(n, 1000) for n in range(890, 908))

    def down(value):
        return Fraction(value*scale // 1, scale)

    rows = []
    for lo, hi in zip(endpoints, endpoints[1:]):
        c, b, h = 1-S/(hi-S), alpha, Fraction(1)
        for _ in range(4):
            h = min(h, -down(-lo-(1-lo-S)/(1-c)))
            offset = down(S/(c-b))
            b = max(b, down(S/(h-offset)))
            c = min(c, -down(-1+S/(hi-offset)))
        rows.append((lo, hi, b, c, h))
    return tuple(rows)


class BIIRGeometry(RegionGeometry):
    def __init__(self, stage=None):
        super().__init__("biir", stage)

    def cap_value(self, triangle, orientation, witness):
        if witness[0] != "biir_right_cap":
            return super().cap_value(triangle, orientation, witness)
        assert orientation in (-1, 1)
        assert witness == ["biir_right_cap", triangle]
        assert triangle in {"BCE", "EFS", "ACS"}
        return Fraction(347, 500)

    def quad_cap(self, known, hull, witness):
        if witness == ["biir_abef"]:
            assert "".join(sorted(hull)) == "ABEF" and self.convex(known, hull)
            return Fraction(1)
        return super().quad_cap(known, hull, witness)

    def extra_sign_rule(self, known, row):
        if row[0] not in SIGN_RULES:
            return super().extra_sign_rule(known, row)
        rule, triangle, orientation = row
        assert triangle == self.key(triangle) and not self.sign(known, triangle)
        compatible = compatible_patterns(known, SIGN_RULES[rule])
        assert compatible and orientation in (-1, 1)
        assert all(pattern.get(triangle) == orientation for pattern in compatible)
        self.put(known, triangle, orientation)
        return True

    def relation(self, known, relation, witness):
        tag, *arguments = witness
        if tag == "biir_triangle_spread":
            triangle, points, isolated = arguments
            assert len(triangle) == 3 and isolated in triangle
            assert len(points) == len(set(points)) == 2
            assert all(self.inside(known, triangle, p) for p in points)
            direction = self.sign(known, isolated + points)
            assert direction
            others = [p for p in triangle if p != isolated]
            assert all(self.sign(known, p + points) == -direction for p in others)
            coefficients = {self.key(triangle): 1,
                            **{self.key(p + points): -1 for p in others}}
            assert relation[:2] == ["linear", coefficients]
            assert Fraction(relation[2]) == Fraction(109, 20) * S
            return
        if tag in ("biir_pentagon_area", "biir_pentagon_support"):
            hull, points = arguments
            assert len(hull) == len(set(hull)) == 5
            assert len(points) == len(set(points)) == 2
            direction = self.sign(known, hull[:3])
            assert direction and self.convex(known, hull, direction)
            assert all(self.inside(known, hull, p) for p in points)
            a, b, c, d, e = hull
            if tag == "biir_pentagon_area":
                assert relation[:2] == ["linear", {self.key(a+b+c): 1,
                                                   self.key(a+c+d): 1,
                                                   self.key(a+d+e): 1}]
                rate = 9
            else:
                assert relation[:4] == ["support", self.key(a+b+e),
                                        self.key(a+d+e), self.key(a+b+d)]
                rate = Fraction(1137, 100)
            assert Fraction(relation[-1]) == rate * S
            return
        super().relation(known, relation, witness)

    def terminal(self, known, row):
        if len(row) == 1 and row[0] in SIGN_RULES:
            assert not compatible_patterns(known, SIGN_RULES[row[0]])
        elif row == ["biir_hcf_spread"]:
            assert all(self.inside(known, "HCF", point) for point in "QR")
            assert self.sign(known, "HQR") == -1
            assert all(self.sign(known, point + "QR") == 1 for point in "ACF")
        else:
            super().terminal(known, row)


class BIIRSources(RegionSources):
    def __init__(self, stage):
        super().__init__(stage, row="biir")

    def has_right_occupant(self):
        return any(BIIRGeometry.sign(self.stage["signs"], "BE" + point) == -1
                   for point in "PQR")

    def upper_wing(self, side):
        edge, direction = ("BE", -1) if side == "right" else ("AF", 1)
        return any(BIIRGeometry.sign(self.stage["signs"], edge + point) == direction
                   for point in "QR")

    def across(self, pair):
        first, second = (BIIRGeometry.sign(self.stage["signs"], point + "QR") for point in pair)
        return first if first == -second else 0

    def additional(self):
        sources = super().additional()
        sources.extend(("biir_lower_sum", "biir_upper_sum_Q", "biir_upper_sum_R"))
        sources.extend(("biir_b_floor", "biir_c_cap", "biir_f_cap", "biir_h_cap"))
        sources.extend(("biir_right_x", "biir_right_x_span", "biir_right_x_chord",
                        "biir_right_contact_span"))
        sources.extend("biir_span" + pair for pair in ("HA", "BC") if self.across(pair))
        sources.extend("biir_" + side + "_span" for side in ("left", "right") if self.upper_wing(side))
        if self.has_right_occupant():
            sources.append("biir_right_occupied_cost")
        return sources

    def __getitem__(self, name):
        if name == "biir_right_x":
            return add(V[12], const(-Fraction(71, 100)))
        if name == "biir_right_contact_span":
            return add(V[2], scale(V[1], -1), const(-Fraction(13, 100)))
        if name in ("biir_right_x_span", "biir_right_x_chord"):
            _, c_hi = self.box[2]
            b_lo, _ = self.box[1]
            _, e_hi = self.box[3]
            span = c_hi - b_lo
            assert e_hi > 0 and span > 0
            offset = add(V[12], scale(V[2], -1))
            if name == "biir_right_x_span":
                return add(scale(offset, e_hi * span), scale(V[1], S), const(-S))
            height = max(self.box[13][0], S / span)
            return add(scale(offset, e_hi), scale(V[2], height), const(-S - height))
        if name in ("biir_b_floor", "biir_c_cap", "biir_f_cap", "biir_h_cap"):
            lower, upper = self.box[3]
            ranges = right_contact_ranges()
            assert ranges[0][0] <= lower <= upper <= ranges[-1][1]
            rows = [row for row in ranges if lower <= row[1] and row[0] <= upper]
            assert rows
            if name == "biir_b_floor":
                return add(V[1], const(-min(row[2] for row in rows)))
            coordinate, column = {"biir_c_cap": (2,3), "biir_f_cap": (4,3),
                                  "biir_h_cap": (5,4)}[name]
            return add(const(max(row[column] for row in rows)), scale(V[coordinate], -1))
        if name == "biir_right_occupied_cost":
            assert self.has_right_occupant()
            return add(V[3], scale(mul(V[1], V[3]), -1), const(-Fraction(1457, 250) * S))
        if name in ("biir_right_span", "biir_left_span"):
            side = name.split("_")[1]
            assert self.upper_wing(side)
            upper, lower = (2, 1) if side == "right" else (5, 0)
            return add(V[upper], scale(V[lower], -1), const(-Fraction(186, 721)))
        if name in ("biir_lower_sum", "biir_upper_sum_Q", "biir_upper_sum_R"):
            maximum = max(self.box[2][1], self.box[5][1])
            assert maximum > 0
            if name == "biir_lower_sum":
                return add(const(maximum - S / maximum), scale(add(V[6], V[7]), -1))
            start = 8 if name.endswith("Q") else 10
            floor = (Fraction(1457, 250) + 1) * S / maximum
            return add(V[start], V[start + 1], const(-floor))
        if name in ("biir_spanHA", "biir_spanBC"):
            pair = name[-2:]
            direction = self.across(pair)
            assert direction
            bounds = self.bounds["AEH" if pair == "HA" else "BCF"]
            lower = sum(self.bounds[BIIRGeometry.key(point + "QR")][0] for point in pair)
            axis = 0 if pair == "HA" else 1
            return add(scale(add(V[10 + axis], scale(V[8 + axis], -1)), direction),
                       const(-lower / bounds[1]))
        return super().__getitem__(name)


def check(folder):
    return audit_six(Tables(Path(folder)), BIIRGeometry, BIIRSources)


if __name__ == "__main__":
    default = Path(__file__).with_name("N6_BIIR_TABLES")
    print(check(default))
