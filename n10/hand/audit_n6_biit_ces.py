"""Read the BIIT CES crossing tables with both contact orders."""

from fractions import Fraction as F
from pathlib import Path
import sys

from audit_c1_iirtt_lifted import V, add, const, mul, scale
from audit_n6_biit import BIITGeometry, BIITSources
from c1_contact_geometry_independent import S
from c1_iirtt_tables import Tables
from n6_contact_tables import audit_six


class CESGeometry(BIITGeometry):
    def __init__(self, metadata=None):
        super().__init__("CES", metadata)

    def positive_edge(self, known, edge):
        x, y = edge
        assert x in "ABFH" and y in "CES"
        assert self.sign(known, x+"QR") == 1 and self.sign(known, y+"QR") == -1

    def initial_value(self, known, triangle, side, witness, ancestor):
        if witness == ["ces_competitive"]:
            assert side == "lo" and self.sign(known, triangle)
            return F(9307, 100000)
        if witness[0] == "ces_shift_floor":
            _, edge, point = witness
            self.positive_edge(known, edge)
            assert side == "lo" and point in ("Q", "R")
            assert triangle == self.key(edge + point)
            direction = 1 if point == "R" else -1
            assert all(self.sign(known, edge + t) == direction for t in "QR")
            return 3*S
        return super().initial_value(known, triangle, side, witness, ancestor)

    def extra_sign_rule(self, known, row):
        if row[0] != "ces_monotone":
            return super().extra_sign_rule(known, row)
        _, edge, point, value = row
        self.positive_edge(known, edge)
        assert (point, value) in (("R", 1), ("Q", -1))
        fixed = "Q" if point == "R" else "R"
        assert not self.sign(known, edge + point) and self.sign(known, edge + fixed) == value
        self.put(known, edge + point, value)
        return True

    def terminal(self, known, row):
        if row[0] == "ces_monotone":
            _, edge = row
            self.positive_edge(known, edge)
            assert self.sign(known, edge+"Q") == 1 and self.sign(known, edge+"R") == -1
        elif row[0] == "area_cap" and row[2] == "":
            _, triangle, _, value, witness = row
            assert self.cap_value(triangle, self.sign(known, triangle), witness) == F(value)
            assert F(value) < F(9307, 100000)
        else:
            super().terminal(known, row)


def minus(first, second):
    return add(first, scale(second, -1))


class CESSources(BIITSources):
    QUADRATIC = ("ces_dy", "ces_w", "ces_abscissa_Q", "ces_ordinate_Q",
                 "ces_abscissa_R", "ces_ordinate_R")
    CUBIC = ("ces_actual_Qx", "ces_actual_Qy", "ces_actual_Rx", "ces_actual_Ry")

    def __init__(self, stage):
        super().__init__(stage, "CES")

    def additional(self):
        return [name for name in super().additional() if name != "order_fe"] + list(self.QUADRATIC)

    def __getitem__(self, name):
        if name not in self.QUADRATIC + self.CUBIC:
            return super().__getitem__(name)
        _, b, c, e, f, h, _, _, u, v, r, w, _, _ = V
        final = self.stage["area"]["final"]

        def low(t):
            return F(final[CESGeometry.key(t)]["lo"])

        def high(t):
            return F(final[CESGeometry.key(t)]["hi"])

        if name == "ces_dy" or name == "ces_w":
            floor = low("BQR")+low("CQR")
            span = self.box[2][1]-self.box[1][0]
            assert span > 0
            if name == "ces_dy":
                return add(minus(w, v), const(-floor/span))
            return add(w, const(-(floor+low("BCQ"))/span))

        if name in self.CUBIC:
            point, axis = name[-2:]
        else:
            _, direction, point = name.split("_")
            axis = "x" if direction == "abscissa" else "y"
        if axis == "x":
            coord = u if point == "Q" else r
            boundary, contact, other, triangle, incident = c, e, f, "CEF", "CE"
        else:
            coord = v if point == "Q" else w
            boundary, contact, other, triangle, incident = h, f, e, "HEF", "FH"
        if name in self.CUBIC:
            factor = add(minus(const(1), boundary), mul(contact, minus(boundary, other)))
        else:
            factor = const(high(triangle))
        return add(mul(minus(const(1), coord), factor),
                   scale(minus(const(1), other), -low(incident+point)),
                   scale(minus(const(1), boundary), -low("EF"+point)))


if __name__ == "__main__":
    folder = (Path(sys.argv[1]) if len(sys.argv) == 2
              else Path(__file__).with_name("N6_BIIT_TABLES") / "CES")
    print("CES", audit_six(Tables(folder), CESGeometry, CESSources, global_stages=0))
