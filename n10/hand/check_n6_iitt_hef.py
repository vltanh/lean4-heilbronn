"""Replay each printed convex-IITT bound on the actual triangle HEF."""

from fractions import Fraction as F
from math import ceil
from pathlib import Path
from re import findall


def verify():
    path = Path(__file__).with_name('N6_IITT_CONVEX_HEF.md')
    records = findall(r'`(r[LH]+)`\s*\|\s*(\d+|—)', path.read_text())
    leaves = dict(records)
    assert len(leaves) == len(records) == 144
    branches = {name[:i] for name in leaves for i in range(1,len(name))}
    assert not branches & leaves.keys()
    s = F(93,1000)
    minimum, maximum = F(1037,10000), F(117,200)
    visited = set()

    def walk(name, e0, e1, f0, f1):
        if name in branches:
            if 4*(e1-e0) >= f1-f0:
                mid = (e0+e1)/2
                walk(name+'L', e0, mid, f0, f1)
                walk(name+'H', mid, e1, f0, f1)
            else:
                mid = (f0+f1)/2
                walk(name+'L', e0, e1, f0, mid)
                walk(name+'H', e0, e1, mid, f1)
            return

        assert name not in visited
        visited.add(name)
        bound = leaves[name]
        bottom = max(e0,f0)
        upper_e = min(e1,f1,1-4*s/(1-bottom))
        upper_f = min(f1,1-4*s/(1-e0))
        if bottom>f1 or upper_e<e0 or upper_f<bottom:
            assert bound == '—'
            return
        assert bound != '—'
        large_u, large_v = 1-e0, 1-bottom
        depth = F(3,5)*(large_u*large_v-4*s)/large_u
        span = large_u-s/large_v
        assert depth>=0 and span>0
        upper_c = 1-max(0,s-upper_e*depth)/span
        beta = min(upper_f,upper_c-s/upper_e,upper_c/2)
        assert 0<beta<upper_c
        lower_h = max(e0,s/(upper_c-beta)+s/beta)
        area = (1-upper_f)*(1-lower_h)+upper_f*(1-e0)
        assert ceil(10**6*area)==int(bound)<694000

    walk('r',minimum,maximum,minimum,maximum)
    assert visited==leaves.keys()
    print('144 closed contact rectangles verified, maximum scaled ceiling',
          max(int(b) for b in leaves.values() if b!='—'))


if __name__ == '__main__':
    verify()
