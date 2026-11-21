"""Independent geometry semantics for two remaining C1 contact domains.

No discovery or author arithmetic implementation is imported. Polynomial
utilities come from the previously published independent C1 Fraction audit.
The caller must establish every conditional input box and its ancestry.
"""
from fractions import Fraction as F
from itertools import combinations, product
from audit_c1_two_central_three_caps import (
    LABELS, VARIABLES, S, determinant, canonical, key, sign, inside, convex,
    add, scale, multiply, constant, variable,
)

TRIANGLE_COST = list(map(F, ['93/1000', '279/1000', '347/500', '823/1000']))


def triangle_cost(n):
    assert 0 <= n <= 3
    return TRIANGLE_COST[n]


def quad_cost(n):
    assert n >= 1
    return F('449/1000') if n == 1 else F('744/1000') if n == 2 else F('93/91')


def put(known, word, orientation):
    name, parity = canonical(word)
    assert orientation in (-1, 1)
    assert name not in known or known[name] == parity*orientation
    known[name] = parity*orientation


def evaluate(poly, at):
    total = F(0)
    for monomial, coefficient in poly.items():
        for i in monomial:
            coefficient *= at[i]
        total += coefficient
    return total


def corners(poly, box, witness):
    assert all(len(m) == len(set(m)) for m in poly)
    indices = sorted({i for m in poly for i in m})
    assert witness[1] == indices
    values = []
    for mask in range(2**len(indices)):
        at = {i: box[i][(mask >> j) & 1] for j, i in enumerate(indices)}
        values.append(evaluate(poly, at))
    maximum = max(values)
    assert list(map(F, witness[2])) == [maximum-v for v in values]
    return maximum


def gp(word):
    assert len(word) == len(set(word)) == 5
    a, b, c, d, e = word
    return [(a+b+c, a+d+e, 1), (a+b+d, a+c+e, -1), (a+b+e, a+c+d, 1)]


