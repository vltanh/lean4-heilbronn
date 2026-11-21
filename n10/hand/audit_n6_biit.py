"""Verify the literal BIIT arc tables."""

from fractions import Fraction as F
from functools import cache, partial
from itertools import product
from pathlib import Path
import sys

from c1_iirtt_tables import Tables
from audit_c1_iirtt_lifted import V, add, const, mul, scale
from n6_contact_rows import LOWER_COST, RegionGeometry, S
from n6_contact_tables import audit_six
from n6_iirl_domain import edges
from audit_n6_adjacent_caps import AdjacentSources


HULL = "ABCESFH"
CONTACT_EDGES = {"HA": "HC", "AB": "HC", "BC": "HC", "CE": "CE",
                 "ES": "EF", "SF": "EF", "FH": "FH"}
FAN_TRIANGLES = {
    frozenset(("HC", "CE")): "HCE",
    frozenset(("HC", "FH")): "HCF",
    frozenset(("CE", "EF")): "CEF",
    frozenset(("EF", "FH")): "EFH",
}


def arc_regions(arc):
    cycle = HULL * 2
    i = cycle.index(arc)
    first = HULL[(i-1) % len(HULL)] + arc[0]
    second = arc[-1] + cycle[i+len(arc)]
    regions = [first+second]
    fan = FAN_TRIANGLES.get(frozenset((CONTACT_EDGES[first], CONTACT_EDGES[second])))
    if fan:
        regions.append(fan)
    return regions


ARCS = tuple((HULL * 2)[i:i+n] for n in (2, 3) for i in range(len(HULL))
             if (HULL * 2)[i:i+n] != "AB")
UNRESTRICTED_ORDER = {"BC", "CE", "BCE", "CES"}
TOP_AREA_CAPS = {"CES": F(27, 40), "FHS": F(27, 40)}
ORDERED_AREA_CAPS = {"ACE": F(171, 250), "BCE": F(307, 500), "CEF": F(337, 500)}
TRANSPOSED_AREA_CAPS = {"BFH": F(171, 250), "AFH": F(307, 500), "EFH": F(337, 500)}


@cache
def lower_chord_catalogue(point):
    assert len(point) == 1 and point in "QR"
    rows = []
    for entry, exit in product(("HA", "AB", "BC"), ("CE", "ES", "SF", "FH")):
        i, j = HULL.index(entry[0]), HULL.index(exit[0])
        negative = (HULL * 2)[i + 1:i + 1 + (j - i) % len(HULL)]
        signs = {}
        for vertex in HULL:
            RegionGeometry.put(signs, vertex + "P" + point, -1 if vertex in negative else 1)
        cap = "".join(dict.fromkeys(entry + exit))
        regions = [("P", cap), (point, cap)]
        if entry == "HA":
            regions.append(("P", "HAC"))
        if entry == "BC":
            regions.append(("P", "HBC"))
        if exit == "CE":
            regions.append((point, "HCE"))
        if exit == "FH":
            regions.append((point, "HCF"))
        for target, region in regions:
            for edge in edges(region):
                RegionGeometry.put(signs, edge + target, 1)
        rows.append(signs)
    return tuple(rows)


