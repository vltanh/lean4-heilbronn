"""Check the lower/upper two-side-cap domains and their sharp terminal."""
from functools import partial
from pathlib import Path

from audit_n6_iirl import IIRL
from c1_iirtt_tables import Tables
from n6_birl_domain import base, containers, roots
from n6_contact_tables import audit_six
from n6_side_sources import SideSources
from audit_c1_iirtt_lifted import V, add, scale


def variants(index):
    return ("good", "lowx", "lowy") if roots()[index] == ("AB", "EF") else ("",)


class BIRL(IIRL):
    def __init__(self, index, variant, metadata=None):
        assert variant in variants(index)
        self.index, self.variant = index, variant
        self.outer = "ABCREFSH"
        self.containers = containers(index)
        self.quad_containers = ["HCEFQ"]
        self.load_stage(metadata)

    def central_points(self):
        return "Q"

    def crossed_edges(self):
        return roots()[self.index]

    def base(self):
        return base(self.index)

    def terminal(self, known, row):
        if row == ["sharp_projected_birl"]:
            assert roots()[self.index] == ("AB", "EF") and self.variant == "good"
            tests = (("ARP",1), ("BSP",-1), ("CFQ",1), ("EHQ",1),
                     ("APQ",1), ("BPQ",-1), ("EPQ",-1), ("FPQ",1))
            assert all(self.sign(known, word) == expected for word, expected in tests)
        else:
            super().terminal(known, row)


class BIRLSources(SideSources):
    def __init__(self, variant, stage):
        super().__init__(stage, lower=True)
        self.variant = variant

    def __getitem__(self, name):
        if name == "birl_cut_x":
            assert self.variant in ("good", "lowx", "lowy")
            sg = -1 if self.variant == "lowx" else 1
            return scale(add(V[6], scale(V[1], -1)), sg)
        if name == "birl_cut_y":
            assert self.variant in ("good", "lowy")
            sg = 1 if self.variant == "good" else -1
            return scale(add(V[7], scale(V[0], -1)), sg)
        return super().__getitem__(name)


def check(index, variant):
    assert variant in variants(index)
    folder = Path(__file__).with_name("N6_BIRL_TABLES") / ("_".join(roots()[index])+variant)
    return audit_six(Tables(folder), partial(BIRL, index, variant),
                     partial(BIRLSources, variant), global_stages=0)


if __name__ == "__main__":
    import sys
    for request in sys.argv[1:] or map(str, range(len(roots()))):
        number, separator, requested = request.partition(":")
        index = int(number)
        selected = (requested,) if separator else variants(index)
        for variant in selected:
            print("/".join(roots()[index]), variant, check(index, variant), flush=True)
