"""Replay BIRT chord tables with their directed coordinate bounds."""

from functools import partial
from pathlib import Path
import sys

from audit_n6_adjacent_caps import AdjacentGeometry, AdjacentSources
from audit_c1_iirtt_lifted import V, add, const, scale
from c1_iirtt_tables import Tables
from n6_contact_rows import S
from n6_contact_tables import audit_six


POINT_TRIANGLES = {
    ("AB", "ES"): {},
    ("AB", "SF"): {},
    ("BC", "ES"): {},
    ("BC", "SF"): {},
    ("ES", "HA"): {"P": "HAC"},
    ("RE", "HA"): {"P": "HAC", "Q": "HCE"},
}


class BIRTGeometry(AdjacentGeometry):
    def __init__(self, crossed, metadata=None):
        super().__init__("birt", crossed, metadata)
        self.point_triangles = POINT_TRIANGLES[crossed]


class BIRTSources(AdjacentSources):
    def __init__(self, stage, crossed):
        super().__init__(stage, row="birt")
        self.crossed = crossed

    def directed_factors(self):
        lower_edge = self.crossed[0] if self.crossed[1] != "HA" else "HA"
        return {
            "HA": ["directed_ha"],
            "BC": ["directed_bc"],
            "AB": ["directed_ab_x", "directed_ab_y"],
        }[lower_edge]

    def additional(self):
        keys = super().additional() + [
            "lower_compatibility", "top_horizontal_gap", "adjacent_ear_budget",
            "right_abscissa_floor", "right_ordinate_ceiling", "adjacent_bottom_c_ceiling",
        ] + self.directed_factors()
        signs = self.stage["signs"]
        if signs.get("ACP") == -1 or signs.get("BHP") == 1:
            keys.append("lower_ear_cost")
        if signs.get("ACP") == 1 and signs.get("BHP") == -1:
            keys.append("lower_central_compatibility")
        return list(dict.fromkeys(keys))

    def __getitem__(self, name):
        if name.startswith("directed_"):
            assert name in self.directed_factors()
        signs = self.stage["signs"]
        if name == "directed_ha":
            assert signs["APQ"] == -1 and signs["HPQ"] == 1
            span = self.box[5][1] - self.box[0][0]
            assert span > 0
            return add(V[8], scale(V[6], -1), const(-2*S/span))
        if name == "directed_bc":
            assert signs["BPQ"] == 1 and signs["CPQ"] == -1
            span = self.box[2][1] - self.box[1][0]
            assert span > 0
            return add(V[9], scale(V[7], -1), const(-2*S/span))
        if name in ("directed_ab_x", "directed_ab_y"):
            transverse, endpoint = {"ES": ("PQS", 12), "SF": ("FPQ", 4)}[self.crossed[1]]
            assert (signs["APQ"], signs["EPQ"], signs["BPQ"], signs[transverse]) == (1, -1, -1, 1)
            if name == "directed_ab_x":
                return add(V[8], scale(V[6], -1), scale(V[endpoint], -2*S),
                           scale(V[1], 2*S), const(-2*S))
            return add(V[9], scale(V[7], -1), scale(V[3], -2*S),
                       scale(V[0], 2*S), const(-2*S))
        return super().__getitem__(name)


def check(crossed, folder):
    return audit_six(Tables(folder), partial(BIRTGeometry, crossed),
                     partial(BIRTSources, crossed=crossed), global_stages=0)


if __name__ == "__main__":
    crossed = tuple(sys.argv[1:3])
    case = "BIRT_" + "_".join(crossed)
    folder = (Path(sys.argv[3]) if len(sys.argv) > 3
              else Path(__file__).with_name("N6_ADJACENT_CAPS_TABLES") / case)
    print(case, check(crossed, folder))