class BIITGeometry(RegionGeometry):
    def __init__(self, arc, metadata=None):
        assert arc in ARCS
        self.arc = arc
        self.regions = arc_regions(arc)
        super().__init__("biit", metadata)
        assert self.outer == HULL

    def has_container(self, point, container):
        return (point in "QR" and container in self.regions
                or super().has_container(point, container))

    def arc_signs(self, arc):
        signs = {}
        for vertex in self.outer:
            self.put(signs, vertex+"QR", 1 if (vertex in arc) == ("A" in arc) else -1)
        for point in "QR":
            for polygon in arc_regions(arc):
                for edge in edges(polygon):
                    self.put(signs, edge+point, 1)
        return signs

    def base(self):
        known = super().base()
        for area, orientation in self.arc_signs(self.arc).items():
            self.put(known, area, orientation)
        return known

    def viable_arcs(self, known):
        for arc in ARCS:
            row = self.arc_signs(arc)
            if all(known.get(word, sign) == sign for word, sign in row.items()):
                yield row

    def lower_chords(self, known, point):
        return [row for row in lower_chord_catalogue(point)
                if all(known.get(word, value) == value for word, value in row.items())]

    def cap_value(self, triangle, orientation, witness):
        if witness == ["biit_area_cap", triangle]:
            assert orientation == 1
            if triangle in TOP_AREA_CAPS:
                return TOP_AREA_CAPS[triangle]
            if triangle in ORDERED_AREA_CAPS:
                assert self.arc not in UNRESTRICTED_ORDER or self.box[3][1] <= self.box[4][0]
                return ORDERED_AREA_CAPS[triangle]
            assert self.box[4][1] <= self.box[3][0]
            return TRANSPOSED_AREA_CAPS[triangle]
        return super().cap_value(triangle, orientation, witness)

    def extra_sign_rule(self, known, row):
        if row[0] == "biit_lower_chord":
            _, point, triangle, sign = row
            viable = self.lower_chords(known, point)
            assert viable and triangle not in known and all(p.get(triangle) == sign for p in viable)
            self.put(known, triangle, sign)
            return True
        if row[0] != "biit_arc":
            return super().extra_sign_rule(known, row)
        _, triangle, sign = row
        viable = list(self.viable_arcs(known))
        assert viable and triangle not in known and all(p.get(triangle) == sign for p in viable)
        self.put(known, triangle, sign)
        return True

    def terminal(self, known, row):
        if row == ["biit_arc"]:
            assert not list(self.viable_arcs(known))
        elif row[0] == "biit_lower_chord":
            assert len(row) == 2 and not self.lower_chords(known, row[1])
        else:
            super().terminal(known, row)

    def quad_cap(self, known, hull, witness):
        if witness[0] == "central_core":
            assert witness == ["central_core", "ABEF"]
            assert set(hull) == set("ABEF") and self.convex(known, hull)
            return F(1)
        return super().quad_cap(known, hull, witness)

    def relation(self, known, relation, witness):
        tag, *args = witness
        if tag in ("biit_pent_area", "biit_pent_support"):
            word, = args
            a, b, c, d, e = word
            assert self.convex(known, word, self.sign(known, word[:3]))
            assert all(self.inside(known, word, point) for point in "QR")
            if tag == "biit_pent_area":
                assert relation[:2] == ["linear", {self.key(t): 1 for t in (a+b+c, a+c+d, a+d+e)}]
                assert F(relation[2]) == 9 * S
            else:
                assert relation[:4] == ["support", self.key(a+b+e), self.key(a+d+e), self.key(a+b+d)]
                assert F(relation[4]) == F(1137, 100) * S
            return
        if tag == "biit_triangle_spread":
            triangle, isolated = args
            assert isolated in triangle and all(self.inside(known, triangle, point) for point in "QR")
            side = self.sign(known, isolated + "QR")
            opposite = [v for v in triangle if v != isolated]
            assert side and all(self.sign(known, v + "QR") == -side for v in opposite)
            expected = {self.key(triangle): 1, **{self.key(v + "QR"): -1 for v in opposite}}
            assert relation[:2] == ["linear", expected]
            assert F(relation[2]) == F(109, 20) * S
            return
        if tag == "biit_quad_spread":
            word, diagonal, pair = args
            assert pair in ("PQ", "PR", "QR")
            assert self.convex(known, word) and all(self.inside(known, word, p) for p in pair)
            diagonals = word[::2], word[1::2]
            assert diagonal in diagonals
            for chord in diagonals:
                first, second = (self.sign(known, chord + p) for p in pair)
                assert first and second == -first
            a, b, c, d = word
            x, y = diagonal
            side = self.sign(known, diagonal + pair[0])
            expected = {self.key(a+b+c): 1, self.key(a+c+d): 1,
                        self.key(x+pair): side * self.sign(known, x+pair),
                        self.key(y+pair): -side * self.sign(known, y+pair)}
            assert all(expected.values()) and relation[:2] == ["linear", expected]
            assert F(relation[2]) == (6 if set(word) in (set("ABEF"), set("CEFH"))
                                      else F(29, 5)) * S
            return
        if witness[0] == "central_core":
            assert witness == ["central_core", "ABEF"]
            assert self.convex(known, "ABEF")
            assert relation == ["linear", {"ABE": -1, "AEF": -1}, "-1"]
            return
        return super().relation(known, relation, witness)


class BIITSources(AdjacentSources):
    def __init__(self, stage, arc):
        super().__init__(stage, row="biit")
        self.e_le_f = arc not in UNRESTRICTED_ORDER

    def additional(self):
        return [name for name in super().additional() if name != "order_fe" or self.e_le_f]

    def lifted_physical(self, name):
        if name.startswith("biit_"):
            return self[name]
        return super().lifted_physical(name)

    def __getitem__(self, name):
        if not name.startswith("biit_"):
            return super().__getitem__(name)
        a, b, c, e, f, h, p, q, u, v, r, w, t, z = V
        final = self.stage["area"]["final"]

        def low(triangle):
            return F(final[BIITGeometry.key(triangle)]["lo"])

        if name == "biit_top_vertical_gap":
            maximum = F(final["CEF"]["hi"])
            upper, right = low("ESF"), low("CES")
            assert maximum >= S and min(upper, right) >= S
            return add(scale(z, maximum), scale(e, right - upper - maximum), const(-right))
        if name.startswith("biit_span_"):
            weight = F(name.removeprefix("biit_span_"))
            floor = {F(1, 2): F(10411, 10000), F(1): F(14724, 10000),
                     F(2): F(20823, 10000)}[weight]
            assert floor**2 < 4 * weight * LOWER_COST
            return add(scale(c, weight), h, const(-floor))
        maximum = max(self.box[2][1], self.box[5][1])
        lower_floor = low("HCP")
        if name == "biit_lower_sum":
            return add(const(maximum - lower_floor / maximum), scale(p, -1), scale(q, -1))
        kind, point = name.rsplit("_", 1)
        assert point in ("Q", "R")
        x, y = (u, v) if point == "Q" else (r, w)
        upper_floor = low("HC" + point)
        if kind == "biit_upper_sum":
            return add(x, y, const(-(LOWER_COST + upper_floor) / maximum))
        assert kind == "biit_lower_upper"
        return add(mul(h, add(x, scale(p, -1))), mul(c, add(y, scale(q, -1))),
                   const(-upper_floor - lower_floor))


if __name__ == "__main__":
    arc = sys.argv[1] if len(sys.argv) > 1 else "ES"
    assert arc in ARCS
    folder = (Path(sys.argv[2]) if len(sys.argv) > 2
              else Path(__file__).with_name("N6_BIIT_TABLES") / arc)
    print(arc, audit_six(Tables(folder), partial(BIITGeometry, arc),
                         partial(BIITSources, arc=arc), global_stages=0))
