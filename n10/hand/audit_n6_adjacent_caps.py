"""Reconstruct the six-contact adjacent-cap arc proofs from their literal tables."""

from fractions import Fraction as F
from functools import partial
from pathlib import Path
import sys

from c1_iirtt_tables import Tables
from audit_n6_iirl import IIRL
from audit_c1_iirtt_lifted import V, add, const, mul, scale
from n6_contact_rows import RegionGeometry, RegionSources, S
from n6_contact_tables import audit_six


HULL = "ABCRESFH"
EDGES = tuple(HULL[i] + HULL[(i + 1) % len(HULL)] for i in range(len(HULL)))
LOWER_EDGES = {"HA", "AB", "BC"}
OCTAGON_CAPS = {(HULL * 2)[i:i+4] for i in range(8)}
AREA_CAPS = dict.fromkeys(("REF", "CES", "HCF", "BCE", "ABF", "HCR", "CRF", "ACR", "RFH"), F(347, 500))
AREA_CAPS["HAB"] = 3*S
POINT_TRIANGLES = {
    ("iirt", ("CR", "SF")): {"P": "CEF", "Q": "CEF"},
    ("iirt", ("RE", "HA")): {"P": "HCE", "Q": "HCE"},
    ("birt", ("AB", "RE")): {"Q": "HCE"},
    ("birt", ("BC", "FH")): {"P": "HBC", "Q": "HCF"},
}


def edges(polygon):
    return tuple(a + b for a, b in zip(polygon, polygon[1:] + polygon[:1]))


class AdjacentGeometry(RegionGeometry):
    def __init__(self, count, crossed, metadata=None, *, separate_rh=True):
        assert count in ("birt", "iirt")
        first, second = crossed
        i, j = EDGES.index(first), EDGES.index(second)
        assert i < j and 3 <= j - i <= 5
        if count == "birt":
            assert (first in LOWER_EDGES) != (second in LOWER_EDGES)
            if second in LOWER_EDGES:
                first, second = second, first
        else:
            assert crossed not in (("BC", "FH"), ("CR", "HA"))
            if "A" in HULL[i + 1:j + 1]:
                first, second = second, first
        self.crossed = "".join(crossed)
        self.entry, self.exit = first, second
        self.diagonals_separate = count == "iirt" and crossed == ("CR", "FH")
        self.separate_rh = separate_rh
        self.point_triangles = POINT_TRIANGLES.get((count, crossed), {})
        super().__init__(count, metadata)
        assert self.outer == HULL

    def coarse_box(self):
        initial = super().coarse_box()
        lo, hi = initial[4]
        initial[4] = (lo, min(hi, 1+S-4*S/(1-S)))
        return initial

    def has_container(self, point, container):
        return (point in "PQ" and container in (self.crossed, self.point_triangles.get(point))
                or super().has_container(point, container))

    def base(self):
        known = super().base()
        start, stop = EDGES.index(self.entry), EDGES.index(self.exit)
        negative = (HULL * 2)[start + 1:start + 1 + (stop - start) % len(HULL)]
        for vertex in HULL:
            self.put(known, vertex+"PQ", -1 if vertex in negative else 1)
        for point in "PQ":
            for edge in edges(self.crossed):
                self.put(known, edge+point, 1)
            if point in self.point_triangles:
                for edge in edges(self.point_triangles[point]):
                    self.put(known, edge+point, 1)
        for i in range(len(HULL)):
            cap = (HULL * 2)[i:i+4]
            outer_edges = edges(cap)[:3]
            for edge, point in ((self.entry, "Q"), (self.exit, "P")):
                if edge in outer_edges:
                    self.put(known, cap[0]+cap[-1]+point, 1)
        if self.row == "birt":
            self.put(known, "HBP", 1)
        if self.diagonals_separate:
            assert self.entry == "CR"
            self.put(known, "CFP", -1)
            self.put(known, "CFQ", 1)
            if self.separate_rh:
                self.put(known, "RHP", 1)
                self.put(known, "RHQ", -1)
        return known

    def check_triangle_arc(self, known, triangle, edge, point):
        assert len(set(triangle)) == len(triangle) == 3
        assert self.sign(known, triangle) == 1 and set(edge) <= set(triangle)
        assert (edge, point) in ((self.entry, "Q"), (self.exit, "P"))
        assert any(set(triangle) <= set(cap) for cap in OCTAGON_CAPS) or (
            set(triangle) in [set(word) for word in AREA_CAPS]
        )

    def extra_sign_rule(self, known, row):
        if row[0] == "adjacent_triangle_arc":
            _, polygon, crossed, point, target, sign = row
            self.check_triangle_arc(known, polygon, crossed, point)
        elif row[0] == "adj_four_cap":
            _, polygon, occupant, point, target, sign = row
            assert polygon in OCTAGON_CAPS and self.convex(known, polygon)
            assert {occupant, point} == {"P", "Q"} and self.inside(known, polygon, occupant)
        else:
            return super().extra_sign_rule(known, row)
        tests = {edge+point for edge in edges(polygon)}
        assert target in tests and sign == -1 and not self.sign(known, target)
        assert all(self.sign(known, t) == 1 for t in tests - {target})
        self.put(known, target, sign)
        return True

    def terminal(self, known, row):
        if row[0] == "adjacent_triangle_arc":
            _, triangle, crossed, point = row
            self.check_triangle_arc(known, triangle, crossed, point)
            assert self.inside(known, triangle, point)
        elif row[0] == "adj_four_cap":
            _, polygon, occupants = row
            assert polygon in OCTAGON_CAPS and self.convex(known, polygon)
            assert occupants == "PQ" and all(self.inside(known, polygon, p) for p in occupants)
        else:
            super().terminal(known, row)

    def relation(self, known, relation, witness):
        if witness[0] in ("side_tri_spread", "side_spread"):
            return IIRL.relation(self, known, relation, witness)
        if witness[0] in ("support_pent_two", "adj_pentagon_area"):
            _, pentagon = witness
            a, b, c, d, e = pentagon
            direction = self.sign(known, a+b+c)
            assert direction and self.convex(known, pentagon, direction)
            assert all(self.inside(known, pentagon, point) for point in "PQ")
            if witness[0] == "support_pent_two":
                assert relation[:4] == ["support", self.key(a+b+e), self.key(a+d+e), self.key(a+b+d)]
                assert F(relation[4]) == F(1137, 100)*S
            else:
                assert relation[:2] == ["linear", {self.key(t): 1 for t in (a+b+c, a+c+d, a+d+e)}]
                assert F(relation[2]) == 9*S
            return
        if witness[0] != "adjacent_cap_bounds":
            return super().relation(known, relation, witness)
        _, triangle, value = witness
        assert self.sign(known, triangle) == 1
        assert F(value) == AREA_CAPS[triangle]
        assert relation[:2] == ["linear", {self.key(triangle): -1}]
        assert F(relation[2]) == -AREA_CAPS[triangle]


