"""Reconstruct the geometric and arithmetic proofs of the IIRL arc domains."""
from fractions import Fraction as F
from functools import partial
from pathlib import Path

from c1_iirtt_tables import Tables
from n6_contact_tables import SixContactGeometry, audit_six
from n6_side_sources import SideSources
from n6_iirl_domain import (
    HULL, LONG_TRIANGLES, arc_cap_rules, arc_long_rules, base, coarse_box,
    containers, edges, roots, chord_rules, central_triangle,
)


class IIRL(SixContactGeometry):
    coarse_box = staticmethod(coarse_box)

    def __init__(self, index, metadata=None):
        self.index = index
        self.outer = HULL
        self.containers = containers(index)
        self.quad_containers = ["HCEFPQ"]
        self.load_stage(metadata)

    def base(self):
        return base(self.index)

    def has_container(self, point, container):
        return container in self.containers.get(point, ())

    def cap_value(self, triangle, orientation, witness):
        if witness[0] == "long_6":
            assert witness == ["long_6", triangle] and orientation in (-1, 1)
            assert triangle in {self.key(t) for t in LONG_TRIANGLES}
            return F(69, 100)
        return super().cap_value(triangle, orientation, witness)

    def relation(self, known, relation, witness):
        if witness[0] == "side_ear_order":
            _, side = witness
            upper, lower = {"right": ("REF", "CRE"), "left": ("EFS", "FSH")}[side]
            assert self.sign(known, upper) == self.sign(known, lower) == 1
            assert relation == ["linear", {self.key(upper): 1, self.key(lower): -1}, "0"]
            return
        if witness[0] == "side_tri_spread":
            _, triangle, isolated = witness
            assert len(triangle) == 3 and isolated in triangle
            assert self.sign(known, triangle) and all(
                self.inside(known, triangle, point) for point in "PQ"
            )
            sign = self.sign(known, isolated + "PQ")
            assert sign in (-1, 1)
            same_side = [p for p in triangle if p != isolated]
            assert all(self.sign(known, point + "PQ") == -sign for point in same_side)
            coeff = {self.key(triangle): 1, **{self.key(pt + "PQ"): -1 for pt in same_side}}
            assert relation[:2] == ["linear", coeff] and F(relation[2]) == F(109, 20) * F(93, 1000)
            return
        if witness[0] != "side_spread":
            return super().relation(known, relation, witness)
        _, hull, diagonal = witness
        assert len(hull) == 4 and self.convex(known, hull)
        assert all(self.inside(known, hull, point) for point in "PQ")
        first, second = hull[::2], hull[1::2]
        assert diagonal in (first, second)
        for edge in (first, second):
            assert self.sign(known, edge + "P") in (-1, 1)
            assert self.sign(known, edge + "Q") == -self.sign(known, edge + "P")
        a, b, c, d = hull
        x, y = diagonal
        direction = self.sign(known, diagonal + "P")
        coeff = {self.key(a+b+c): 1, self.key(a+c+d): 1,
                 self.key(x+"PQ"): direction * self.sign(known, x+"PQ"),
                 self.key(y+"PQ"): -direction * self.sign(known, y+"PQ")}
        assert all(coeff.values())
        rate = F(relation[2]) / F(93, 1000)
        assert relation[:2] == ["linear", coeff]
        assert rate == F(29, 5) or (
            rate == 6 and "".join(sorted(hull)) in ("ABEF", "CEFH", "CHRS")
        )

    def four_cap(self, known, hull, points):
        assert self.convex(known, self.outer) and self.convex(known, hull)
        assert sorted(hull) in [sorted((HULL*2)[i:i+4]) for i in range(8)]
        assert len(set(points)) == len(points) and set(points) <= {"P", "Q"}
        assert all(self.inside(known, hull, point) for point in points)

    def check_chord(self, known, row):
        assert row[1:] in list(chord_rules(self.crossed_edges(), self.base()))
        first, second, _, _, _ = row[1:]
        assert all(self.sign(known,w+"PQ") == sg for w,sg in
                   zip(first+second, (1,-1,-1,1)))

    def crossed_edges(self):
        return roots()[self.index]

    def central_points(self):
        return "PQ"

    def check_cell(self, row):
        _, triangle, point, target, sg = row
        assert point in self.central_points() and triangle == central_triangle(self.crossed_edges())
        assert sg == 1 and target in {edge+point for edge in edges(triangle)}

    def extra_sign_rule(self, known, row):
        if row[0] == "side_arc_cap":
            assert row[1:] in list(arc_cap_rules(self.crossed_edges(), self.base()))
            assert not self.sign(known, row[-2])
            self.put(known, row[-2], row[-1])
            return True
        if row[0] == "side_arc_long":
            _, triangle, edge, point, target, sign = row
            assert [triangle, edge, point] in list(arc_long_rules(self.crossed_edges(), self.base()))
            tests = [side + point for side in edges(triangle)]
            assert sign == -1 and target in tests and not self.sign(known, target)
            assert all(self.sign(known, test) == 1 for test in tests if test != target)
            self.put(known, target, sign)
            return True
        if row[0] == "side_cell6":
            self.check_cell(row)
            assert not self.sign(known,row[-2])
            self.put(known,row[-2],row[-1])
            return True
        if row[0] == "chord_cap6":
            self.check_chord(known,row)
            target,sg = row[-2:]
            assert not self.sign(known,target)
            self.put(known,target,sg)
            return True
        if row[0] != "four_cap6":
            return super().extra_sign_rule(known, row)
        _, hull, occupants, point, target, sg = row
        self.four_cap(known, hull, occupants)
        assert len(occupants) == 1 and {point, occupants} == {"P", "Q"}
        tests = [edge+point for edge in edges(hull)]
        assert target in tests and not self.sign(known, target) and sg == -1
        assert all(self.sign(known, t) == 1 for t in tests if t != target)
        self.put(known, target, -1)
        return True

    def terminal(self, known, row):
        if row[0] == "side_arc_cap":
            assert row[1:] in list(arc_cap_rules(self.crossed_edges(), self.base()))
            assert self.sign(known, row[-2]) == -row[-1]
        elif row[0] == "side_arc_long":
            _, triangle, edge, point = row
            assert [triangle, edge, point] in list(arc_long_rules(self.crossed_edges(), self.base()))
            assert self.inside(known, triangle, point)
        elif row[0] == "side_cell6":
            self.check_cell(row)
            assert self.sign(known,row[-2]) == -row[-1]
        elif row[0] == "chord_cap6":
            self.check_chord(known,row)
            assert self.sign(known,row[-2]) == -row[-1]
        elif row[0] == "four_cap6":
            _, hull, points = row
            self.four_cap(known, hull, points)
            assert set(points) == {"P", "Q"}
        else:
            super().terminal(known, row)


def check(index):
    name = "_".join(roots()[index])
    folder = Path(__file__).with_name("N6_IIRL_TABLES") / name
    return audit_six(Tables(folder), partial(IIRL, index),
                     SideSources,
                     global_stages=0)


if __name__ == "__main__":
    import sys
    selected = list(map(int,sys.argv[1:])) or list(range(len(roots())))
    for index in selected:
        print("/".join(roots()[index]), check(index), flush=True)
