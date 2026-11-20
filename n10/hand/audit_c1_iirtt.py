"""Verify the C1 IIRTT manuscript, the inherited boxes and the full sign tree."""
from collections import Counter
from fractions import Fraction as F
from itertools import combinations

from audit_c1_two_central_three_caps import (
    LABELS, VARIABLES, canonical, determinant, parse_poly, sign,
)
from c1_contact_geometry_independent import put
from c1_iirtt_tables import Tables


def box(rows):
    assert len(rows) == len(VARIABLES)
    result = [tuple(map(F, pair)) for pair in rows]
    assert all(0 <= lo <= hi <= 1 for lo, hi in result)
    return result


def coarse_domain(tables):
    s = F(93, 1000)
    u = 1-s
    cmin, cmax, dmin = F(1, 10), F(17, 20), 4*s
    dmax, fmax = 1-3*s/u, 1-3*s/(1-dmin)
    px, py = s+s/(1-dmin), dmin+s/u
    t, v = F(31,154), s/cmax
    coarse = [(dmin,1),(cmin,cmax),(dmin,dmax),(s,fmax),
              (s,u),(v,u),(s,u),(v,u),(px,1),(py,1),
              (F(7,10),1),(v,dmax-s/(1-cmin)),
              (t*(1+px)+(1-2*t)*s,1-t+t*fmax),
              (t*(1+py)+(1-2*t)*dmin,1-t+t*dmax)]
    assert tables.domain["coordinates"] == VARIABLES and tables.domain["labels"] == LABELS
    assert box(tables.domain["box"]) == coarse
    hull = "OCQDPFH"
    known = {}
    for vertices in combinations(hull, 3):
        put(known, "".join(vertices), 1)
    for point in "YZR":
        for tail, head in zip(hull, hull[1:]+hull[0]):
            put(known, tail+head+point, 1)
        for edge in ["OQ", "CD", "QP"]:
            put(known, edge+point, 1)
    for point in "YZ":
        for edge, sg in [("OH",-1),("OC",1),("HC",1),("HF",-1),("CD",1),("DF",1)]:
            put(known, edge+point, sg)
    put(known, "OYZ", 1)
    for edge in ["DP", "PF", "FD"]:
        put(known, edge+"R", 1)
    assert known == tables.domain["base"]
    actual = {"".join(tri) for tri in combinations(LABELS,3)}
    assert set(tables.polynomials) == actual
    for tri, poly in tables.polynomials.items():
        assert parse_poly(poly) == determinant(tri)
    return coarse


def audit(tables, scalar_audit, coord_audit, lift_audit):
    coarse = coarse_domain(tables)
    counts = Counter()
    def replay(stages, assigned, initial_box, first_ref):
        current = initial_box
        terminal = None
        known = None
        for i, st in enumerate(stages):
            assert terminal is None
            assert st["assign"] == assigned and box(st["box"]) == current
            assert st["boxRef"] == (first_ref if i == 0 else i-1)
            known = scalar_audit(st)
            if "signs" in st:
                assert known == st["signs"]
            counts["stages"] += 1
            counts["sign deductions"] += len(st["steps"])
            ar = st.get("area")
            if st["terminal"] is not None:
                assert not ar
                terminal = "geometry"
            elif ar:
                counts["scalar updates"] += len(ar["updates"])
                if ar.get("end"):
                    terminal = "area"
            if co := st.get("coordinate"):
                assert terminal is None and ar and "final" in ar
                coord_audit(st)
                counts["coordinate updates"] += len(co["trace"])
                if co["contradiction"]:
                    terminal = "coordinate"
                else:
                    current = box(list(zip(co["low"], co["high"], strict=True)))
            if i+1 < len(stages):
                assert "coordinate" in st
        return current, terminal, known

    globals_, no_lift = tables.node("global")
    assert len(globals_) == 2 and no_lift is None
    narrowed, term, _ = replay(globals_, {}, coarse, None)
    assert term is None
    states = [("r", {}, None, coarse)]
    visited = set()
    while states:
        name, assigned, parent, parent_box = states.pop()
        assert name not in visited
        visited.add(name)
        kind, split, domain = tables.tree[name]
        assert domain in ("coarse","refined")
        counts[kind] += 1
        known = dict(tables.domain["base"])
        for tri, sg in assigned.items():
            put(known,tri,sg)
        if domain == "coarse" and kind == "split":
            endpoint, terminal = coarse, None
            assert not (tables.folder/(name+".md")).exists()
        else:
            stages, lift = tables.node(name)
            ref = stages[0]["boxRef"]
            if domain == "coarse":
                assert ref == "coarse" and len(stages) == 1
                initial = coarse
            elif ref == "global":
                initial = narrowed
            else:
                assert parent is not None and ref == parent
                initial = parent_box
            endpoint, terminal, known = replay(stages,assigned,initial,ref)
            if lift:
                assert terminal is None and kind == "lift"
                assert stages[-1]["area"] and stages[-1]["area"].get("final")
                lift_audit(stages[-1],lift)
                counts["weighted terms"] += len(lift["weights"])
                terminal = "lift"
        if kind == "split":
            assert terminal is None and canonical(split)[0] in tables.polynomials
            assert not sign(known,split)
            for suffix,sg in [("m",-1),("p",1)]:
                states.append((name+suffix,{**assigned,split:sg},name,endpoint))
        else:
            assert split is None and terminal == kind and kind in ("geometry","area","coordinate","lift")
    assert visited == set(tables.tree)
    assert counts["split"]+1 == sum(counts[k] for k in ("geometry","area","coordinate","lift"))
    return dict(counts)


if __name__ == "__main__":
    from audit_c1_iirtt_scalar import ScalarAudit
    from audit_c1_iirtt_lifted import check_coordinate, check_lift

    print(audit(Tables(), ScalarAudit().stage, check_coordinate, check_lift))
