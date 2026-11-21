"""Replay the geometric signs, actual area sources and exact scalar updates."""
from fractions import Fraction as F
import json

from audit_c1_biirr import check_end
from audit_c1_iirtt_geometry import IIRTT
from c1_contact_geometry_independent import audit_scalar_updates


class SignReads:
    """Record exactly which known signs a generic relation proof requests."""

    def __init__(self, values):
        self.values = values
        self.reads = {}

    def get(self, name, default=0):
        assert default == 0
        answer = self.values.get(name, default)
        self.reads[name] = answer
        return answer


class ScalarAudit:
    geometry = IIRTT

    def __init__(self):
        self.proved_relations = {}

    def relation(self, geo, known, entry):
        rel, witness = entry["rel"], entry["witness"]
        # Mesh and contact sources can consult metadata beyond the sign map.
        if rel[0] == "linear" and witness[0] != "affine_quad":
            geo.relation(known, rel, witness)
            return
        serial = json.dumps([rel,witness], separators=(",",":"), sort_keys=True)
        previous = self.proved_relations.setdefault(serial, [])
        for premises in previous:
            if all(known.get(t,0) == sg for t,sg in premises):
                return
        queried = SignReads(known)
        geo.relation(queried, rel, witness)
        previous.append(tuple(queried.reads.items()))

    def stage(self, st):
        geo = self.geometry(st)
        known = geo.derive_signs(st["steps"])
        if "signs" in st:
            assert st["signs"] == known
        if st["terminal"] is not None:
            assert st.get("area") is None
            geo.terminal(known, st["terminal"])
            return known
        ar = st["area"]
        assert ar is not None
        for ref, rec in ar["initial"].items():
            tri, side = rec["triangle"], rec["side"]
            assert ref == side+"_"+tri
            assert F(rec["value"]) == geo.initial_value(known,tri,side,rec["witness"],None)
        for entry in ar["relations"]:
            self.relation(geo,known,entry)
        relations = [entry["rel"] for entry in ar["relations"]]
        recs = audit_scalar_updates(ar["initial"], ar["updates"], relations)
        if ar["end"]:
            check_end(ar["end"],recs,relations)
        else:
            final = {}
            for rec in recs.values():
                ends = final.setdefault(rec["triangle"],{})
                side, val = rec["side"], F(rec["value"])
                if side in ends:
                    assert val > ends[side] if side == "lo" else val < ends[side]
                ends[side] = val
            assert set(final) == set(known)
            assert all(0 < ends["lo"] <= ends["hi"] <= 1 for ends in final.values())
            assert final == {tri: {side:F(value) for side,value in limits.items()}
                             for tri,limits in ar["final"].items()}
        return known