class Geometry:
    labels = LABELS
    key = staticmethod(key)
    sign = staticmethod(sign)
    put = staticmethod(put)
    inside = staticmethod(inside)
    convex = staticmethod(convex)
    determinant = staticmethod(determinant)
    canonical = staticmethod(canonical)

    def extra_sign_rule(self, known, row):
        return False

    def __init__(self, metadata):
        self.meta = metadata
        assert metadata['labels'] == LABELS and metadata['vars'] == VARIABLES
        self.box = [tuple(map(F, b)) for b in metadata['box']]
        assert len(self.box) == 14 and all(0 <= a <= b <= 1 for a, b in self.box)
        self.biirl = metadata.get('domain') == 'BIIRL'
        self.cap = metadata.get('cap', 'right')
        self.fan = metadata.get('fan', 'OH')
        if self.biirl:
            self.outer = 'OCQDFRH'
            self.containers = {'Y': 'OHC', 'Z': 'HCDF', 'P': 'HCDF'}
            self.quad_containers = ['HCDFZP']
            self.side_bases = {'Q': 'OCQ', 'R': 'OHR'}
        else:
            assert self.cap in ('right', 'top') and self.fan in ('OH', 'OC')
            self.outer = 'OCRDFH' if self.cap == 'right' else 'OCDRFH'
            self.containers = {'Y': 'OHC', 'Z': 'OHC', 'P': 'HCDF', 'Q': 'HCDF'}
            self.quad_containers = ['HCDFPQ', 'OHCYZ']
            self.side_bases = {'R': 'OCR'} if self.cap == 'right' else {}
        if 'outer' in metadata:
            assert metadata['outer'] == self.outer

    def base(self):
        k = {}
        for t in combinations(self.outer, 3):
            put(k, ''.join(t), 1)
        for p in self.containers:
            for a, b in zip(self.outer, self.outer[1:]+self.outer[0]):
                put(k, a+b+p, 1)
            lower = self.containers[p] == 'OHC'
            edges = {'OH': -1, 'OC': 1, 'HC': -1 if lower else 1}
            if not lower:
                edges.update(HF=-1, CD=1, DF=1)
            elif not self.biirl:
                edges.update(HD=-1, HF=-1, CD=1, CF=1, DF=1)
            for edge, sg in edges.items():
                put(k, edge+p, sg)
        if self.biirl:
            put(k, 'OZP', 1)
        else:
            cap_tests = ({'OH': -1, 'OC': 1, 'HC': 1, 'HF': -1, 'CD': -1, 'DF': 1, 'OD': -1, 'OF': -1, 'HD': -1, 'CF': -1}
                         if self.cap == 'right' else
                         {'OH': -1, 'OC': 1, 'HC': 1, 'HF': -1, 'CD': 1, 'DF': -1, 'OD': 1, 'OF': -1, 'HD': 1, 'CF': -1})
            for edge, sg in cap_tests.items():
                put(k, edge+'R', sg)
            put(k, 'OPQ', 1)
            put(k, 'OYZ', 1 if self.fan == 'OH' else -1)
            put(k, 'HYZ' if self.fan == 'OH' else 'CYZ', -1 if self.fan == 'OH' else 1)
            for lower in 'YZ':
                for p in 'PQR':
                    put(k, 'H'+lower+p, 1)
                    put(k, 'C'+lower+p, -1)
                put(k, 'D'+lower+'R', 1 if self.cap == 'right' else -1)
                put(k, 'F'+lower+'R', 1)
        return k

    def coarse_box(self):
        if self.biirl:
            lower, upper, ell = 4*S, F('897/1000'), F(31, 299)
            return [(lower, upper)]*4+[(ell, 1-S)]*6+[(lower, F(1)), (ell, upper), (ell, upper), (lower, F(1))]
        rho, b = F('347/500'), F('8841/10000')
        xmax, ymax = (b if self.cap == 'right' else F(1)), F(1)
        xfloor, yfloor = S/ymax, S/xmax
        if self.fan == 'OH':
            lower = [(3*xfloor, xmax-2*xfloor), (yfloor, ymax-4*yfloor),
                     (xfloor, xmax-4*xfloor), (yfloor, ymax-2*yfloor)]
        else:
            lower = [(xfloor, xmax-4*xfloor), (3*yfloor, ymax-2*yfloor),
                     (xfloor, xmax-2*xfloor), (yfloor, ymax-4*yfloor)]
        if self.cap == 'right':
            contacts = [(rho/b, F(1)), (rho, b), (S/(rho*(1-rho)), 1-S), (S, b)]
            cap = [(rho+S/((1-S)*rho), F(1)), (S/b, 1-S-S/(1-rho))]
        else:
            contacts = [(rho, F(1))]*2+[(S, 1-S)]*2
            cap = [(S+S/(1-S), F(1))]*2
        return contacts+lower+[(xfloor, 1-S), (yfloor, 1-S)]*2+cap

    def cap_value(self, triangle, orientation, witness):
        assert orientation in (-1, 1)
        if witness == ['unit']:
            return F(1)
        if witness[0] == 'c1_side_base':
            assert len(witness) == 2 and self.side_bases[witness[1]] == triangle
            return F('21/50')
        assert witness[0] == 'box'
        return corners(scale(self.determinant(triangle), orientation), self.box, witness)

    def quad_cap(self, known, hull, witness):
        assert self.convex(known, hull)
        if witness[0] == 'container_quad':
            assert witness[1] in self.quad_containers and set(hull) <= set(witness[1])
            return F(1)
        assert witness[0] == 'quad_box'
        return corners(add(self.determinant(hull[:3]), self.determinant(hull[0]+hull[2:])), self.box, witness)

    def mesh_signs(self, known, word, orientation):
        assert len(word) == len(set(word)) == 6
        a, b, c, y, z, x = word
        assert all(self.inside(known, a+b+c, p) for p in (x, y, z))
        assert self.inside(known, a+b+y, z) and self.inside(known, a+c+y, x)
        assert orientation == -self.sign(known, a+b+c)
        mapping = dict(zip('OHCYZX', word))
        tokens = '-OHC -OHY -OHZ -OHX +OCY +OCZ +OCX +OYZ -OYX -OZX -HCY -HCZ -HCX -HYZ -HYX +HZX +CYZ +CYX +CZX +YZX'.split()
        return [(''.join(mapping[p] for p in t[1:]), orientation*(1 if t[0] == '+' else -1)) for t in tokens]

    def has_container(self, point, container):
        return self.containers[point] == container

    def line_rule(self, known, base, point, container, vertex=None, orientation=None):
        assert len(base) == len(set(base)) == 2 and self.has_container(point, container)
        vertices = [v for v in container if v not in base]
        if vertex is None:
            sg = self.sign(known, base+vertices[0])
            assert sg and all(self.sign(known, base+v) == sg for v in vertices)
            assert point in base or self.sign(known, base+point) == -sg
        elif vertex == point:
            assert point not in base and all(self.sign(known, base+v) == orientation for v in vertices)
            self.put(known, base+point, orientation)
        else:
            assert vertex in vertices and len(vertices) > 1
            assert all(self.sign(known, base+v) == -orientation for v in vertices if v != vertex)
            assert point in base or self.sign(known, base+point) == orientation
            self.put(known, base+vertex, orientation)

    def geometry(self, steps, final):
        known = self.derive_signs(steps)
        assert known == dict(final)
        return known

    def derive_signs(self, steps):
        known = self.base()
        for t, sg in self.meta['assign'].items():
            self.put(known, t, sg)
        meshes = []
        for row in steps:
            kind, *r = row
            if kind in ('box_sign', 'clearance_sign'):
                t, sg, value, witness = r
                assert not self.sign(known, t) and self.cap_value(t, -sg, witness) == F(value) < S
                self.put(known, t, sg)
            elif self.extra_sign_rule(known, row):
                continue
            elif kind in ('capacity', 'quad_capacity'):
                hull, pts, p, target, sg, value, witness = r
                assert len(pts) == len(set(pts)) and all(self.inside(known, hull, x) for x in pts)
                assert p not in hull and p not in pts and not self.sign(known, target)
                if kind == 'capacity':
                    hsg = self.sign(known, hull)
                    assert hsg and self.cap_value(hull, hsg, witness) == F(value)
                    assert len(pts) == 3 or F(value) < triangle_cost(len(pts)+1)
                else:
                    hsg = 1
                    assert self.quad_cap(known, hull, witness) == F(value) < quad_cost(len(pts)+1)
                tests = [a+hull[(i+1) % len(hull)]+p for i, a in enumerate(hull)]
                assert target in tests and all(self.sign(known, t) == hsg for t in tests if t != target)
                assert sg == -hsg
                self.put(known, target, sg)
            elif kind == 'extreme':
                hull, p, target, sg = r
                assert p in self.outer and p not in hull and self.sign(known, hull)
                tests = [a+hull[(i+1) % 3]+p for i, a in enumerate(hull)]
                assert target in tests and not self.sign(known, target)
                assert all(self.sign(known, t) == self.sign(known, hull) for t in tests if t != target)
                assert sg == -self.sign(known, hull)
                self.put(known, target, sg)
            elif kind in ('interior_line', 'central_line'):
                if kind == 'interior_line':
                    base, p, container, vertex, sg = r
                else:
                    base, p, vertex, sg = r
                    container = self.containers[p]
                self.line_rule(known, base, p, container, vertex, sg)
            elif kind == 'plu':
                word, target, sg = r
                terms = gp(word)
                values = [c*self.sign(known, a)*self.sign(known, b) for a, b, c in terms]
                assert values.count(0) == 1 and len(set(v for v in values if v)) == 1
                a, b, c = terms[values.index(0)]
                assert not self.sign(known, target)
                if self.key(a) == self.key(target):
                    expected = -next(v for v in values if v)*c*self.sign(known, b)*self.canonical(a)[1]*self.canonical(target)[1]
                else:
                    assert self.key(b) == self.key(target)
                    expected = -next(v for v in values if v)*c*self.sign(known, a)*self.canonical(b)[1]*self.canonical(target)[1]
                assert sg == expected
                self.put(known, target, sg)
            elif kind == 'mesh':
                word, orientation = r
                for t, sg in self.mesh_signs(known, word, orientation):
                    self.put(known, t, sg)
                meshes.append([word, orientation])
            else:
                raise AssertionError(kind)
        assert meshes == self.meta['meshes']
        return known

    def terminal(self, known, row):
        kind, *r = row
        if kind in ('unsigned_box', 'clearance_gap'):
            t, a, wa, b, wb = r
            assert self.cap_value(t, 1, wa) == F(a) < S and self.cap_value(t, -1, wb) == F(b) < S
        elif kind == 'four':
            t, pts = r
            assert len(pts) == len(set(pts)) == 4 and all(self.inside(known, t, p) for p in pts)
        elif kind == 'area_cap':
            t, pts, value, witness = r
            assert len(pts) == len(set(pts)) and all(self.inside(known, t, p) for p in pts)
            assert self.cap_value(t, self.sign(known, t), witness) == F(value) < triangle_cost(len(pts))
        elif kind == 'quad_area_cap':
            hull, pts, value, witness = r
            assert pts and len(pts) == len(set(pts)) and all(self.inside(known, hull, p) for p in pts)
            assert self.quad_cap(known, hull, witness) == F(value) < quad_cost(len(pts))
        elif kind == 'extreme':
            t, p = r
            assert p in self.outer and self.inside(known, t, p)
        elif kind in ('interior_line', 'central_line'):
            base, p = r[:2]
            container = r[2] if kind == 'interior_line' else self.containers[p]
            self.line_rule(known, base, p, container)
        elif kind == 'gp':
            values = [c*self.sign(known, a)*self.sign(known, b) for a, b, c in gp(r[0])]
            assert all(values) and len(set(values)) == 1
        elif kind == 'mesh':
            word, orientation, target, sg = r
            assert self.sign(known, target) == -sg
            assert any(self.key(t) == self.key(target) and v*self.canonical(t)[1] == sg*self.canonical(target)[1]
                       for t, v in self.mesh_signs(known, word, orientation))
        elif kind == 'cluster':
            t, pivot, fan, others = r
            assert self.inside(known, t, pivot) and len(others) == len(set(others)) == 2
            assert pivot in fan and set(fan)-{pivot} <= set(t)
            assert all(self.inside(known, t, p) and self.inside(known, fan, p) for p in others)
        else:
            raise AssertionError(kind)

    def initial_value(self, known, triangle, side, witness, ancestor):
        assert side in ('lo', 'hi') and self.sign(known, triangle)
        if witness[0] in ('ancestor_area', 'earlier_area'):
            return ancestor(triangle, side, witness)
        if side == 'hi':
            return self.cap_value(triangle, self.sign(known, triangle), witness)
        if witness[0] == 'cost':
            pts = witness[1]
            assert len(pts) == len(set(pts)) and all(self.inside(known, triangle, p) for p in pts)
            return triangle_cost(len(pts))
        assert witness[0] in ('box_lower', 'box_min')
        return -corners(scale(self.determinant(triangle), -self.sign(known, triangle)), self.box, witness)

    def relation(self, known, relation, witness):
        kind, *r = relation
        tag, *w = witness
        if kind == 'fan':
            outer, *fans = r
            assert tag == 'fan' and w[0] == outer and self.inside(known, outer, w[1])
            assert fans == sorted(self.key(a+outer[(i+1) % 3]+w[1]) for i, a in enumerate(outer))
        elif kind == 'plu':
            assert tag == 'plu'
            terms = gp(w[0]); values = [c*self.sign(known, a)*self.sign(known, b) for a, b, c in terms]
            assert all(values) and len(set(values)) == 2
            odd = next(i for i, v in enumerate(values) if values.count(v) == 1)
            lhs = sorted(self.key(t) for t in terms[odd][:2])
            rhs = sorted(sorted(self.key(t) for t in term[:2]) for i, term in enumerate(terms) if i != odd)
            assert r == lhs+sum(rhs, [])
        elif kind == 'balance':
            assert tag == 'six' and len(w[0]) == len(set(w[0])) == 6
            i, j, a, b, c, p = w[0]
            terms = [(a+b+c, i+j+p, 1), (p+b+c, i+j+a, -1), (a+p+c, i+j+b, -1), (a+b+p, i+j+c, -1)]
            expected = [[co*self.sign(known, x)*self.sign(known, y), self.key(x), self.key(y)] for x, y, co in terms]
            assert all(t[0] for t in expected) and r == [expected]
            assert not add(*(scale(multiply(self.determinant(x), self.determinant(y)), co) for x, y, co in terms))
        elif kind == 'quad':
            a, b, cost = r
            assert tag == 'quad'
            hull, pts = w
            assert self.convex(known, hull) and pts and len(pts) == len(set(pts))
            assert all(self.inside(known, hull, p) for p in pts) and F(cost) == quad_cost(len(pts))
            x, y, z, v = hull
            assert [a, b] in [sorted(map(self.key, pair)) for pair in [(x+y+z, x+z+v), (x+y+v, y+z+v)]]
        elif kind == 'support':
            if tag == 'support_quad':
                hull, pts, rate = w
                assert len(pts) == len(set(pts)) and 1 <= len(pts) <= 2
                assert all(self.inside(known, hull, p) for p in pts)
                a, b, c, d = hull
                counts = tuple(sorted(sum(self.inside(known, tri, p) for p in pts) for tri in (a+c+d, b+c+d)))
                table = ({(0, 0): F('29/5'), (0, 1): F('149/20'), (1, 1): F(12)} if len(pts) == 1 else
                         {(0, 0): F(9), (0, 1): F(9), (0, 2): F('139/10'), (1, 1): F(12), (1, 2): F('199/10'), (2, 2): F('149/5')})
                maximum = max(F('29/5') if len(pts) == 1 else F('1142/125'), table[counts])
                if len(pts) == 2 and all(self.inside(known, a+b+c, p) and self.inside(known, a+b+d, p) for p in pts):
                    maximum = max(maximum, F('299/31'))
                assert 0 < F(rate) <= maximum
                expected = [self.key(a+b+d), self.key(a+b+c), self.key(a+c+d), str(F(rate)*S)]
            else:
                assert tag == 'support_pent'
                hull = w[0]; assert len(hull) == len(set(hull)) == 5
                assert set(hull) <= set(self.labels)
                a, b, c, d, e = hull
                expected = [self.key(a+b+e), self.key(a+d+e), self.key(a+b+d), str(11*S)]
            direction = self.sign(known, hull[:3])
            assert direction and self.convex(known, hull, direction) and r == expected
        elif kind == 'bary':
            target, vertices, outer, fans = r
            assert tag == 'bary'
            hull, inner, line = w
            assert outer == hull and self.inside(known, hull, inner) and len(line) == len(set(line)) == 2
            assert fans == [self.key(hull[1]+hull[2]+inner), self.key(hull[0]+hull[2]+inner), self.key(hull[0]+hull[1]+inner)]
            assert vertices == [None if v in line else [self.key(line+v), self.sign(known, line+v)] for v in hull]
            assert all(v is None or v[1] for v in vertices)
            assert target == (None if inner in line else [self.key(line+inner), self.sign(known, line+inner)])
            assert target is None or target[1]
        else:
            assert kind == 'linear'
            expected = {}; rhs = F(0)
            def acc(word, coefficient):
                t = self.key(word); expected[t] = expected.get(t, F(0))+coefficient
                if not expected[t]:
                    del expected[t]
            if tag == 'affine_quad':
                word, orientation = w
                assert len(word) == len(set(word)) == 4 and orientation in (-1, 1)
                a, b, c, d = word
                for t, co in [(a+b+c, 1), (a+c+d, 1), (a+b+d, -1), (b+c+d, -1)]:
                    assert self.sign(known, t)
                    acc(t, co*orientation*self.sign(known, t))
            elif tag == 'c1_norm':
                if w[0] == 'h_ge_c':
                    assert self.biirl or self.box[0][0] >= self.box[1][1]
                    acc('OHD', 1); acc('OCF', -1)
                elif w[0] == 'h_ge_d':
                    acc('OHC', 1); acc('OCD', -1)
                else:
                    assert w[0] == 'c_ge_f'
                    acc('OHC', 1); acc('OHF', -1)
            elif tag == 'c1_central_quad_cap':
                assert w in [['HCD', 'HDF'], ['HCF', 'CDF']]
                for t in w:
                    acc(t, -1)
                rhs = F(-1)
            else:
                assert tag in ('mesh_ear', 'mesh_inner', 'mesh_connect')
                word, orientation = w[:2]
                assert [word, orientation] in self.meta['meshes']
                a, b, c, y, z, x = word
                if tag == 'mesh_ear':
                    assert w[2] in map(self.key, [a+b+z, a+c+x, b+c+y])
                    acc(a+b+c, 1); acc(w[2], -1); rhs = S*F('3927/500')
                elif tag == 'mesh_inner':
                    acc(y+z+x, -1); rhs = -S*F('8/5')
                else:
                    for t in (b+y+z, a+z+x, c+y+x):
                        acc(t, 1)
                    rhs = S*F('2427/500')
            assert {t: F(c) for t, c in r[0].items() if F(c)} == expected and F(r[1]) == rhs


