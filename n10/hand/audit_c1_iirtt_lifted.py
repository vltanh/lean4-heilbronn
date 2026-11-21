"""Independent exact arithmetic for the literal C1 IIRTT manuscript.

No discovery implementation is imported. Geometry, scalar-bound proofs and
cross-stage ancestry are separate obligations of the other manuscript readers.
This module checks coordinate factor polynomials, every complete endpoint-line
witness, exact updates/contradictions, and lifted positive-sum certificates.

Public APIs: check_coordinate(stage), check_lift(stage, lift).
"""
from fractions import Fraction as F
from itertools import combinations, product
from collections import Counter
from pathlib import Path
import argparse
import json
import time

LABELS = "OHCDFYZPQR"
VARIABLES = "h c d f u v z w p q r t j k".split()
N = len(VARIABLES)
S = F(93, 1000)


class AuditError(AssertionError):
    pass


def need(ok, message):
    if not ok:
        raise AuditError(message)


def q(value):
    need(type(value) in (str, int, F), "non-exact rational input")
    return F(value)


def clean(poly):
    return {m: c for m, c in poly.items() if c}


def add(*polys):
    out = {}
    for poly in polys:
        for m, c in poly.items():
            out[m] = out.get(m, F(0)) + c
    return clean(out)


def scale(poly, value):
    return clean({m: c * value for m, c in poly.items()})


def mul(left, right):
    out = {}
    for m, c in left.items():
        for n, d in right.items():
            key = tuple(sorted(m + n))
            out[key] = out.get(key, F(0)) + c * d
    return clean(out)


def const(value):
    return {(): F(value)} if value else {}


def var(i):
    return {(i,): F(1)}


V = [var(i) for i in range(N)]
POINTS = {
    "O": ({}, {}),
    "H": ({}, V[0]),
    "C": (V[1], {}),
    "D": (const(1), V[2]),
    "F": (V[3], const(1)),
    "Y": (V[4], V[5]),
    "Z": (V[6], V[7]),
    "P": (V[8], V[9]),
    "Q": (V[10], V[11]),
    "R": (V[12], V[13]),
}


def determinant(word, points=POINTS):
    need(len(word) == 3 and len(set(word)) == 3
         and all(x in points for x in word), "bad actual triangle")
    a, b, c = [points[x] for x in word]
    bx = add(b[0], scale(a[0], -1))
    by = add(b[1], scale(a[1], -1))
    cx = add(c[0], scale(a[0], -1))
    cy = add(c[1], scale(a[1], -1))
    return add(mul(bx, cy), scale(mul(by, cx), -1))


ACTUAL = {"".join(t): determinant("".join(t))
          for t in combinations(LABELS, 3)}


SIX_LABELS = "ABCEFHPQRS"
SIX_VARIABLES = "a b c e f h p q u v r w j k".split()
SIX_POINTS = {
    "A": ({}, V[0]), "B": (V[1], {}), "C": (V[2], {}),
    "E": (const(1), V[3]), "F": (V[4], const(1)), "H": ({}, V[5]),
    **{p: (V[6+2*i], V[7+2*i]) for i,p in enumerate("PQRS")},
}
SIX_AREAS = {"".join(t): determinant("".join(t), SIX_POINTS)
             for t in combinations(SIX_LABELS, 3)}


def physical_areas(stage):
    return SIX_AREAS if stage["labels"] == SIX_LABELS else ACTUAL


def canonical(word, labels=LABELS):
    return "".join(sorted(word, key=labels.index))


def orientation(signs, word, labels=LABELS):
    if len(set(word)) != 3:
        return 0
    parity = (-1) ** sum(
        labels.index(word[i]) > labels.index(word[j])
        for i in range(3) for j in range(i + 1, 3))
    return parity * signs.get(canonical(word, labels), 0)


def inside(signs, hull, point):
    if point in hull:
        return False
    side = orientation(signs, hull[:3])
    return bool(side) and all(
        orientation(signs, hull[i] + hull[(i + 1) % len(hull)] + point) == side
        for i in range(len(hull)))


def supplied_polynomial(poly):
    out = {}
    for key, value in poly.items():
        mon = tuple(int(i) for i in key.split(",") if i != "")
        need(tuple(sorted(mon)) == mon and all(0 <= i < N for i in mon),
             "invalid actual-coordinate monomial")
        need(mon not in out, "duplicate actual-coordinate monomial")
        out[mon] = q(value)
    return clean(out)


