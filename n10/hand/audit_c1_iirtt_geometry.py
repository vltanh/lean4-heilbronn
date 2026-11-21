"""Independent IIRTT geometry domain and source semantics.

This module imports the published generic Fraction geometry rules, not the
IIRTT discovery engine. The domain is proved in C1_IIRTT_SETUP.md. Conditional
boxes and their ancestry must be established by the calling manuscript reader.
"""
from fractions import Fraction as F
from itertools import combinations

from c1_contact_geometry_independent import Geometry, S, put, sign
from audit_c1_two_central_three_caps import LABELS, VARIABLES


class IIRTT(Geometry):
    """O,C,Q,D,P,F,H outer; Y,Z central; R strictly inside DPF."""

    def __init__(self, metadata=None):
        self.outer = 'OCQDPFH'
        self.containers = {'Y': 'HCDF', 'Z': 'HCDF', 'R': 'DPF'}
        self.quad_containers = ['HCDFYZ']
        self.side_bases = {}
        self.biirl = False
        self.cap = 'IIRTT'
        self.fan = None
        self.meta = dict(metadata or {})
        for field, expected in [('labels', LABELS), ('vars', VARIABLES),
                                ('outer', self.outer), ('domain', 'IIRTT')]:
            if field in self.meta:
                assert self.meta[field] == expected, (field, self.meta[field])
        self.meta.setdefault('assign', {})
        self.meta.setdefault('meshes', [])
        coarse = self.coarse_box()
        self.box = [tuple(map(F, b)) for b in self.meta.get('box', coarse)]
        assert len(self.box) == 14
        assert all(a <= x <= y <= b for (a, b), (x, y) in zip(coarse, self.box))

    def coarse_box(self):
        ceiling = 1-S
        dlow, dupper = 4*S, 1-3*S/ceiling
        flower, fupper = S, 1-3*S/(1-dlow)
        clower, cupper = F(1, 10), F(17, 20)
        ell = S/cupper
        px = S+S/(1-dlow)
        py = dlow+S/ceiling
        lam = F(31, 154)
        heavy = 1-2*lam
        return [(dlow, F(1)), (clower, cupper), (dlow, dupper),
                (flower, fupper), (S, ceiling), (ell, ceiling),
                (S, ceiling), (ell, ceiling), (px, F(1)), (py, F(1)),
                (F(7, 10), F(1)), (ell, dupper-S/(1-clower)),
                (lam*(1+px)+heavy*S, lam*fupper+1-lam),
                (lam*(py+1)+heavy*dlow, lam*dupper+1-lam)]

    def base(self):
        known = {}
        for triple in combinations(self.outer, 3):
            put(known, ''.join(triple), 1)
        for point in self.containers:
            for a, b in zip(self.outer, self.outer[1:]+self.outer[:1]):
                put(known, a+b+point, 1)
        for point in 'YZ':
            for edge, sg in [('OH', -1), ('OC', 1), ('HC', 1),
                             ('HF', -1), ('CD', 1), ('DF', 1)]:
                put(known, edge+point, sg)
        put(known, 'OYZ', 1)
        for a, b in zip('DPF', 'PFD'):
            put(known, a+b+'R', sign(known, 'DPF'))
        # The occupied last turn leaves the other three chain turns empty.
        # Their two hull-edge tests are inward, forcing the chord test outward.
        for point in self.containers:
            for edge in ('OQ', 'CD', 'QP'):
                put(known, edge+point, 1)
        return known

    def cap_value(self, triangle, orientation, witness):
        if witness[0] == 'monotone_chain':
            assert witness == ['monotone_chain', triangle]
            assert orientation in (-1, 1)
            caps = {'DFP': F(462, 1000), 'DPQ': F(212, 1000),
                    'CDQ': F(257, 1000), 'OCQ': F(205, 1000),
                    'DPR': F(276, 1000), 'FPR': F(276, 1000),
                    'DFR': F(276, 1000), 'HDF': 1-4*S}
            return caps[triangle]
        return super().cap_value(triangle, orientation, witness)

    def derive_signs(self, steps):
        normalized = []
        for row in steps:
            if row[0] == 'central_line':
                _, region, base, point, vertex, sg = row
                normalized.append(['interior_line', base, point, region, vertex, sg])
            else:
                normalized.append(row)
        return super().derive_signs(normalized)

    def terminal(self, known, row):
        if row[0] == 'central_line':
            _, region, base, point = row
            row = ['interior_line', base, point, region]
        return super().terminal(known, row)


# Descriptive alias for callers that prefer the generic name.
IIRTTGeometry = IIRTT
