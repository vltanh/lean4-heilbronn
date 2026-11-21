"""Exact geometry and interval rules for finite tables on the six square contacts."""
from fractions import Fraction as F
from functools import cache, partial
from itertools import combinations

from audit_c1_iirtt import audit, box
from audit_c1_iirtt_lifted import (
    SIX_AREAS, SIX_LABELS, SIX_VARIABLES, Sources, V, add, const,
    mul, scale, check_coordinate, check_lift, supplied_polynomial,
)
from audit_c1_iirtt_scalar import ScalarAudit
from c1_contact_geometry_independent import Geometry, S
from c1_pentagon_initial import initial_pentagon
from c1_box_product_sum import EnvelopeSources, check_box_product_sum


class SixContactGeometry(Geometry):
    """Subclasses supply base(), their proved coarse_box(), and the actual hull."""
    labels = SIX_LABELS

    @staticmethod
    @cache
    def canonical(word):
        assert len(word) == len(set(word)) == 3 and set(word) <= set(SIX_LABELS)
        order = [SIX_LABELS.index(t) for t in word]
        parity = (-1) ** sum(a>b for i,a in enumerate(order) for b in order[i+1:])
        return ''.join(sorted(word, key=SIX_LABELS.index)), parity

    @classmethod
    def key(cls, word):
        return cls.canonical(word)[0]

    @classmethod
    def determinant(cls, word):
        name, parity = cls.canonical(word)
        return scale(SIX_AREAS[name], parity)

    @classmethod
    def sign(cls, known, word):
        if len(set(word)) < 3:
            return 0
        name, parity = cls.canonical(word)
        return parity*known.get(name, 0)

    @classmethod
    def put(cls, known, word, orientation):
        name, parity = cls.canonical(word)
        assert orientation in (-1,1) and known.get(name, parity*orientation) == parity*orientation
        known[name] = parity*orientation

    @classmethod
    def inside(cls, known, hull, point):
        side = cls.sign(known, hull[:3])
        return point not in hull and side != 0 and all(cls.sign(known, a+b+point) == side
                    for a,b in zip(hull, hull[1:] + hull[:1]))

    @classmethod
    def convex(cls, known, hull, orientation=1):
        return orientation in (-1,1) and len(set(hull)) == len(hull) and all(
            cls.sign(known, ''.join(t)) == orientation for t in combinations(hull,3))

    def load_stage(self, metadata):
        self.meta = dict(metadata or {})
        self.meta.setdefault('assign', {})
        self.meta.setdefault('meshes', [])
        self.side_bases = {}
        self.box = box(self.meta.get('box', self.coarse_box()))
        assert all(a<=l<=r<=b for (a,b),(l,r) in zip(self.coarse_box(),self.box,strict=True))
        self.biirl = False

    def ears(self):
        assert len(self.outer) == 8 and len(set(self.outer)) == 8
        cycle = self.outer*2
        return [self.key(cycle[i:i+3]) for i in range(8)]

    def cap_value(self, triangle, orientation, witness):
        if witness[0] == 'octagon_ear':
            assert witness == ['octagon_ear', self.outer, triangle] and triangle in self.ears()
            return F(57,100)
        assert witness[0] != 'c1_side_base'
        return super().cap_value(triangle, orientation, witness)

    def extra_sign_rule(self, known, row):
        if row[0] != 'central_line':
            return False
        _, region, line, point, vertex, orient = row
        self.line_rule(known, line, point, region, vertex, orient)
        return True

    def terminal(self, known, row):
        if row[0] == 'central_line':
            _, region, line, point = row
            self.line_rule(known, line, point, region)
        else:
            super().terminal(known, row)

    def relation(self, known, rel, witness):
        tag,*w = witness
        if tag == 'n6_order':
            assert len(w) == 1
            t,u = {'ea':('BCE','ABC'), 'he':('BCH','BCE'),
                   'fb':('AFH','ABH'), 'cf':('ACH','AFH')}[w[0]]
            assert self.sign(known,t) == self.sign(known,u) == 1
            assert rel == ['linear', {self.key(t):1, self.key(u):-1}, '0']
        elif tag == 'central_quad_cap':
            assert w in (['HCE','HEF'],['HCF','CEF'])
            assert all(self.sign(known,t)==1 for t in w)
            assert rel == ['linear',{self.key(t):-1 for t in w},'-1']
        elif tag == 'octagon_ear_sum':
            assert w == [self.outer] and self.convex(known,self.outer)
            assert rel == ['linear',{t:-1 for t in self.ears()},'-1221/1000']
        elif tag == 'other_occupied_ear':
            hull,t,p,u = w
            assert self.outer == hull and self.convex(known,hull)
            assert t in self.ears() and u in self.ears() and t!=u and self.inside(known,t,p)
            assert rel == ['linear',{u:-1},'-249/1000']
        else:
            assert tag not in ('c1_norm', 'c1_central_quad_cap')
            super().relation(known, rel, witness)


class SixContactScalar(ScalarAudit):
    def __init__(self, geometry):
        super().__init__()
        self.geometry = geometry

    def relation(self, geo, known, entry):
        if entry['witness'][0] == 'pentagon_initial':
            initial_pentagon(geo, known, entry['rel'], entry['witness'])
        else:
            super().relation(geo, known, entry)


class SixContactSources(EnvelopeSources):
    """Set flags only for proved cap positions and the stated reflection."""
    def __init__(self, stage, *, right=False, left=False, top_cost=0, e_le_f=False):
        super().__init__(stage, labels=SIX_LABELS)
        self.right, self.left = right, left
        self.top_cost = F(top_cost)
        self.e_le_f = e_le_f

    def contact(self, name):
        return {'e_ge_a':(3,0), 'h_ge_e':(5,3), 'f_ge_b':(4,1), 'c_ge_f':(2,4)}[name]

    def __getitem__(self, name):
        if name in ('order_ea','order_he','order_fb','order_cf','order_fe'):
            if name == 'order_fe':
                assert self.e_le_f
            i,j = {'order_ea':(3,0), 'order_he':(5,3), 'order_fb':(4,1),
                   'order_cf':(2,4), 'order_fe':(4,3)}[name]
            return add(V[i],scale(V[j],-1))
        if name in ('right_cost','left_cost'):
            assert (self.right if name=='right_cost' else self.left)
            i,j = (3,1) if name=='right_cost' else (4,0)
            return add(V[i],scale(mul(V[i],V[j]),-1),const(-4*S))
        if name == 'top_cost':
            assert self.top_cost > 0
            return add(const(1-self.top_cost),scale(V[3],-1),scale(V[4],-1),mul(V[3],V[4]))
        assert not name.startswith(('cap_', 'order_')) and name != 'right_support'
        return super().__getitem__(name)


def audit_six(tables, geometry, sources, *, global_stages=2):
    initial = geometry({})
    def domain(tables):
        assert tables.domain['coordinates'] == SIX_VARIABLES
        assert tables.domain['labels'] == SIX_LABELS and tables.domain['base'] == initial.base()
        assert box(tables.domain['box']) == initial.coarse_box()
        assert {t:supplied_polynomial(p) for t,p in tables.polynomials.items()} == SIX_AREAS
        return initial.coarse_box()
    def weighted(stage, literal):
        method = check_box_product_sum if literal['mode'] == 'unit_cube' else check_lift
        return method(stage, literal, source_factory=sources)
    return audit(tables, SixContactScalar(geometry).stage,
                 partial(check_coordinate, source_factory=sources),
                 weighted, domain,
                 point_domain=initial, global_stages=global_stages)
