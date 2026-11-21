"""Independent rational verification of the initial pentagon support rule."""
from fractions import Fraction as F
import json



def initial_pentagon(geo, known, rel, witness):
    """Prove a pentagon support coefficient from this stage’s initial sources."""
    convex, key, sign = geo.convex, geo.key, geo.sign
    tag, hull, floors, endpoints, gain = witness
    assert tag == 'pentagon_initial' and len(set(hull)) == len(hull) == 5
    assert sign(known, hull[:3]) and convex(known, hull, sign(known, hull[:3]))
    a, b, c, d, e = hull
    ears = [key(t) for t in (a+b+c, b+c+d, c+d+e)]
    x, y, z, opposite = [key(t) for t in (a+b+e, a+d+e, a+b+d, b+d+e)]
    assert len(floors) == 3 and len(endpoints) == 4

    if not hasattr(geo, 'immutable_bounds'):
        geo.immutable_bounds = {}
    cache = geo.immutable_bounds

    def endpoint(triangle, side, row):
        name, direction, value, proof = row
        assert triangle == name and side == direction
        cache_key = triangle, side, json.dumps(proof, separators=(',', ':'))
        if cache_key not in cache:
            cache[cache_key] = geo.initial_value(known, triangle, side, proof, None)
        assert F(value) == cache[cache_key]
        return F(value)

    roots = []
    for tri, row in zip(ears, floors):
        floor = endpoint(tri, 'lo', row[:4])
        root = F(row[4])
        assert 0 <= root and root*root <= floor
        roots.append(root)
    lx, hz, ly, ho = [endpoint(tri, side, row) for (tri, side), row in
                      zip(((x,'lo'), (z,'hi'), (y,'lo'), (opposite,'hi')), endpoints)]
    assert F(gain) == max(0, lx-hz, ly-ho)
    assert rel == ['support', x, y, z, str(sum(roots)**2 + F(gain))]

