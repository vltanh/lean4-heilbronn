"""Read the exact ESF arc tables for the six-contact BIIT count."""

from fractions import Fraction as F
from itertools import product
from pathlib import Path
import sys

from audit_c1_iirtt_lifted import V, add, const, mul, scale
from audit_n6_biit import BIITGeometry, BIITSources, HULL
from c1_contact_geometry_independent import S
from c1_iirtt_tables import Tables
from n6_contact_rows import LOWER_COST
from n6_contact_tables import audit_six
from n6_iirl_domain import edges


FORCED = {"CFR": 1, "BER": 1, "AFQ": -1}
INCREASING = ("AE", "AF", "AH", "AS", "BC", "BE", "BF", "BS", "CE", "HF")
AREA_CAPS = {"ACE": F(171, 250), "BCE": F(307, 500), "CEF": F(337, 500),
             "CES": F(27, 40), "FHS": F(27, 40)}


def lower_chord_rows(point, tighter=False):
    assert point in "QR" and len(point) == 1
    for lower, upper in product(("HA", "AB", "BC"), ("CE", "ES", "SF", "FH")):
        if tighter and (lower, upper) == ("BC", "CE"):
            continue
        i, j = HULL.index(lower[0]), HULL.index(upper[0])
        negative = (HULL * 2)[i + 1:(j if j > i else j + 7) + 1]
        signs = {}
        for vertex in HULL:
            ESFGeometry.put(signs, vertex + "P" + point, -1 if vertex in negative else 1)
        cap = "".join(dict.fromkeys(lower + upper))
        regions = [("P", cap), (point, cap)]
        if lower in ("HA", "BC"):
            regions.append(("P", {"HA": "HAC", "BC": "HBC"}[lower]))
        if upper in ("CE", "FH"):
            regions.append((point, {"CE": "HCE", "FH": "HCF"}[upper]))
        for target, region in regions:
            for edge in edges(region):
                ESFGeometry.put(signs, edge + target, 1)
        if tighter and (lower, upper) == ("AB", "CE"):
            ESFGeometry.put(signs, "ACP", -1)
        yield signs


