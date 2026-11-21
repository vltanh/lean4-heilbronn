"""The contact boxes, actual signs and physical inequalities of the six-contact count rows."""
from dataclasses import dataclass
from fractions import Fraction as F
from functools import partial
from itertools import combinations
from pathlib import Path

from audit_c1_iirtt_lifted import V, add, const, mul, scale
from c1_contact_geometry_independent import S
from c1_iirtt_tables import Tables
from n6_contact_tables import SixContactGeometry, SixContactSources, audit_six

ALPHA = F(1037, 10000)
LOWER_COST = F(1457,250)*S


@dataclass(frozen=True)
class Region:
    lower: str
    middle: str
    right: str
    top: str
    pair: str = ''

    @property
    def hull(self):
        return 'ABC' + self.right + 'E' + (self.top[:1] if self.pair == 'tri' else self.top) + 'FH'

    @property
    def top_cost(self):
        return (3 if self.pair == 'tri' else 4 if self.pair == 'quad' else len(self.top))*S


ROWS = {
    'iirt': Region('', 'PQ', 'R', 'S'),
    'birt': Region('P', 'Q', 'R', 'S'),
    'biit': Region('P', 'QR', '', 'S'),
    'biir': Region('P', 'QR', 'S', ''),
    **{row+'-'+pair: Region('P' if row=='bitt' else '', 'Q' if row=='bitt' else 'PQ', '', 'RS', pair)
       for row in ('bitt','iitt') for pair in ('tri','quad')},
}


class RegionGeometry(SixContactGeometry):
    def __init__(self, row, metadata=None):
        self.row = row
        self.reg = reg = ROWS[row]
        self.outer = reg.hull
        self.containers = {**dict.fromkeys(reg.lower, 'HABC'), **dict.fromkeys(reg.middle, 'HCEF')}
        if reg.pair == 'tri':
            self.containers['S'] = 'ERF'
        self.quad_containers = ['HCEF' + reg.middle]
        self.load_stage(metadata)

    def coarse_box(self):
        reg = self.reg
        f0 = ALPHA
        e0 = 4*S/(1-ALPHA) if reg.right else ALPHA
        e1 = min(1-S, 1-reg.top_cost/(1-f0))
        f1 = min(1-S, 1-reg.top_cost/(1-e0))
        c0, h0 = max(4*S, f0), max(4*S, e0)
        c1 = 1-S/e1 if reg.right else F(1)
        h1 = F(1)
        delta = S/(1-ALPHA)
        a1, b1 = min(e1, h1-delta), min(f1, c1-delta)
        a0, b0 = max(ALPHA,S/(c1-ALPHA)), max(ALPHA,S/(h1-ALPHA))
        x0, y0 = S/(h1-a0), S/(c1-b0)
        result = [(a0,a1),(b0,b1),(c0,c1),(e0,e1),(f0,f1),(h0,h1)]
        for p in 'PQRS':
            if p in reg.lower:
                result.extend([(x0,c1),(y0,h1)])
            elif p in reg.middle:
                result.extend([(x0,1-S),(y0,1-S)])
            elif p in reg.right:
                result.extend([(max(x0,c0+S/e1),1),(y0,e1-S/(1-c0))])
            else:
                assert p in reg.top
                cost = 3*S if reg.pair=='tri' and p=='R' else S
                result.extend([(max(x0,f0+cost/(1-e0)),1),(max(y0,e0+cost/(1-f0)),1)])
        return result

    def base(self):
        reg = self.reg
        known = {}
        for tri in combinations(self.outer,3):
            self.put(known,''.join(tri),1)
        for point,container in self.containers.items():
            for hull in (self.outer,container):
                for a,b in zip(hull,hull[1:]+hull[:1]):
                    self.put(known,a+b+point,1)
        for point in 'PQRS':
            for edge, exterior in [('AB',False),('BC',False),('FH',False),('CE',point in reg.right),
                                   ('EF',point in reg.top),('HC',point in reg.lower)]:
                self.put(known,edge+point,-1 if exterior else 1)
        if len(reg.middle)==2:
            self.put(known,'A'+reg.middle,1)
        if reg.pair:
            self.put(known,'ERS',1)
            self.put(known,'FRS',1 if reg.pair=='quad' else -1)
        if self.row.startswith('bitt-'):
            self.put(known,'ACP',1)
            self.put(known,'HBP',1)
        return known

    def terminal(self,known,row):
        if row[0] != 'two_top_projection':
            return super().terminal(known,row)
        _, reflected, first, second = row
        assert self.row == 'iitt-quad'
        assert sorted([first,second]) == ['P','Q'] and type(reflected) is bool
        physical = dict(zip('ABCEFHPQRS',
                            ('BAHFEC' if reflected else 'ABCEFH') +
                            first+second+('SR' if reflected else 'RS')))
        for name,sg in (('ERS',1),('FRS',1),('CSQ',1),('EAQ',-1),
                        ('RHP',1),('FBP',1),('CPQ',-1),('EPQ',1),
                        ('FPQ',1),('HPQ',-1)):
            assert self.sign(known,''.join(physical[t] for t in name)) == (-sg if reflected else sg)
        qx = 6+2*'PQRS'.index(second)+int(reflected)
        py = 6+2*'PQRS'.index(first)+int(not reflected)
        assert self.box[qx][1] <= self.box[5 if reflected else 2][0]
        assert self.box[py][1] <= self.box[2 if reflected else 5][0]


def diff(i,j):
    return add(V[i],scale(V[j],-1))


class RegionSources(SixContactSources):
    def __init__(self, stage, row):
        self.reg = reg = ROWS[row]
        super().__init__(stage, right=bool(reg.right), top_cost=reg.top_cost,
                         e_le_f=not reg.right)

    def additional(self):
        reg = self.reg
        keys = ['order_ea','order_he','order_fb','order_cf']
        if not reg.right:
            keys.append('order_fe')
        if reg.right:
            keys += ['right_cost','right_actual']
        if reg.lower:
            keys += ['lower_cost','lower_sum']
        if reg.top:
            keys += ['top_cost','top_actual']
        return keys

    def lifted_physical(self,name):
        assert name in self.additional()
        return self[name]

    def __getitem__(self,name):
        reg = self.reg
        if name == 'lower_cost':
            assert reg.lower == 'P'
            return add(mul(V[5],V[2]),const(-LOWER_COST))
        if name == 'lower_sum':
            assert reg.lower == 'P'
            return add(const(1-S),scale(V[6],-1),scale(V[7],-1))
        if name == 'right_actual':
            assert len(reg.right) == 1
            index = 6+2*'PQRS'.index(reg.right)
            return add(mul(V[3],diff(index,1)),const(-4*S))
        if name == 'top_actual':
            assert reg.top
            left = 6+2*'PQRS'.index(reg.top[0])
            upper = 7+2*'PQRS'.index(reg.top[-1] if reg.pair=='quad' else reg.top[0])
            return add(mul(diff(left,4),diff(upper,3)),const(-reg.top_cost))
        return super().__getitem__(name)


def audit_row(row,folder):
    return audit_six(Tables(Path(folder)),partial(RegionGeometry,row),
                     partial(RegionSources,row=row))