class AdjacentSources(RegionSources):
    EXTRA = {"right_abscissa_floor", "right_ordinate_ceiling",
             "adjacent_bottom_c_ceiling", "top_horizontal_gap",
             "adjacent_ear_budget", "lower_compatibility",
             "lower_central_compatibility", "lower_ear_cost"}

    def lifted_physical(self, name):
        if name in self.EXTRA or name.startswith("chord_"):
            return self[name]
        return super().lifted_physical(name)

    def chord_factor(self, name):
        kind, pair = name.removeprefix("chord_").split("_")
        upper = self.reg.middle
        assert len(upper) == 2 and len(pair) == 2
        assert len(set(pair)) == 2 and set(pair) <= set(self.reg.hull)
        signs = self.stage["signs"]
        first, second = (vertex + upper for vertex in pair)
        side = RegionGeometry.sign(signs, first)
        assert side in (-1, 1) and RegionGeometry.sign(signs, second) == -side
        final = self.stage["area"]["final"]
        first, second = map(RegionGeometry.key, (first, second))
        floor = F(final[first]["lo"]) + F(final[second]["lo"])
        assert floor >= 2 * S
        if kind == "difference":
            return add(self["lo_" + first], self["lo_" + second])
        assert kind == "gap" and pair in ("AH", "BC")
        i = 6 + 2 * "PQRS".index(upper[0])
        j = 6 + 2 * "PQRS".index(upper[1])
        if pair == "AH":
            positive = add(V[i], scale(V[j], -1))
            span = self.box[5][1] - self.box[0][0]
        else:
            positive = add(V[j + 1], scale(V[i + 1], -1))
            span = self.box[2][1] - self.box[1][0]
        assert span > 0
        return add(scale(positive, side), const(-floor / span))

    def __getitem__(self, name):
        a, b, c, e, f, h, _, _, _, _, r, d, t, _ = V
        if name.startswith("chord_"):
            return self.chord_factor(name)
        if name.startswith(("upper_opposite_x_", "upper_opposite_y_")):
            _, _, axis, point = name.split("_")
            assert point in self.reg.middle
            x, y = V[6+2*"PQRS".index(point):8+2*"PQRS".index(point)]
            final = self.stage["area"]["final"]
            low_h, low_e = F(final["CH"+point]["lo"]), F(final["EF"+point]["lo"])
            coefficient = add(h, scale(mul(h, f), -1), scale(c, -1), mul(c, e))
            assert min(low_h, low_e) >= S
            if axis == "x":
                maximum = F(final["EFH"]["hi"])
                return add(mul(coefficient, x), scale(c, maximum-low_e),
                           scale(f, low_h), const(-low_h))
            maximum = F(final["CEF"]["hi"])
            return add(scale(mul(coefficient, y), -1), scale(h, maximum-low_e),
                       scale(e, low_h), const(-low_h))
        if name in ("right_abscissa_floor", "right_ordinate_ceiling",
                    "adjacent_bottom_c_ceiling"):
            assert self.reg.top == "S" and self.reg.right == "R"
            if name == "right_abscissa_floor":
                return add(r, const(-F(71, 100)))
            if name == "right_ordinate_ceiling":
                return add(const(F(5, 8)), scale(d, -1))
            return add(const(F(881, 1000)), scale(c, -1))
        if name == "lower_ear_cost":
            assert self.reg.lower == "P"
            signs = self.stage["signs"]
            assert signs.get("ACP") == -1 or signs.get("BHP") == 1
            return add(mul(h, c), const(-F(149, 20)*S))
        if name in ("lower_compatibility", "lower_central_compatibility"):
            assert self.reg.lower == "P"
            (a0, a1), (b0, b1), (c0, c1), _, _, (h0, h1) = self.box[:6]
            ratio = max(a1/h0, b1/c0)
            p0, q0 = S/(h1-a0), S/(c1-b0)
            if name == "lower_central_compatibility":
                signs = self.stage["signs"]
                assert signs.get("ACP") == 1 and signs.get("BHP") == -1
                p0 = max(p0, S*(c1+b0)/(h1*(c1-b0)))
                q0 = max(q0, S*(h1+a0)/(c1*(h1-a0)))
            return add(scale(mul(h, c), ratio), scale(mul(a, b), -1),
                       scale(h, -ratio*p0), scale(c, -ratio*q0),
                       scale(a, p0), scale(b, q0), const(-(1+ratio)*S))
        if name in ("top_horizontal_gap", "adjacent_ear_budget"):
            assert self.reg.top == "S"
            final = self.stage["area"]["final"]
            if name == "top_horizontal_gap":
                hi = F(final["EFH"]["hi"])
                top_floor, left_floor = F(final["EFS"]["lo"]), F(final["FHS"]["lo"])
                assert hi >= S and min(top_floor, left_floor) >= S
                return add(scale(t, hi), scale(f, left_floor-top_floor-hi), const(-left_floor))
            assert self.reg.right == "R"
            middle_floor, right_floor = F(final["ERS"]["lo"]), F(final["CER"]["lo"])
            assert min(middle_floor, right_floor) >= S
            gap = self.box[3][1]-self.box[11][0]
            assert gap > 0
            return add(const(gap-right_floor), scale(c, -gap),
                       scale(mul(e, c), gap), scale(mul(e, t), -gap),
                       scale(e, right_floor-middle_floor))
        return super().__getitem__(name)


def check(count, crossed, folder):
    tables = Tables(folder)
    separate_rh = count == "iirt" and crossed == ("CR", "FH") and "HPR" in tables.domain["base"]
    geometry = partial(AdjacentGeometry, count, crossed, separate_rh=separate_rh)
    sources = partial(AdjacentSources, row=count)
    return audit_six(tables, geometry, sources, global_stages=0)


if __name__ == "__main__":
    case = sys.argv[1] if len(sys.argv) > 1 else "IIRT_AB_RE"
    family, left, right = case.split("_")
    folder = (Path(sys.argv[2]) if len(sys.argv) > 2
              else Path(__file__).with_name("N6_ADJACENT_CAPS_TABLES") / case)
    print(case, check(family.lower(), (left, right), folder))
