"""Fresh physical-source reconstruction for the two C1 contact domains.

Inputs are independently verified actual signs, final scalar endpoints,
and an earlier proved initial box. No author/discovery code is imported.
"""
from fractions import Fraction as F
import re
from c1_contact_geometry_independent import (
    S, LABELS, Geometry, determinant, key, sign, inside, convex,
    add, scale, multiply, constant, variable,
)

ONE = constant(1)
V = list(map(variable, range(14)))


def difference(a, b):
    return add(a, scale(b, -1))


class Sources:
    def __init__(self, geometry, known, bounds, relations):
        self.geo, self.known, self.bounds, self.relations = geometry, known, bounds, relations
        self.cache = {}

    def area(self, word):
        orientation = sign(self.known, word)
        assert orientation
        return scale(determinant(word), orientation)

    def cap(self, triangle, tag):
        h, c, d, f = V[:4]
        if tag == 'scalar':
            return constant(F(self.bounds[triangle]['hi']))
        anchor = {key('HCD'): h, key('HCF'): c, key('HDF'): difference(ONE, d), key('CDF'): difference(ONE, f)}
        if tag == 'anchor':
            return anchor[triangle]
        hlo, clo = self.geo.box[0][0], self.geo.box[1][0]
        dhi, fhi = self.geo.box[2][1], self.geo.box[3][1]
        contact = {key('HCD'): add(scale(h, 1-clo), scale(d, clo)),
                   key('HCF'): add(scale(c, 1-hlo), scale(f, hlo)),
                   key('HDF'): add(ONE, scale(h, fhi-1), scale(d, -fhi)),
                   key('CDF'): add(ONE, scale(c, dhi-1), scale(f, -dhi))}
        if tag == 'contact_affine':
            if triangle in contact:
                return contact[triangle]
            assert not self.geo.biirl and self.geo.cap == 'right'
            if triangle == key('OCR'):
                return scale(V[13], self.geo.box[1][1])
            assert triangle == key('CDR')
            return add(scale(difference(V[12], c), dhi), scale(V[13], self.geo.box[1][1]-1))
        assert not self.geo.biirl and self.geo.cap == 'right'
        if tag == 'sidebase':
            assert triangle == key('OCR')
            return constant(F('21/50'))
        assert set(triangle) <= set(self.geo.outer)
        if tag == 'rectangle_x':
            ranks = {'O': 0, 'H': 0, 'F': 1, 'C': 2, 'R': 3, 'D': 4}
            coordinates = {'O': {}, 'H': {}, 'F': f, 'C': c, 'R': V[12], 'D': ONE}
        else:
            assert tag == 'rectangle_y'
            ranks = {'O': 0, 'C': 0, 'R': 1, 'D': 2, 'H': 3, 'F': 4}
            coordinates = {'O': {}, 'C': {}, 'R': V[13], 'D': d, 'H': h, 'F': ONE}
        return difference(coordinates[max(triangle, key=ranks.get)], coordinates[min(triangle, key=ranks.get)])

    def source(self, name):
        if name in self.cache:
            return self.cache[name]
        h, c, d, f, u, v, z, w, p, q, r, t, j, k = V
        rho = F('347/500')
        if re.fullmatch(r'unsigned_[A-Z]{3}',name):
            triangle=name.split('_')[1]
            assert len(set(triangle))==3 and set(triangle)<=set(LABELS) and key(triangle)==triangle
            out=add(multiply(determinant(triangle),determinant(triangle)),constant(-S*S))
        elif name.startswith(('lo_', 'hi_')):
            side, triangle = name.split('_', 1)
            value = F(self.bounds[triangle][side]); area = self.area(triangle)
            out = add(area, constant(-value)) if side == 'lo' else add(constant(value), scale(area, -1))
        elif name in ('order_hd', 'order_cf', 'order_hc'):
            if name == 'order_hc':
                assert self.geo.biirl
            a, b = {'order_hd': (h, d), 'order_cf': (c, f), 'order_hc': (h, c)}[name]
            out = difference(a, b)
        elif name == 'right_support':
            assert self.geo.biirl or self.geo.cap == 'right'
            out = add(multiply(multiply(d, c), difference(ONE, c)), constant(-S))
        elif name == 'left_support':
            assert self.geo.biirl
            out = add(multiply(multiply(f, h), difference(ONE, h)), constant(-S))
        elif name == 'top_support':
            assert not self.geo.biirl and self.geo.cap == 'top'
            out = add(multiply(difference(ONE, d), difference(ONE, f)), constant(-S))
        elif name == 'central_two':
            out = add(constant(1-8*S), scale(multiply(difference(h, d), difference(c, f)), -1))
        elif name in ('right_gap_x', 'right_gap_y', 'right_base_cap', 'right_quad_height'):
            assert not self.geo.biirl and self.geo.cap == 'right'
            out = {'right_gap_x': add(j, scale(c, -1), constant(-S/(F('8841/10000')*(1-S)))),
                   'right_gap_y': add(d, scale(k, -1), constant(-S/(1-rho))),
                   'right_base_cap': add(constant(F('21/50')), scale(multiply(c, k), -1)),
                   'right_quad_height': multiply(difference(h, d), difference(j, f))}[name]
        elif name in ('top_gap_x', 'top_gap_y'):
            assert not self.geo.biirl and self.geo.cap == 'top'
            out = add(j, scale(f, -1), constant(-S/(1-S))) if name == 'top_gap_x' else add(k, scale(d, -1), constant(-S/(1-S)))
        elif name.startswith('lower_'):
            assert not self.geo.biirl
            if name == 'lower_two':
                out = add(multiply(h, c), constant(-rho))
            elif name == 'lower_order':
                out = add(multiply(h, difference(u, z)), multiply(c, difference(v, w)))
            elif name in ('lower_sum_y', 'lower_sum_z'):
                out = add(constant(1-S), scale(u if name.endswith('y') else z, -1), scale(v if name.endswith('y') else w, -1))
            else:
                if self.geo.fan == 'OH':
                    products = {'lower_fan': (h, u, 3*S), 'lower_gap': (h, difference(u, z), 2*S),
                                'lower_u_hi': (h, difference(c, u), 2*S), 'lower_v_hi': (c, difference(h, v), 4*S),
                                'lower_z_hi': (h, difference(c, z), 2*S), 'lower_w_hi': (c, difference(h, w), 2*S)}
                else:
                    products = {'lower_fan': (c, v, 3*S), 'lower_gap': (c, difference(v, w), 2*S),
                                'lower_u_hi': (h, difference(c, u), 4*S), 'lower_v_hi': (c, difference(h, v), 2*S),
                                'lower_z_hi': (h, difference(c, z), 2*S), 'lower_w_hi': (c, difference(h, w), 2*S)}
                if name.endswith('_aff'):
                    original = 'lower_gap' if name == 'lower_gap_aff' else name[:-4]+'_hi'
                    _, factor, floor = products[original]
                    out = add(factor, constant(-floor))
                else:
                    a, b, floor = products[name]
                    out = add(multiply(a, b), constant(-floor))
        elif re.fullmatch(r'upper_quad_[PQR]', name):
            assert not self.geo.biirl
            point = name[-1]; hull = 'OC'+point+'H'
            assert convex(self.known, hull) and all(inside(self.known, hull, x) for x in 'YZ')
            i = {'P': 8, 'Q': 10, 'R': 12}[point]
            out = add(multiply(h, V[i]), multiply(c, V[i+1]), constant(-8*S))
        elif re.fullmatch(r'contact_cap_[A-Z]{3}', name):
            triangle = name.rsplit('_', 1)[1]
            out = difference(self.cap(triangle, 'contact_affine'), self.area(triangle))
        elif re.fullmatch(r'rectangle_[xy]_[A-Z]{3}', name):
            _, axis, triangle = name.split('_')
            out = difference(self.cap(triangle, 'rectangle_'+axis), self.area(triangle))
        elif re.fullmatch(r'bary_(?:(?:affine_)?\d+_(?:lo|hi)|budget_\d+)', name):
            parts = name.split('_'); index = int(parts[2] if parts[1] in ('affine', 'budget') else parts[1]); relation, _ = self.relations[index]
            assert relation[0] == 'bary'
            _, target, vertices, outer, fans = relation
            n = F(self.bounds[outer]['hi']); weights = [F(self.bounds[t]['lo']) for t in fans]
            remaining = n-sum(weights)
            assert n > 0 and all(b >= 0 for b in weights)
            if parts[1] == 'budget':
                out = constant(remaining)
            else:
                assert remaining >= 0
                side = parts[-1]; direction = 1 if side == 'lo' else -1
                out = scale(self.area(target[0]), direction*n*target[1]) if target else {}
                values = []
                for vertex, weight in zip(vertices, weights):
                    if vertex is None:
                        values.append(F(0))
                    else:
                        t, sg = vertex; source_side = side if sg > 0 else ('hi' if side == 'lo' else 'lo')
                        values.append(sg*F(self.bounds[t][source_side]))
                        out = add(out, scale(self.area(t), -direction*weight*sg))
                extreme = min(values) if side == 'lo' else max(values)
                out = add(out, constant(-direction*remaining*extreme))
        elif re.fullmatch(r'support_envelope_\d+_[01]', name):
            _, _, index, choice = name.split('_'); relation, _ = self.relations[int(index)]
            assert relation[0] == 'support'
            _, x, y, z0, rate = relation; rate = F(rate)
            sx, sy = ('hi', 'lo') if choice == '0' else ('lo', 'hi')
            a, b = F(self.bounds[x][sx]), F(self.bounds[y][sy])
            out = add(scale(self.area(y), a), scale(self.area(x), b-rate), scale(self.area(z0), rate), constant(-a*b))
        elif re.fullmatch(r'(quad|linear)_\d+', name):
            kind, index = name.split('_'); relation, _ = self.relations[int(index)]
            assert relation[0] == kind
            if kind == 'quad':
                out = add(self.area(relation[1]), self.area(relation[2]), constant(-F(relation[3])))
            else:
                out = add(constant(-F(relation[2])), *(scale(self.area(t), F(c)) for t, c in relation[1].items()))
        elif re.fullmatch(r'(?:area_|nested_)?support_\d+_[0-7]_[xy]_[a-z_]+', name):
            match = re.fullmatch(r'(area_|nested_)?support_(\d+)_([0-7])_([xy])_(.+)', name)
            extra, index, rotation, axis, tag = match.groups()
            relation, witness = self.relations[int(index)]
            assert relation[0] == witness[0] == 'quad'
            hull, pts = witness[1:]
            assert convex(self.known, hull) and pts and len(pts) == len(set(pts)) and all(inside(self.known, hull, p) for p in pts)
            rotation = int(rotation)
            if rotation >= 4:
                assert not self.geo.biirl
                hull = hull[::-1]
            rotation %= 4; hull = hull[rotation:]+hull[:rotation]
            a, b, c0, d0 = hull
            words = [a+b+c0, a+b+d0, a+c0+d0, b+c0+d0]
            names = list(map(key, words)); x, y, z0, vv = map(self.area, words)
            lows = [F(self.bounds[t]['lo']) for t in names]
            rate = F('1142/125') if len(pts) >= 2 else F('29/5')
            counts = tuple(sorted(sum(inside(self.known, tri, p) for p in pts) for tri in words[2:]))
            if len(pts) == 2:
                rate = max(rate, {(0, 0): F(9), (0, 1): F(9), (0, 2): F('139/10'), (1, 1): F(12), (1, 2): F('199/10'), (2, 2): F('149/5')}[counts])
            elif len(pts) == 1:
                rate = {(0, 0): F('29/5'), (0, 1): F('149/20'), (1, 1): F(12)}[counts]
            i = 0 if axis == 'x' else 1
            lhs = multiply(self.cap(names[i], tag), y if i == 0 else x)
            delta = difference(y, z0)
            if extra == 'area_':
                assert min(lows) > 0
                floor = max(F(relation[3]), lows[0]+lows[2], lows[1]+lows[3])
                out = add(lhs, scale(delta, -floor), constant(-min(lows[0]*lows[1], lows[2]*lows[3])))
            else:
                if extra == 'nested_':
                    assert len(pts) == 2 and all(inside(self.known, words[0], p) and inside(self.known, words[1], p) for p in pts)
                    rate = max(rate, F('299/31'))
                out = add(lhs, scale(delta, -rate*S))
        elif re.fullmatch(r'pent_(?:inner_)?[A-Z]{5}_[0-4]_[xy]_[a-z_]+', name):
            match = re.fullmatch(r'pent_(?:inner_)?([A-Z]{5})_([0-4])_([xy])_(.+)', name)
            hull, rotation, axis, tag = match.groups()
            assert convex(self.known, hull, sign(self.known, hull[:3]))
            rotation = int(rotation); a, b, c0, d0, e = hull[rotation:]+hull[:rotation]
            words = [a+b+e, a+d0+e, a+b+d0]
            x, y, z0 = map(self.area, words)
            i = 0 if axis == 'x' else 1
            out = add(multiply(self.cap(key(words[i]), tag), y if i == 0 else x), scale(difference(x, z0), -11*S))
        elif re.fullmatch(r'spread_\d+_[A-Z]{2}_-?1', name):
            _, index, edge, orientation = name.split('_')
            relation, witness = self.relations[int(index)]
            assert relation[0] == witness[0] == 'quad'
            hull, pts = witness[1:]
            assert convex(self.known, hull) and len(pts) == len(set(pts)) == 2 and all(inside(self.known, hull, p) for p in pts)
            diagonals = [hull[0]+hull[2], hull[1]+hull[3]]
            assert edge in diagonals and all(sign(self.known, e+pts[0])*sign(self.known, e+pts[1]) == -1 for e in diagonals)
            area = add(self.area(relation[1]), self.area(relation[2]))
            delta = difference(determinant(edge[1]+pts), determinant(edge[0]+pts))
            rate = F(6) if set(hull) == set('HCDF') else F('1457/250')
            out = add(area, constant(-rate*S), scale(delta, int(orientation)))
        else:
            raise AssertionError('Unsupported physical source '+name)
        self.cache[name] = out
        return out
