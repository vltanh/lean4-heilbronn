"""Independent exact terminal reader for literal coordinate-polynomial products.

The caller supplies completed, independently checked endpoint and physical
premises. This module imports no author reader or discovery implementation.
Translation uses x = lower + d, with unscaled widths and repeated indices.
"""
from fractions import Fraction as F
from functools import reduce
import json


def add(a, b):
    r = dict(a)
    for m, c in b.items():
        r[m] = r.get(m, F(0)) + c
        if not r[m]:
            del r[m]
    return r


def mul(a, b):
    r = {}
    for m, c in a.items():
        for n, d in b.items():
            t = tuple(sorted(m + n))
            r[t] = r.get(t, F(0)) + c * d
    return {m: c for m, c in r.items() if c}


def scaled(p, c):
    return {m: a*c for m, a in p.items() if a*c}


def monomial(text, variables):
    return () if text == '1' else tuple(sorted(variables.index(x) for x in text.split(' * ')))


def polynomial(text, variables):
    if text == '0/1':
        return {}
    p = {}
    for term in text.split(' + '):
        bits = term.split(' * ')
        m = tuple(sorted(variables.index(x) for x in bits[1:]))
        assert m not in p and F(bits[0]) != 0
        p[m] = F(bits[0])
    return p


def audit_coordinate_certificate(cert, stage, box, physical, endpoint, area, variables):
    lower, upper = box
    assert len(lower) == len(upper) == len(variables)
    assert all(l <= u for l, u in zip(lower, upper))
    sources = {}
    for source, kind, witness, printed in cert['sources']:
        assert source not in sources
        w = json.loads(witness)
        if kind == 'bound':
            assert set(w) == {'direction', 'ref', 'triangle', 'value'}
            v = endpoint(w)
            assert w['direction'] in ('lo', 'hi') and v == F(w['value'])
            signed_area = area(w['triangle'])
            assert signed_area
            p = add(signed_area, {(): -v}) if w['direction'] == 'lo' else add({(): v}, scaled(signed_area, -1))
        elif kind == 'coordinate':
            assert set(w) == {'variable', 'direction', 'value', 'box'}
            assert w['box'] == stage and w['direction'] in ('lo', 'hi')
            i = variables.index(w['variable'])
            v = lower[i] if w['direction'] == 'lo' else upper[i]
            assert F(w['value']) == v
            p = add({(i,): F(1)}, {(): -v}) if w['direction'] == 'lo' else add({(): v}, {(i,): F(-1)})
        elif kind == 'physical':
            assert set(w) == {'factor'}
            p = physical[str(w['factor'])]
        else:
            raise AssertionError(kind)
        p = {m: c for m, c in p.items() if c}
        assert polynomial(printed, variables) == p, ('source', stage, source)
        sources[source] = p
    total = {}
    products = set()
    for product, weight, factors in cert['products']:
        assert product not in products and int(weight) > 0 and str(int(weight)) == weight
        products.add(product)
        factors = factors.split(', ')
        assert 1 <= len(factors) <= 4
        p = {(): F(int(weight))}
        for source in factors:
            p = mul(p, sources[source])
        total = add(total, p)
    expanded = {}
    for m, coefficient in cert['expanded']:
        m = monomial(m, variables)
        assert m not in expanded and F(coefficient) != 0
        expanded[m] = F(coefficient)
    assert expanded == total, ('expanded', stage)
    shifted = {}
    for m, c in total.items():
        p = {(): c}
        for i in m:
            p = mul(p, add({(): lower[i]}, {(i,): F(1)}))
        shifted = add(shifted, p)
    seen = set()
    ceiling = F(0)
    for m, coefficient, width, contribution in cert['shifted']:
        m = monomial(m, variables)
        assert m not in seen and m in shifted
        seen.add(m)
        c = shifted[m]
        width_product = reduce(lambda a, i: a * (upper[i] - lower[i]), m, F(1))
        term = c if not m else max(F(0), c) * width_product
        assert F(coefficient) == c and F(width) == width_product and F(contribution) == term, ('shifted', stage, m)
        ceiling += term
    assert seen == set(shifted)
    assert cert['terminal'] == [[str(stage), str(ceiling)]] and ceiling < 0, ('ceiling', stage, ceiling)
    return ceiling, {'coordinateSources': len(sources), 'coordinateProducts': len(products),
                     'coordinateMonomials': len(total), 'coordinateShifted': len(shifted),
                     'coordinateTerminals': 1}
