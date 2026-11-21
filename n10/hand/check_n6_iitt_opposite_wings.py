"""Check the closed contact rectangles and their paired top-cost bounds."""

from fractions import Fraction as F
from pathlib import Path
from re import findall


def verify():
    data = Path(__file__).with_name('N6_IITT_OPPOSITE_WINGS.md').read_text()
    printed = findall(r'`(r[LH]+)`\s*\|\s*(\d+)\s*\|\s*(\d+)\s*\|\s*(\d+)', data)
    leaves = {name:tuple(map(int,values)) for name,*values in printed}
    assert len(leaves) == len(printed) == 49
    branches = {name[:i] for name in leaves for i in range(1,len(name))}
    assert not branches & leaves.keys()
    s, alpha = F(93,1000), F(1037,10000)
    visited = set()

    def excludes(c, C, h, H, bound):
        d = F(bound,1000)
        span = C-s/(H-alpha)
        assert span>0
        if d*span<3*s:
            return True
        large_area = H-(H-min(d,H))*c
        return (d*span-2*s)*large_area-s*span*(d+h)<0

    def walk(name, c0, c1, h0, h1):
        if name in branches:
            if c1-c0>=h1-h0:
                m = (c0+c1)/2
                walk(name+'L', c0, m, h0, h1)
                walk(name+'H', m, c1, h0, h1)
            else:
                m = (h0+h1)/2
                walk(name+'L', c0, c1, h0, m)
                walk(name+'H', c0, c1, m, h1)
            return
        assert name not in visited and c0<=h1
        visited.add(name)
        h0,c1 = max(h0,c0),min(c1,h1)
        e,f,product = leaves[name]
        assert 0<=e<1000 and 0<=f<1000
        assert excludes(c0,c1,h0,h1,e) and excludes(h0,h1,c0,c1,f)
        assert (1000-e)*(1000-f)==product<279000

    walk('r',4*s,F(1),4*s,F(1))
    assert visited==leaves.keys()
    print('49 closed contact rectangles verified, maximum product',
          max(row[-1] for row in leaves.values()))


if __name__ == '__main__':
    verify()