def bary_value(relation, records, sources, side):
    _, target, vertices, outer, fans = relation
    expected = [(outer, 'hi')]+[(t, 'lo') for t in fans]
    expected += [(t, side if sg == 1 else ('hi' if side == 'lo' else 'lo')) for v in vertices if v for t, sg in [v]]
    assert [(records[s]['triangle'], records[s]['side']) for s in sources] == expected
    vals = [F(records[s]['value']) for s in sources]
    n, weights = vals[0], vals[1:4]
    assert n > 0 and all(v >= 0 for v in weights) and sum(weights) <= n
    vals = iter(vals[4:]); signed = [F(0) if v is None else v[1]*next(vals) for v in vertices]
    return (sum(w*x for w, x in zip(weights, signed))+(n-sum(weights))*(min(signed) if side == 'lo' else max(signed)))/n


def audit_scalar_updates(initial, updates, relations):
    records = dict(initial)
    for row in updates:
        assert row['id'] not in records
        kind, *r = relations[row['relation']]
        tr, side, rule = row['triangle'], row['side'], row['rule']
        refs = [records[s] for s in row['sources']]
        values = [F(b['value']) for b in refs]
        def expect(pairs):
            assert [(b['triangle'], b['side']) for b in refs] == pairs
        if kind == 'fan':
            outer, *fans = r
            if tr == outer:
                assert rule == ('sum' if side == 'lo' else 'upper_sum')
                expect([(t, side) for t in fans]); raw = sum(values)
            else:
                assert tr in fans and rule == ('lower_sub' if side == 'lo' else 'sub')
                expect([(outer, side)]+[(t, 'hi' if side == 'lo' else 'lo') for t in fans if t != tr])
                raw = values[0]-sum(values[1:])
        elif kind == 'plu':
            x, y, a, b, c, d = r
            if rule in ('sumlo', 'sumhi'):
                assert tr in (x, y) and side == ('lo' if rule == 'sumlo' else 'hi')
                expect([(t, side) for t in (a, b, c, d)]+[(y if tr == x else x, 'hi' if side == 'lo' else 'lo')])
                assert values[4] > 0
                raw = (values[0]*values[1]+values[2]*values[3])/values[4]
            else:
                candidates = [(a, b, c, d), (b, a, c, d), (c, d, a, b), (d, c, a, b)]
                _, other, u, v = next(z for z in candidates if z[0] == tr)
                assert rule == ('diff' if side == 'lo' else 'diffhi')
                opposite = 'hi' if side == 'lo' else 'lo'
                expect([(x, side), (y, side), (u, opposite), (v, opposite), (other, opposite)])
                assert values[4] > 0
                raw = (values[0]*values[1]-values[2]*values[3])/values[4]
                if side == 'hi':
                    raw = max(F(0), raw)
                else:
                    assert raw > 0
        elif kind == 'balance':
            terms = r[0]; selected = [t for t in terms if tr in t[1:]]
            assert len(selected) == 1 and rule == 'balance_'+side
            term = selected[0]; sg, a, b = term
            opposite = [t for t in terms if t[0] != sg]; same = [t for t in terms if t != term and t[0] == sg]
            other_side = 'hi' if side == 'lo' else 'lo'
            expect([(t, side) for z in opposite for t in z[1:]]+[(t, other_side) for z in same for t in z[1:]]+[(b if a == tr else a, other_side)])
            at = 0; numerator = F(0)
            for group, coefficient in [(opposite, 1), (same, -1)]:
                for _ in group:
                    numerator += coefficient*values[at]*values[at+1]; at += 2
            assert values[at] > 0
            raw = numerator/values[at]
            if side == 'hi':
                raw = max(F(0), raw)
            else:
                assert raw > 0
        elif kind == 'quad':
            a, b, cost = r
            assert tr in (a, b) and side == 'lo' and rule == 'quad'
            expect([(b if tr == a else a, 'hi')]); raw = F(cost)-values[0]
        elif kind == 'support':
            x, y, z, k = r; k = F(k)
            if rule == 'support_y':
                assert tr == y and side == 'lo'
                expect([(x, 'lo'), (z, 'hi')]); assert values[0] > 0
                raw = k*(1-values[1]/values[0])
            elif rule == 'support_z':
                assert tr == z and side == 'lo'
                expect([(x, 'lo'), (y, 'hi')]); raw = values[0]*(1-values[1]/k)
            else:
                assert rule == 'support_x' and tr == x and side == 'hi'
                expect([(z, 'hi'), (y, 'hi')]); assert values[1] < k
                raw = k*values[0]/(k-values[1])
        elif kind == 'bary':
            signed_side = rule.removeprefix('bary_'); assert signed_side in ('lo', 'hi')
            target = r[0]; assert target is not None and tr == target[0]
            assert side == (signed_side if target[1] == 1 else ('hi' if signed_side == 'lo' else 'lo'))
            raw = target[1]*bary_value(relations[row['relation']], records, row['sources'], signed_side)
        else:
            assert kind == 'linear' and rule == 'linear'
            co, rhs = r; coefficient = F(co[tr]); assert coefficient
            assert side == ('lo' if coefficient > 0 else 'hi')
            others = sorted(t for t in co if t != tr)
            expect([(t, 'hi' if F(co[t]) > 0 else 'lo') for t in others])
            raw = (F(rhs)-sum(F(co[t])*v for t, v in zip(others, values)))/coefficient
        assert side in ('lo', 'hi')
        lower = F(raw.numerator*10**6//raw.denominator, 10**6)
        rounded = lower if side == 'lo' else -F((-raw.numerator)*10**6//raw.denominator, 10**6)
        assert F(row['value']) == rounded
        records[row['id']] = row
    return records