def metadata(stage, labels=LABELS):
    variables = SIX_VARIABLES if labels == SIX_LABELS else VARIABLES
    actual = physical_areas(stage)
    need(stage["labels"] == labels and stage["vars"] == variables,
         "wrong actual-point/coordinate dictionary")
    need(set(stage["polynomials"]) == {"".join(t) for t in combinations(labels, 3)},
         "incomplete actual determinant table")
    for name, poly in stage["polynomials"].items():
        need(supplied_polynomial(poly) == actual[name],
             "wrong actual determinant polynomial: " + name)
    for name, sign in stage["signs"].items():
        need(name in stage["polynomials"] and type(sign) is int and sign in (-1, 1),
             "invalid actual sign")
    box = [(q(a), q(b)) for a, b in stage["box"]]
    need(len(box) == N and all(0 <= a <= b <= 1 for a, b in box),
         "coordinate box outside unit square")
    return box


def area(stage, name):
    actual = physical_areas(stage)
    need(name in actual and stage["signs"].get(name) in (-1, 1),
         "unproved signed actual area: " + name)
    return scale(actual[name], stage["signs"][name])


def area_bounds(stage):
    need(stage.get("area") is not None, "missing scalar source pass")
    out = {}
    for name, ends in stage["area"]["final"].items():
        area(stage, name)
        need(set(ends) == {"lo", "hi"}, "incomplete scalar endpoints")
        lo, hi = q(ends["lo"]), q(ends["hi"])
        need(0 <= lo <= hi, "inconsistent/nonpositive area-source interval")
        out[name] = (lo, hi)
    need(set(out) == set(stage["signs"]), "signed-area interval coverage")
    return out


def rational_sqrt_floor(value, denominator=10000):
    need(value >= 0, "negative square-root premise")
    upper = denominator
    while F(upper * upper, denominator * denominator) <= value:
        upper *= 2
    lower = 0
    while lower + 1 < upper:
        middle = (lower + upper) // 2
        if F(middle * middle, denominator * denominator) <= value:
            lower = middle
        else:
            upper = middle
    result = F(lower, denominator)
    need(result * result <= value < F(lower + 1, denominator) ** 2,
         "incorrect rational square-root floor")
    return result


def pentagon(stage, index, bounds):
    relations = stage["area"]["relations"]
    need(type(index) is int and 0 <= index < len(relations),
         "invalid pentagon relation index")
    entry = relations[index]
    witness = entry["witness"]
    need(witness[0] == "support_pent" and len(witness) == 2,
         "pentagon strengthening has wrong source witness")
    hull = witness[1]
    labels = stage["labels"]
    need(len(hull) == 5 and len(set(hull)) == 5
         and orientation(stage["signs"], hull[:3], labels) != 0
         and all(orientation(stage["signs"], "".join(t), labels) == orientation(stage["signs"], hull[:3], labels)
                 for t in combinations(hull, 3)),
         "unproved cyclic convex pentagon")
    a, b, c, d, e = hull
    x, y, z = [canonical(t, labels) for t in (a+b+e, a+d+e, a+b+d)]
    rel = entry["rel"]
    need(rel[0] == "support" and tuple(rel[1:4]) == (x, y, z),
         "wrong pentagon support areas")
    ears = [canonical(t, labels) for t in (a + b + c, b + c + d, c + d + e)]
    bde = canonical(b + d + e, labels)
    # This proves that either scalar difference bounds the same denominator.
    need(add(area(stage, y), scale(area(stage, bde), -1))
         == add(area(stage, x), scale(area(stage, z), -1)),
         "pentagon denominator identity failed")
    gain = max(F(0), bounds[x][0] - bounds[z][1],
               bounds[y][0] - bounds[bde][1])
    cost = sum((rational_sqrt_floor(bounds[t][0]) for t in ears), F(0)) ** 2 + gain
    need(cost > q(rel[4]), "unimproved pentagon strengthening")
    return x, y, z, cost


