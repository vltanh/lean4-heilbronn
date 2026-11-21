"""Coordinate bounds from the eight projected ears and the ordered interior line."""
from fractions import Fraction as F

from audit_c1_iirtt_lifted import V, add, const, mul, scale
from n6_contact_tables import SixContactSources
from n6_iirl_domain import S, canonical


class SideSources(SixContactSources):
    def __init__(self, stage, *, lower=False):
        super().__init__(stage, right=True, left=True, e_le_f=True)
        self.lower = lower
        self.actual_signs = stage["signs"]

    def lifted_physical(self, name):
        assert name.startswith(("side_", "birl_cut_")) or name in (
            "order_fe", "right_cost", "left_cost",
        )
        return self[name]

    def __getitem__(self, name):
        if not name.startswith("side_"):
            return super().__getitem__(name)
        def minus(x, y):
            return add(x, scale(y,-1))
        def sign(word):
            canonical_name, orientation = canonical(word)
            return orientation*self.actual_signs.get(canonical_name,0)
        a,b,c,e,f,h,p,q,u,v,r,w,j,k = V
        one = const(1)
        J,L,R,T = (minus(c,b),minus(h,a),minus(e,w),minus(f,j))
        key = name.removeprefix("side_")
        if key in ("lower_cost", "lower_sum", "upper_sum"):
            assert self.lower
            minimum = F(1457, 250) * S
            if key == "lower_cost":
                return minus(mul(h, c), const(minimum))
            cap = max(self.box[2][1], self.box[5][1])
            assert cap > 0
            if key == "lower_sum":
                return minus(const(cap - S / cap), add(p, q))
            return minus(add(u, v), const((minimum + S) / cap))
        if key in ("right_actual", "left_actual", "right_depth", "left_depth"):
            span, tip, base, offset = (e,r,b,w) if key.startswith("right") else (f,k,a,j)
            factor = add(mul(span, minus(tip, base)), const(-4*S))
            return minus(factor, mul(minus(one, tip), offset)) if key.endswith("depth") else factor
        if key in ("radial_r", "radial_k"):
            coordinate, upper, lower = (r,"REF","CRE") if key == "radial_r" else (k,"EFS","FSH")
            assert sign(upper) == sign(lower) == 1
            upper = canonical(upper)[0]
            lower = canonical(lower)[0]
            return add(coordinate, const(-1 + self.bounds[upper][1] - self.bounds[lower][0]))
        if key.startswith("ear"):
            i = int(key[3:])
            assert str(i) == key[3:] and 0 <= i < 8
            factors = ((a,J),(w,J),(minus(one,c),R),(minus(one,f),R),
                       (minus(one,e),T),(minus(one,h),T),(j,L),(b,L))
            return add(mul(*factors[i]),const(-S))
        if key in ("ea","hw","fb","cj"):
            x,y = {"ea":(e,a),"hw":(h,w),"fb":(f,b),"cj":(c,j)}[key]
            return add(minus(x,y),const(-F(21,250)))
        if key in ("lowp","lowq"):
            assert self.lower
            drop = 2*S/(1-F(31,251))
            left,right = (c,p) if key=="lowp" else (h,q)
            return add(minus(left,right),const(-drop))
        if key in ("crossHA", "crossBC", "spanHA", "spanBC"):
            axis = key.endswith("HA")
            i,j,x,y = ("H","A",u,p) if axis else ("B","C",v,q)
            sg = sign(i+"PQ")
            assert sg and sign(j+"PQ") == -sg
            if key.startswith("span"):
                span = self.bounds["AEH" if axis else "BCF"][1]
                lower = sum(self.bounds[canonical(t+"PQ")[0]][0] for t in (i, j))
                assert span > 0
                floor = lower / span
            else:
                floor = F(62,251)
            return add(scale(minus(x,y),sg),const(-floor))
        if key in ("sharpX","sharpY"):
            sg = sign("APQ")
            assert sg and (sign("BPQ"),sign("EPQ"),sign("FPQ")) == (-sg,-sg,sg)
            x,y = (u,p) if key=="sharpX" else (v,q)
            return add(scale(minus(x,y),sg),const(-2*S/(1-F(21,250))))
        raise ValueError(name)
