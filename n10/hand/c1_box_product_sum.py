"""Exact positive sums in coordinates rescaled to the closed unit cube."""
from collections import defaultdict
from fractions import Fraction as F

from audit_c1_iirtt_lifted import Sources, add, area, const, mul, scale, var


class BoxProductSum:
    def __init__(self, stage, source_factory=Sources):
        self.source = source_factory(stage)
        self.n = len(self.source.box)
        self.monomials = {(): const(1)}
        self.translated = {}

    def monomial(self, powers):
        if powers in self.monomials:
            return self.monomials[powers]
        index = powers[-1]
        low, high = self.source.box[index]
        self.monomials[powers] = mul(self.monomial(powers[:-1]), add(const(low), scale(var(index), high-low)))
        return self.monomials[powers]

    def endpoint(self, coordinate, side):
        assert type(coordinate) is int and 0 <= coordinate < self.n
        assert type(side) is int and side in (0,1)
        return var(coordinate) if side == 0 else add(const(1), scale(var(coordinate), -1))

    def factor(self, tag):
        if tag[0] == 'cube':
            _, indices, sides = tag
            assert len(indices) == len(sides) == 3
            product = const(1)
            for coordinate, side in zip(indices, sides):
                product = mul(product, self.endpoint(coordinate, side))
            return product
        assert len(tag) in (1,3)
        name = tag[0]
        if name not in self.translated:
            source = self.source[name]
            self.translated[name] = add(*(scale(self.monomial(mon), coefficient)
                                          for mon, coefficient in source.items()))
        poly = self.translated[name]
        return poly if len(tag) == 1 else mul(poly,self.endpoint(tag[1],tag[2]))

    def collect(self, weights):
        poly = defaultdict(F)
        for weight, tag in weights:
            assert type(weight) is int and weight > 0
            for mon, coefficient in self.factor(tag).items():
                poly[mon] += weight*coefficient
        constant = poly.pop((), F(0))
        residual = {','.join(map(str,m)):str(v) for m,v in sorted(poly.items()) if v}
        high = constant + sum(max(F(0),v) for v in poly.values())
        return constant, residual, high


def check_box_product_sum(stage, literal, source_factory=Sources):
    assert literal['mode'] == 'unit_cube' and literal['roll'] == 0
    constant, residual, high = BoxProductSum(stage, source_factory).collect(literal['weights'])
    assert F(literal['constant']) == constant and literal['residual'] == residual
    assert F(literal['upper']) == high < 0

def terms_of_relation(relation):
    """Return coefficient and pair of factors for each term, with None denoting one."""
    kind = relation[0]
    if kind == 'plu':
        _, a,b,c,d,e,f = relation
        return [(1,a,b),(-1,c,d),(-1,e,f)]
    if kind == 'balance':
        return relation[1]
    if kind == 'support':
        _, a,b,c,k = relation
        return [(1,a,b),(-F(k),a,None),(F(k),c,None)]
    if kind == 'bary':
        _, target,vertices,outer,fan = relation
        rows = [(target[1],target[0],outer)] if target else []
        return rows + [(-v[1],v[0],sub) for v,sub in zip(vertices,fan) if v]
    raise ValueError(kind)


class EnvelopeSources(Sources):
    def __getitem__(self, name):
        if not name.startswith('envelope_'):
            return super().__getitem__(name)
        if name in self.cache:
            return self.cache[name]
        _, number, orientation, digits = name.split('_')
        i = int(number)
        assert 0 <= i < len(self.stage['area']['relations'])
        relation = self.stage['area']['relations'][i]['rel']
        orientation = int(orientation)
        assert orientation in (-1,1) and (orientation == 1 or relation[0] != 'support')
        rows = terms_of_relation(relation)
        assert len(digits) == len(rows)
        polynomial = {}
        for (coefficient, left, right), digit in zip(rows,digits):
            assert digit in ('0','1')
            coefficient = orientation * F(coefficient)
            if right is None:
                assert digit == '0'
                term = area(self.stage, left)
            else:
                which = int(digit)
                x = self.bounds[left][which]
                y = self.bounds[right][1-which if coefficient > 0 else which]
                term = add(scale(area(self.stage, left), y), scale(area(self.stage, right), x), const(-x*y))
            polynomial = add(polynomial,scale(term,coefficient))
        self.cache[name] = polynomial
        return polynomial
