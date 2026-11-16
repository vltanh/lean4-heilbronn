"""Exact conditional bounds from multiaffine nonnegative polynomials.

This module is a discovery helper and an exact trace replay, not a premise
for a manuscript.  Print the selected factors, endpoint lines, and steps
when a resulting box is used in a written proof.

For F(x,y)>=0 on a box, with F multiaffine, fixing x expresses F as a
convex combination of its endpoint lines A_v*x+B_v.  Thus at least one
endpoint line is nonnegative.  Intersect each of those half-lines with
the old x interval and take the hull of the nonempty intersections.
This is a necessary bound for x, with no coordinate subdivision.
"""
from fractions import Fraction as F
from itertools import product
from math import prod


def _fraction(x):
    if isinstance(x, float):
        raise TypeError('All proof inputs must be exact, not floats')
    return F(x)


def _prepare(factors, n, max_vertices):
    prepared = []
    skipped = []
    for name, poly in factors.items():
        cleaned = {tuple(ex): _fraction(co) for ex, co in poly.items() if co}
        if any(len(ex) != n or any(power not in (0, 1) for power in ex)
               for ex in cleaned):
            skipped.append(name)
            continue
        support = tuple(i for i in range(n) if any(ex[i] for ex in cleaned))
        if support and 2 ** (len(support) - 1) > max_vertices:
            skipped.append(name)
            continue
        # Store only indices actually occurring in each monomial.
        terms = tuple((tuple(i for i in support if ex[i]), co)
                      for ex, co in cleaned.items())
        prepared.append((name, terms, support))
    return prepared, skipped


def endpoint_lines(terms, support, target, low, high):
    """Distinct exact (slope, intercept) pairs at all other endpoints."""
    others = tuple(i for i in support if i != target)
    choices = [(low[i],) if low[i] == high[i] else (low[i], high[i])
               for i in others]
    result = set()
    for vertex in product(*choices):
        values = dict(zip(others, vertex))
        slope = intercept = F(0)
        for indices, coefficient in terms:
            value = coefficient * prod(values[i] for i in indices if i != target)
            if target in indices:
                slope += value
            else:
                intercept += value
        result.add((slope, intercept))
    return sorted(result)


def interval_hull(lines, lo, hi):
    """Hull of {x in [lo,hi]: some a*x+b>=0}, or None if empty."""
    intervals = []
    for slope, intercept in lines:
        left, right = lo, hi
        if slope > 0:
            left = max(left, -intercept / slope)
        elif slope < 0:
            right = min(right, -intercept / slope)
        elif intercept < 0:
            continue
        if left <= right:
            intervals.append((left, right))
    if not intervals:
        return None
    return min(left for left, _ in intervals), max(right for _, right in intervals)


def _round_lower(value, scale):
    return F(value.numerator * scale // value.denominator, scale)


def _round_upper(value, scale):
    return -_round_lower(-value, scale)


def refine_box(factors, low, high, *, rounds=6, max_steps=1000,
               max_vertices=256, scale=10**6, min_gain=F(1, 10**6)):
    """Return exact low/high, JSON-safe trace, and an optional contradiction.

    factors maps names to exponent-tuple -> Fraction dictionaries in the
    physical coordinates.  Non-multiaffine factors and overly large
    endpoint sets are skipped and reported explicitly.  scale sets an
    outward rational grid; use None to retain exact derived endpoints.
    Every trace step includes the full distinct endpoint-line list.
    """
    low, high = list(map(_fraction, low)), list(map(_fraction, high))
    assert len(low) == len(high) and all(a <= b for a, b in zip(low, high))
    min_gain = _fraction(min_gain)
    assert min_gain >= 0 and (scale is None or isinstance(scale, int) and scale > 0)
    prepared, skipped = _prepare(factors, len(low), max_vertices)
    trace = []
    contradiction = None
    stopped = False
    passes = 0
    for passes in range(1, rounds + 1):
        changed = False
        for name, terms, support in prepared:
            if not support:
                value = sum(co for _, co in terms)
                if value < 0:
                    contradiction = {'kind': 'negative-constant', 'factor': name,
                                     'value': str(value)}
                    stopped = True
                    break
                continue
            for target in support:
                lines = endpoint_lines(terms, support, target, low, high)
                hull = interval_hull(lines, low[target], high[target])
                witness = {'factor': name, 'target': target,
                           'old': [str(low[target]), str(high[target])],
                           'lines': [[str(a), str(b)] for a, b in lines]}
                if hull is None:
                    contradiction = {'kind': 'empty-endpoint-union', **witness}
                    stopped = True
                    break
                lo, hi = hull
                if scale is not None:
                    lo = max(low[target], _round_lower(lo, scale))
                    hi = min(high[target], _round_upper(hi, scale))
                if lo - low[target] < min_gain:
                    lo = low[target]
                if high[target] - hi < min_gain:
                    hi = high[target]
                if (lo, hi) == (low[target], high[target]):
                    continue
                assert low[target] <= lo <= hi <= high[target]
                witness['raw'] = list(map(str, hull))
                witness['new'] = [str(lo), str(hi)]
                trace.append(witness)
                low[target], high[target] = lo, hi
                changed = True
                if len(trace) >= max_steps:
                    stopped = True
                    break
            if stopped:
                break
        if stopped or not changed:
            break
    return {'low': low, 'high': high, 'trace': trace,
            'contradiction': contradiction, 'rounds': passes,
            'skipped': skipped, 'complete_passes': not stopped}


def replay_trace(factors, low, high, trace, contradiction=None):
    """Reconstruct every endpoint line afresh and check all printed bounds."""
    low, high = list(map(_fraction, low)), list(map(_fraction, high))
    prepared, _ = _prepare(factors, len(low), 2 ** len(low))
    catalogue = {name: (terms, support) for name, terms, support in prepared}
    for step in trace:
        terms, support = catalogue[step['factor']]
        target = step['target']
        assert target in support
        assert list(map(F, step['old'])) == [low[target], high[target]]
        lines = endpoint_lines(terms, support, target, low, high)
        assert lines == [tuple(map(F, pair)) for pair in step['lines']]
        hull = interval_hull(lines, low[target], high[target])
        assert hull is not None and tuple(map(F, step['raw'])) == hull
        lo, hi = map(F, step['new'])
        assert low[target] <= lo <= hull[0] <= hull[1] <= hi <= high[target]
        assert (lo, hi) != (low[target], high[target])
        low[target], high[target] = lo, hi
    if contradiction:
        terms, support = catalogue[contradiction['factor']]
        if contradiction['kind'] == 'negative-constant':
            assert not support
            value = sum(co for _, co in terms)
            assert value == F(contradiction['value']) < 0
        else:
            assert contradiction['kind'] == 'empty-endpoint-union'
            target = contradiction['target']
            assert list(map(F, contradiction['old'])) == [low[target], high[target]]
            lines = endpoint_lines(terms, support, target, low, high)
            assert lines == [tuple(map(F, pair)) for pair in contradiction['lines']]
            assert interval_hull(lines, low[target], high[target]) is None
    return low, high