class Sources:
    def __init__(self, stage, top_count=3, labels=LABELS):
        self.stage = stage
        self.box = metadata(stage, labels)
        self.bounds = area_bounds(stage)
        self.top_count = top_count
        self.cache = {}
        self.pentagons = {}

    def contact(self, name):
        need(name in ("h_ge_d", "c_ge_f"), "unsupported contact-order premise")
        return (0, 2) if name == "h_ge_d" else (1, 3)

    def pent(self, index):
        if index not in self.pentagons:
            self.pentagons[index] = pentagon(self.stage, index, self.bounds)
        return self.pentagons[index]

    def __getitem__(self, name):
        if name in self.cache:
            return self.cache[name]
        stage, bounds = self.stage, self.bounds
        if name.startswith(("lo_", "hi_")):
            side, triangle = name.split("_", 1)
            need(triangle in bounds, "missing scalar factor source")
            value = bounds[triangle][side == "hi"]
            poly = add(area(stage, triangle), const(-value))
            if side == "hi":
                poly = scale(poly, -1)
        elif name == "order_hd":
            poly = add(V[0], scale(V[2], -1))
        elif name == "order_cf":
            poly = add(V[1], scale(V[3], -1))
        elif name == "right_support":
            poly = add(mul(V[1], V[2]),
                       scale(mul(mul(V[1], V[1]), V[2]), -1), const(-S))
        elif name == "top_cost":
            poly = add(const(1 - self.top_count * S), scale(V[2], -1),
                       scale(V[3], -1), mul(V[2], V[3]))
        elif name.startswith("cap_"):
            triangle = name[4:]
            choices = {"HCD": (0, 1), "HCF": (1, 1),
                       "HDF": (2, -1), "CDF": (3, -1)}
            need(triangle in choices, "undefined contact-envelope factor")
            i, sign = choices[triangle]
            poly = add(const(sign < 0), scale(V[i], sign),
                       scale(area(stage, triangle), -1))
            # Independent factorization of these actual contact envelopes.
            gap_hd = add(V[0], scale(V[2], -1))
            gap_cf = add(V[1], scale(V[3], -1))
            expected = {
                "HCD": mul(V[1], gap_hd),
                "HCF": mul(V[0], gap_cf),
                "HDF": mul(add(const(1), scale(V[3], -1)), gap_hd),
                "CDF": mul(add(const(1), scale(V[2], -1)), gap_cf),
            }[triangle]
            need(poly == expected, "wrong signed contact-envelope identity")
        elif name.startswith(("quad_", "linear_")):
            kind, number = name.split("_", 1)
            need(number.isdigit(), "noninteger coordinate source relation")
            index = int(number)
            relations = stage["area"]["relations"]
            need(0 <= index < len(relations), "coordinate relation out of range")
            rel = relations[index]["rel"]
            need(rel[0] == kind, "wrong coordinate source relation kind")
            if kind == "quad":
                need(len(rel) == 4, "quadrilateral source arity")
                poly = add(area(stage, rel[1]), area(stage, rel[2]), const(-q(rel[3])))
            else:
                need(len(rel) == 3, "linear source arity")
                poly = add(*(scale(area(stage, t), q(co)) for t, co in rel[1].items()),
                           const(-q(rel[2])))
        elif name.startswith(("pent_hiX_", "pent_hiY_")):
            prefix, number = name.rsplit("_", 1)
            need(number.isdigit(), "noninteger strengthened pentagon source")
            x, y, z, rate = self.pent(int(number))
            if prefix == "pent_hiX":
                poly = add(scale(area(stage, y), bounds[x][1]),
                           scale(area(stage, x), -rate), scale(area(stage, z), rate))
            else:
                need(prefix == "pent_hiY", "unknown pentagon envelope direction")
                poly = add(scale(area(stage, x), bounds[y][1] - rate),
                           scale(area(stage, z), rate))
        else:
            raise AuditError("undefined coordinate factor " + name)
        self.cache[name] = poly
        return poly


def endpoint_lines(poly, target, lows, highs):
    need(type(target) is int and 0 <= target < N, "invalid coordinate target")
    need(all(len(set(m)) == len(m) for m in poly),
         "non-multiaffine coordinate premise")
    used = sorted({i for m in poly for i in m})
    need(target in used, "coordinate target absent from factor")
    others = [i for i in used if i != target]
    choices = [(lows[i],) if lows[i] == highs[i] else (lows[i], highs[i])
               for i in others]
    lines = set()
    for vertex in product(*choices):
        values = dict(zip(others, vertex))
        a = b = F(0)
        for mon, coefficient in poly.items():
            value = coefficient
            for i in mon:
                if i != target:
                    value *= values[i]
            if target in mon:
                a += value
            else:
                b += value
        lines.add((a, b))
    return sorted(lines)


