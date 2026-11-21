"""Replay the BIIT HAB chord with the ordered cap ceilings."""

from fractions import Fraction as F
from functools import partial
from pathlib import Path
import sys

from audit_c1_iirtt_lifted import V, add, const, scale
from audit_n6_biit import BIITGeometry, BIITSources
from c1_iirtt_tables import Tables
from n6_contact_tables import audit_six


class HABSources(BIITSources):
    def __init__(self, stage):
        super().__init__(stage, arc="HAB")

    def hab_factors(self):
        signs = self.stage["signs"]
        keys = ["biit_hab_e_ceiling"]
        if signs.get("ACP") == -1 or signs.get("BHP") == 1:
            keys.append("biit_hab_e_ear_ceiling")
        return keys

    def __getitem__(self, name):
        if name.startswith("biit_hab_"):
            assert name in self.hab_factors() and self.e_le_f
            ceiling = F(171, 250) if name == "biit_hab_e_ceiling" else F(661, 1000)
            return add(const(ceiling), scale(V[3], -1))
        return super().__getitem__(name)


if __name__ == "__main__":
    folder = (Path(sys.argv[1]) if len(sys.argv) > 1
              else Path(__file__).with_name("N6_BIIT_TABLES") / "HAB")
    print("HAB", audit_six(Tables(folder), partial(BIITGeometry, "HAB"), HABSources, global_stages=0))