class ESFGeometry(BIITGeometry):
    def __init__(self, metadata=None):
        super().__init__("ESF", metadata)

    def viable_lower_chords(self, known, point, tighter=False):
        return [row for row in lower_chord_rows(point, tighter)
                if all(known.get(word, value) == value for word, value in row.items())]

    def verify_gaps(self, known):
        for vertex in "CH":
            assert self.sign(known, vertex + "QR") == 1
        for vertex in "EF":
            assert self.sign(known, vertex + "QR") == -1

    def initial_value(self, known, triangle, side, witness, ancestor):
        if witness == ["esf_competitive"]:
            assert side == "lo" and self.sign(known, triangle)
            return F(9307, 100000)
        if witness == ["esf_shift_floor"]:
            assert side == "lo"
            self.verify_gaps(known)
            if triangle in ("CER", "FHQ"):
                inner = "CEQ" if triangle == "CER" else "FHR"
                assert self.sign(known, triangle) == self.sign(known, inner) == 1
                return 3*S
            assert triangle in ("AQR", "BQR", "PQR", "QRS")
            a, b, c, e, f, h = self.box[:6]
            left = max(0, c[0]-f[1])
            right = max(0, h[0]-e[1])
            dx = 2*S*(1+left)/(1-left*right)
            dy = 2*S*(1+right)/(1-left*right)
            increments = {
                "AQR": dx*max(h[0]-a[1], S/b[1]),
                "BQR": dy*max(c[0]-b[1], S/a[1]),
                "PQR": S*max(dx/c[1], dy/h[1]),
                "QRS": S*max(dx/(1-f[0]), dy/(1-e[0])),
            }
            assert self.sign(known, triangle) == (-1 if triangle == "QRS" else 1)
            return S+increments[triangle]
        return super().initial_value(known, triangle, side, witness, ancestor)

    def cap_value(self, triangle, orientation, witness):
        if witness[0] == "esf_area_cap":
            assert witness == ["esf_area_cap", triangle]
            assert orientation in (-1, 1)
            return AREA_CAPS[triangle]
        return super().cap_value(triangle, orientation, witness)

    def extra_sign_rule(self, known, row):
        tag, *args = row
        if tag in ("esf_chord", "esf_tight_chord"):
            point, triangle, value = args
            viable = self.viable_lower_chords(known, point, tag == "esf_tight_chord")
            assert viable and triangle not in known
            assert all(chord.get(triangle) == value for chord in viable)
        elif tag == "esf_forced":
            triangle, value = args
            self.verify_gaps(known)
            assert FORCED[triangle] == value and not self.sign(known, triangle)
        elif tag == "esf_monotone":
            edge, point, value = args
            self.verify_gaps(known)
            assert edge in INCREASING
            assert (point, value) in (("R", 1), ("Q", -1))
            assert self.sign(known, edge + ("Q" if point == "R" else "R")) == value
            triangle = edge + point
            assert not self.sign(known, triangle)
        else:
            return super().extra_sign_rule(known, row)
        self.put(known, triangle, value)
        return True

    def terminal(self, known, row):
        tag, *args = row
        if tag in ("esf_chord", "esf_tight_chord"):
            point, = args
            assert not self.viable_lower_chords(known, point, tag == "esf_tight_chord")
        elif tag == "esf_forced":
            triangle, value = args
            self.verify_gaps(known)
            assert FORCED[triangle] == value and self.sign(known, triangle) == -value
        elif tag == "esf_monotone":
            edge, = args
            self.verify_gaps(known)
            assert edge in INCREASING and self.sign(known, edge + "Q") == 1
            assert self.sign(known, edge + "R") == -1
        elif tag == "area_cap" and args[1] == "":
            triangle, _, value, witness = args
            assert self.cap_value(triangle, self.sign(known, triangle), witness) == F(value)
            assert F(value) < F(9307, 100000)
        else:
            super().terminal(known, row)

    def relation(self, known, relation, witness):
        tag, *args = witness
        if tag in ("esf_pent_area", "esf_pent_support"):
            word, = args
            a, b, c, d, e = word
            assert self.convex(known, word, self.sign(known, word[:3]))
            assert all(self.inside(known, word, point) for point in "QR")
            if tag == "esf_pent_area":
                coefficients = {self.key(t): 1 for t in (a+b+c, a+c+d, a+d+e)}
                assert relation == ["linear", coefficients, "837/1000"]
            else:
                assert relation == ["support", self.key(a+b+e), self.key(a+d+e),
                                    self.key(a+b+d), "105741/100000"]
        elif tag == "esf_tri_spread":
            triangle, isolated, *pair_argument = args
            pair, = pair_argument or ["QR"]
            assert pair in ("PQ", "PR", "QR")
            assert all(self.inside(known, triangle, point) for point in pair)
            side = self.sign(known, isolated + pair)
            assert side in (-1, 1) and isolated in triangle
            opposite = [vertex for vertex in triangle if vertex != isolated]
            assert all(self.sign(known, vertex + pair) == -side for vertex in opposite)
            coefficients = {self.key(triangle): 1, **{self.key(v+pair): -1 for v in opposite}}
            assert relation[:2] == ["linear", coefficients]
            assert F(relation[2]) == F(109, 20) * S
        elif tag == "esf_quad_spread":
            word, diagonal, pair = args
            assert pair in ("PQ", "PR", "QR")
            assert self.convex(known, word) and all(self.inside(known, word, p) for p in pair)
            assert diagonal in (word[::2], word[1::2])
            for chord in (word[::2], word[1::2]):
                first, second = (self.sign(known, chord + p) for p in pair)
                assert first and second == -first
            a, b, c, d = word
            x, y = diagonal
            side = self.sign(known, diagonal + pair[0])
            coefficients = {self.key(a+b+c): 1, self.key(a+c+d): 1,
                            self.key(x+pair): side*self.sign(known, x+pair),
                            self.key(y+pair): -side*self.sign(known, y+pair)}
            assert all(coefficients.values()) and relation[:2] == ["linear", coefficients]
            assert F(relation[2]) == (6 if set(word) in (set("ABEF"), set("CEFH"))
                                      else F(29, 5)) * S
        else:
            super().relation(known, relation, witness)


def difference(first, second):
    return add(first, scale(second, -1))


def complement(value):
    return difference(const(1), value)