def feasible_hull(lines, left, right):
    intervals = []
    for a, b in lines:
        lo, hi = left, right
        if a > 0:
            lo = max(lo, -b / a)
        elif a < 0:
            hi = min(hi, -b / a)
        elif b < 0:
            continue
        if lo <= hi:
            intervals.append((lo, hi))
    return (min(lo for lo, hi in intervals), max(hi for lo, hi in intervals)) if intervals else None


def check_coordinate(stage, source_factory=Sources):
    """Verify every printed step and coordinate terminal in one parsed stage."""
    record = stage.get("coordinate")
    if record is None:
        return {"steps": 0, "sources": 0, "closed": False}
    src = source_factory(stage)
    lows = [a for a, b in src.box]
    highs = [b for a, b in src.box]
    for number, row in enumerate(record["trace"]):
        name, target = row["factor"], row["target"]
        need(type(target) is int and 0 <= target < N, "invalid coordinate target")
        poly = src[name]
        need(list(map(q, row["old"])) == [lows[target], highs[target]],
             "old coordinate endpoints differ at step " + str(number))
        lines = endpoint_lines(poly, target, lows, highs)
        need(lines == [tuple(map(q, pair)) for pair in row["lines"]],
             "incomplete/incorrect endpoint lines at step " + str(number))
        hull = feasible_hull(lines, lows[target], highs[target])
        need(hull is not None and tuple(map(q, row["raw"])) == hull,
             "wrong exact coordinate hull at step " + str(number))
        lo = max(lows[target], F(hull[0].numerator * 10**6 // hull[0].denominator, 10**6))
        hi = min(highs[target], -F((-hull[1]).numerator * 10**6 // (-hull[1]).denominator, 10**6))
        if lo - lows[target] < F(1, 100000):
            lo = lows[target]
        if highs[target] - hi < F(1, 100000):
            hi = highs[target]
        need(tuple(map(q, row["new"])) == (lo, hi),
             "wrong outward rounding/minimum gain at step " + str(number))
        need(lows[target] <= lo <= hull[0] <= hull[1] <= hi <= highs[target]
             and (lo, hi) != (lows[target], highs[target]),
             "invalid coordinate narrowing")
        lows[target], highs[target] = lo, hi
    end = record["contradiction"]
    if end is not None:
        poly = src[end["factor"]]
        if end["kind"] == "negative-constant":
            need(set(poly) <= {()} and poly.get((), F(0)) == q(end["value"]) < 0,
                 "unproved negative-constant terminal")
        else:
            need(end["kind"] == "empty-endpoint-union", "unknown coordinate terminal")
            target = end["target"]
            need(list(map(q, end["old"])) == [lows[target], highs[target]],
                 "coordinate terminal old endpoints differ")
            lines = endpoint_lines(poly, target, lows, highs)
            need(lines == [tuple(map(q, pair)) for pair in end["lines"]],
                 "coordinate terminal lines incomplete")
            need(feasible_hull(lines, lows[target], highs[target]) is None,
                 "coordinate terminal has a feasible endpoint line")
    need(list(map(q, record["low"])) == lows and list(map(q, record["high"])) == highs,
         "unrecorded final coordinate bounds")
    return {"steps": len(record["trace"]), "sources": len(src.cache),
            "closed": end is not None, "low": lows, "high": highs,
            "pentagon_sources": len(src.pentagons)}


def lin_add(*forms):
    out, c = {}, F(0)
    for co, constant in forms:
        c += constant
        for name, value in co.items():
            out[name] = out.get(name, F(0)) + value
    return clean(out), c


def lin_scale(form, value):
    co, c = form
    return clean({name: value * v for name, v in co.items()}), value * c


class Lift:
    def __init__(self, stage, source_factory=Sources):
        self.stage = stage
        self.source = source_factory(stage)
        self.bounds = dict(self.source.bounds)
        self.bounds.update({"v" + str(i): ends for i, ends in enumerate(self.source.box)})
        self.singles = set(self.bounds)
        self.physical = {}
        self.equality_count = 0
        self.pentagon_count = 0

    def product_name(self, a, b):
        need(a in self.singles and b in self.singles,
             "lifted product has undefined/nested primitive variable")
        name = "*".join(sorted((a, b)))
        lo, hi = self.bounds[a]
        left, right = self.bounds[b]
        need(lo >= 0 and left >= 0, "product interval requires nonnegative factors")
        self.bounds[name] = lo * left, hi * right
        return name

    def physical_variable(self, name):
        if name not in self.physical:
            if name in self.singles:
                if name.startswith("v"):
                    index = int(name[1:])
                    need(name == "v" + str(index) and 0 <= index < N,
                         "bad lifted coordinate name")
                    poly = V[index]
                else:
                    poly = area(self.stage, name)
            else:
                parts = name.split("*")
                need(len(parts) == 2 and name == self.product_name(*parts),
                     "noncanonical lifted product name")
                poly = mul(self.physical_variable(parts[0]), self.physical_variable(parts[1]))
            self.physical[name] = poly
        return self.physical[name]

    def expand(self, form):
        co, constant = form
        return add(const(constant),
                   *(scale(self.physical_variable(name), value) for name, value in co.items()))

    def relation(self, index, mode):
        relations = self.stage["area"]["relations"]
        need(type(index) is int and 0 <= index < len(relations),
             "lifted relation index out of range")
        entry = relations[index]
        rel, witness = entry["rel"], entry["witness"]
        kind = rel[0]
        co, constant, equality = {}, F(0), False

        def put(name, value):
            need(name in self.bounds, "undefined lifted relation variable: " + name)
            co[name] = co.get(name, F(0)) + value
            if co[name] == 0:
                del co[name]

        if kind == "linear":
            for name, value in rel[1].items():
                put(name, q(value))
            constant = -q(rel[2])
            equality = witness[0] == "affine_quad"
        elif kind == "fan":
            for i, name in enumerate(rel[1:]):
                put(name, F(1 if i == 0 else -1))
            equality = True
        elif kind == "quad":
            put(rel[1], F(1))
            put(rel[2], F(1))
            constant = -q(rel[3])
        else:
            need(mode >= 2, "nonlinear lifted relation in mode one")
            if kind == "plu":
                need(len(rel) == 7, "Pluecker product arity")
                for i in (1, 3, 5):
                    put(self.product_name(*rel[i:i + 2]), F(1 if i == 1 else -1))
                equality = True
            elif kind == "balance":
                for sign, a, b in rel[1]:
                    need(q(sign) in (-1, 1), "wrong product-balance sign")
                    put(self.product_name(a, b), q(sign))
                equality = True
            elif kind == "support":
                _, x, y, z, value = rel
                put(self.product_name(x, y), F(1))
                put(x, -q(value))
                put(z, q(value))
            elif kind == "bary":
                _, target, vertices, outer, fans = rel
                need(len(vertices) == len(fans) == 3, "barycentric source arity")
                if target:
                    need(q(target[1]) in (-1, 1), "barycentric target sign")
                    put(self.product_name(target[0], outer), q(target[1]))
                for vertex, fan in zip(vertices, fans):
                    if vertex:
                        need(q(vertex[1]) in (-1, 1), "barycentric vertex sign")
                        put(self.product_name(vertex[0], fan), -q(vertex[1]))
                equality = True
            else:
                raise AuditError("unknown lifted relation kind " + kind)
        form = co, constant
        if equality:
            need(not self.expand(form), "nonzero actual-coordinate equality: " + str(index))
            self.equality_count += 1
        return form, equality, kind

    def factor(self, descriptor, mode, roll):
        need(isinstance(descriptor, list) and descriptor, "invalid lifted factor descriptor")
        tag = descriptor[0]
        if tag in ("physical_bound", "physical_endpoint"):
            need(hasattr(self.source, "lifted_physical"), "physical factor outside its proved domain")
            need(len(descriptor) == (2 if tag == "physical_bound" else 4), "physical descriptor arity")
            poly = self.source.lifted_physical(descriptor[1])
            if tag == "physical_endpoint":
                _, _, j, side = descriptor
                need(type(j) is int and 0 <= j < len(self.source.box) and side in ("lo","hi"),
                     "invalid endpoint multiplier")
                a,b = self.source.box[j]
                delta = add(V[j],const(-a)) if side == "lo" else add(const(b),scale(V[j],-1))
                poly = mul(poly,delta)
            co = {}
            for mon, value in poly.items():
                if not mon:continue
                need(len(mon) <= 2, "physical factor above quadratic degree")
                name = "v" + str(mon[0]) if len(mon)==1 else self.product_name(*("v"+str(i) for i in mon))
                co[name] = value
            form = co,poly.get((),F(0))
            need(self.expand(form)==poly, "incorrect lifting of physical inequality")
            return form,False
        if tag == "rectangle":
            need(len(descriptor) == 4, "rectangle descriptor arity")
            _, a, b, choice = descriptor
            need(type(choice) is int and 0 <= choice < 4, "rectangle corner index")
            name = self.product_name(a, b)
            la, ua = self.bounds[a]
            lb, ub = self.bounds[b]
            xa, xb, sign = ((la, lb, 1), (ua, ub, 1),
                            (la, ub, -1), (ua, lb, -1))[choice]
            form = lin_add(({name: F(sign)}, F(0)),
                           ({a: -sign * xb}, F(0)),
                           ({b: -sign * xa}, F(sign) * xa * xb))
            # Exact polynomial factorization of every rectangular bound.
            pa, pb = self.physical_variable(a), self.physical_variable(b)
            left = add(pa, const(-xa))
            right = add(pb, const(-xb))
            need(self.expand(form) == scale(mul(left, right), sign),
                 "wrong McCormick product polynomial")
            return form, False
        if tag == "point_area":
            need(len(descriptor) == 2, "point-area descriptor arity")
            name = descriptor[1]
            poly = area(self.stage, name)
            forms = [({name: F(-1)}, F(0))]
            for mon, value in poly.items():
                if not mon:
                    forms.append(({}, value))
                elif len(mon) == 1:
                    forms.append(({"v" + str(mon[0]): value}, F(0)))
                else:
                    need(len(mon) == 2, "actual area above quadratic degree")
                    product_var = self.product_name(*("v" + str(i) for i in mon))
                    forms.append(({product_var: value}, F(0)))
            form = lin_add(*forms)
            need(not self.expand(form), "false actual-coordinate area equality")
            self.equality_count += 1
            return form, True
        if tag == "relation":
            need(len(descriptor) == 2, "relation descriptor arity")
            form, equality, _ = self.relation(descriptor[1], mode)
            return form, equality
        if tag == "contact":
            need(len(descriptor) == 2,
                 "unsupported contact-order premise")
            i, j = self.source.contact(descriptor[1])
            a, b = "v"+str(i), "v"+str(j)
            return ({a: F(1), b: F(-1)}, F(0)), False
        if tag == "pentagon_strength":
            need(len(descriptor) == 3, "pentagon descriptor arity")
            _, direction, index = descriptor
            x, y, z, rate = self.source.pent(index)
            self.pentagon_count += 1
            if direction == "capped_x":
                return lin_add(({y: self.bounds[x][1]}, F(0)),
                               ({x: -rate}, F(0)), ({z: rate}, F(0))), False
            if direction == "capped_y":
                return lin_add(({x: self.bounds[y][1] - rate}, F(0)),
                               ({z: rate}, F(0))), False
            need(direction == "product" and mode >= 2, "unknown pentagon lift form")
            return lin_add(({self.product_name(x, y): F(1)}, F(0)),
                           ({x: -rate}, F(0)), ({z: rate}, F(0))), False
        if tag == "multiply":
            need(len(descriptor) == 3 and roll in (1, 2), "unrequested multiplied equality")
            _, index, multiplier = descriptor
            form, equality, kind = self.relation(index, mode)
            co, constant = form
            need(equality and kind in ("fan", "linear") and constant == 0 and co,
                 "invalid equality multiplication premise")
            allowed = ("OHC", "HDF", "CDF", "HCD", "HCF") if roll == 1 else self.source.bounds
            need(multiplier in allowed and multiplier in self.singles,
                 "invalid equality multiplier")
            out = {}
            for name, value in co.items():
                result = self.product_name(name, multiplier)
                out[result] = out.get(result, F(0)) + value
            result = clean(out), F(0)
            need(not self.expand(result), "nonzero multiplied actual equality")
            self.equality_count += 1
            return result, True
        raise AuditError("unlisted lifted source descriptor " + str(descriptor))


def check_lift(stage, lift, source_factory=Sources):
    """Reconstruct and bound one literal lifted positive sum exactly.

    Scalar endpoints and the relation geometry are premises checked separately.
    Equality rows additionally expand to zero in actual coordinates here.
    """
    need(type(lift["mode"]) is int and lift["mode"] in (1, 2),
         "unsupported lifted certificate mode")
    need(type(lift["roll"]) is int and lift["roll"] in (0, 1, 2),
         "unsupported equality multiplication mode")
    model = Lift(stage, source_factory)
    summands, seen = [], set()
    kinds = Counter()
    for weight, descriptor in lift["weights"]:
        need(type(weight) is int and weight != 0, "noninteger/zero lifted weight")
        key = json.dumps(descriptor, separators=(",", ":"), sort_keys=True)
        need(key not in seen, "repeated lifted source")
        seen.add(key)
        form, equality = model.factor(descriptor, lift["mode"], lift["roll"])
        need(equality or weight > 0, "negative multiplier on an inequality")
        kinds[descriptor[0]] += 1
        summands.append(lin_scale(form, weight))
    need(summands, "empty lifted certificate")
    co, constant = lin_add(*summands)
    supplied = clean({name: q(value) for name, value in lift["residual"].items()})
    need(co == supplied and constant == q(lift["constant"]),
         "incorrect lifted weighted residual/constant")
    maximum = constant
    for name, value in co.items():
        # A product is defined by its two primitive factors, never a new
        # unconstrained unknown or a product of arbitrary signed intervals.
        if name not in model.bounds:
            parts = name.split("*")
            need(len(parts) == 2 and name == model.product_name(*parts),
                 "undefined residual product")
        maximum += value * model.bounds[name][value > 0]
    need(maximum == q(lift["upper"]) and maximum < 0,
         "no exact negative lifted ceiling")
    actual = model.expand((co, constant))
    return {
        "weights": len(summands), "kinds": dict(kinds),
        "equalities": model.equality_count,
        "pentagon_sources": model.pentagon_count,
        "residual_terms": len(co), "actual_terms": len(actual),
        "constant": str(constant), "upper": str(maximum),
    }


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--folder", type=Path)
    parser.add_argument("--node", action="append")
    parser.add_argument("--report", type=Path)
    args = parser.parse_args()
    from c1_iirtt_tables import Tables
    tables = Tables(args.folder)
    names = args.node or ["global", *(name for name in tables.tree if (tables.folder / (name + ".md")).exists())]
    started = time.time()
    total = Counter()
    lifted = {}
    for number, name in enumerate(names):
        stages, lift = tables.node(name)
        for i, stage in enumerate(stages):
            try:
                result = check_coordinate(stage)
            except Exception as error:
                raise AuditError(f"{name} stage {i} coordinate: {error}") from error
            if "coordinate" in stage:
                total["coordinate_passes"] += 1
                total["coordinate_steps"] += result["steps"]
                total["coordinate_sources"] += result["sources"]
                total["coordinate_terminals"] += result["closed"]
                total["coordinate_pentagons"] += result["pentagon_sources"]
        if lift is not None:
            try:
                result = check_lift(stages[-1], lift)
            except Exception as error:
                raise AuditError(f"{name} lifted sum: {error}") from error
            total["lifted_certificates"] += 1
            total["lifted_weights"] += result["weights"]
            total["lifted_equalities"] += result["equalities"]
            total["lifted_pentagons"] += result["pentagon_sources"]
            lifted[name] = result
        total["nodes"] += 1
        total["stages"] += len(stages)
        if (number + 1) % 20 == 0:
            print(json.dumps({"progress": number + 1, "seconds": round(time.time() - started, 2),
                              "counts": dict(total)}), flush=True)
    report = {"status": "passed", "scope": "coordinate and lifted arithmetic; geometry/scalar/ancestry checked separately",
              "counts": dict(total), "lifted": lifted,
              "seconds": round(time.time() - started, 2)}
    if args.report:
        args.report.write_text(json.dumps(report, indent=2) + "\n")
    print(json.dumps(report), flush=True)


if __name__ == "__main__":
    main()