class ESFSources(BIITSources):
    AFFINE = ("esf_dx", "esf_dy", "esf_top_vertical_gap", "esf_lower_sum",
              "esf_upper_sum_Q", "esf_upper_sum_R",
              "esf_box_Qx", "esf_box_Qy", "esf_box_Rx", "esf_box_Ry",
              "esf_x_order", "esf_y_order", "esf_under_x", "esf_under_y",
              "esf_over_x", "esf_over_y", "esf_e_ceiling")
    CUBIC = ("esf_actual_Qx", "esf_actual_Qy", "esf_actual_Rx", "esf_actual_Ry")

    def __init__(self, stage):
        super().__init__(stage, "ESF")

    def lower_ear(self):
        signs = self.stage["signs"]
        return signs.get("ACP") == -1 or signs.get("BHP") == 1

    def metric(self):
        return (*self.AFFINE, "esf_e_ear_ceiling") if self.lower_ear() else self.AFFINE

    def additional(self):
        return [*super().additional(), *self.metric()]

    def __getitem__(self, name):
        a, b, c, e, f, h, p, q, u, v, r, w, j, k = V
        final = self.stage["area"]["final"]

        def low(word):
            return F(final[ESFGeometry.key(word)]["lo"])

        def high(word):
            return F(final[ESFGeometry.key(word)]["hi"])

        if name == "esf_e_ceiling":
            return difference(const(F(171, 250)), e)
        if name == "esf_e_ear_ceiling":
            assert self.lower_ear()
            return difference(const(F(661, 1000)), e)
        if name == "esf_dx":
            return add(difference(u, r), scale(mul(difference(c, f), difference(w, v)), -1),
                       const(-low("CQR")-low("FQR")))
        if name == "esf_dy":
            return add(difference(w, v), scale(mul(difference(h, e), difference(u, r)), -1),
                       const(-low("HQR")-low("EQR")))
        if name in ("esf_x_order", "esf_y_order"):
            first, second = low("CQR")+low("FQR"), low("HQR")+low("EQR")
            left = max(0, self.box[2][0]-self.box[4][1])
            right = max(0, self.box[5][0]-self.box[3][1])
            if name == "esf_x_order":
                return add(difference(u, r), const(-(first+left*second)/(1-left*right)))
            return add(difference(w, v), const(-(second+right*first)/(1-left*right)))
        if name in ("esf_under_x", "esf_under_y", "esf_over_x", "esf_over_y"):
            known = self.stage["signs"]
            for point in "CH":
                assert ESFGeometry.sign(known, point+"QR") == 1
            for point in "EF":
                assert ESFGeometry.sign(known, point+"QR") == -1
            x_axis = name.endswith("_x")
            gap = difference(w, v) if x_axis else difference(u, r)
            if name.startswith("esf_under"):
                span = self.box[5 if x_axis else 2][1]
                clearance = low("HCP")
                signed = ESFGeometry.determinant("PQR")
                floor = min(low("HQR"), low("CQR"))
            else:
                span = 1-self.box[3 if x_axis else 4][0]
                clearance = low("ESF")
                signed = scale(ESFGeometry.determinant("SQR"), -1)
                floor = min(low("EQR"), low("FQR"))
            return add(signed, const(-floor), scale(gap, -clearance/span))
        if name == "esf_top_vertical_gap":
            return add(scale(difference(k, e), high("CEF")),
                       scale(e, low("CES")-low("ESF")), const(-low("CES")))
        if name == "esf_lower_sum":
            upper = max(self.box[2][1], self.box[5][1])
            return add(const(upper-low("HCP")/upper), scale(p, -1), scale(q, -1))
        if name in ("esf_upper_sum_Q", "esf_upper_sum_R"):
            point = name[-1]
            upper = max(self.box[2][1], self.box[5][1])
            x, y = (u, v) if point == "Q" else (r, w)
            return add(x, y, const(-(LOWER_COST+low("HC"+point))/upper))
        if name.startswith("esf_box_") or name in self.CUBIC:
            point, axis = name[-2:]
            if axis == "x":
                x = u if point == "Q" else r
                edge, side, opposite, budget, first = c, e, f, "CEF", "CE"
            else:
                x = v if point == "Q" else w
                edge, side, opposite, budget, first = h, f, e, "HEF", "FH"
            area = (const(high(budget)) if name.startswith("esf_box") else
                    add(complement(edge), mul(side, difference(edge, opposite))))
            return add(mul(complement(x), area), scale(complement(opposite), -low(first+point)),
                       scale(complement(edge), -low("EF"+point)))
        return super().__getitem__(name)


if __name__ == "__main__":
    folder = (Path(sys.argv[1]) if len(sys.argv) == 2
              else Path(__file__).with_name("N6_BIIT_TABLES") / "ESF")
    print("ESF", audit_six(Tables(folder), ESFGeometry, ESFSources, global_stages=0))
