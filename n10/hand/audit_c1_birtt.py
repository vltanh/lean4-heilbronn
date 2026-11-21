"""Check every branch and every exact deduction of the one-corner BIRTT proof."""
from fractions import Fraction as F
from itertools import combinations
from pathlib import Path

from audit_c1_iirtt import audit, box
from audit_c1_iirtt_geometry import IIRTT
from audit_c1_iirtt_lifted import check_coordinate, check_lift
from audit_c1_iirtt_scalar import ScalarAudit
from audit_c1_two_central_three_caps import LABELS, VARIABLES, determinant, parse_poly
from c1_contact_geometry_independent import S, put
from c1_iirtt_tables import Tables
from c1_pentagon_initial import initial_pentagon


class BIRTT(IIRTT):
    def __init__(self, metadata=None):
        super().__init__(metadata)
        self.containers = {'Y': 'OHC', 'Z': 'HCDF', 'R': 'DPF'}
        self.quad_containers = ['HCDFZ']

    def coarse_box(self):
        intervals = super().coarse_box()
        c_lo, c_hi = 3*S, F(17, 20)
        min_y = S/c_hi
        intervals[1] = c_lo, c_hi
        intervals[4] = S, c_hi - 2*S
        intervals[5] = min_y, 1 - 2*min_y
        intervals[11] = min_y, intervals[2][1] - S/(1-c_lo)
        return intervals

    def base(self):
        known = {}
        for trio in combinations(self.outer, 3):
            put(known, ''.join(trio), 1)
        for point in self.containers:
            for a, b in zip(self.outer, self.outer[1:] + self.outer[:1]):
                put(known, a+b+point, 1)
            for edge in ('OQ', 'CD', 'QP'):
                put(known, edge+point, 1)
        for edge, sg in (('OH', -1), ('OC', 1), ('HC', -1)):
            put(known, edge+'Y', sg)
        for edge, sg in (('OH', -1), ('OC', 1), ('HC', 1), ('HF', -1),
                         ('CD', 1), ('DF', 1)):
            put(known, edge+'Z', sg)
        for edge in ('DP', 'PF', 'FD'):
            put(known, edge+'R', 1)
        return known



class BIRTTScalar(ScalarAudit):
    geometry = BIRTT

    def relation(self, geo, known, entry):
        if entry['witness'][0] == 'pentagon_initial':
            initial_pentagon(geo, known, entry['rel'], entry['witness'])
        else:
            super().relation(geo, known, entry)


def domain(tables):
    geo = BIRTT()
    assert tables.domain['coordinates'] == VARIABLES
    assert tables.domain['labels'] == LABELS and tables.domain['base'] == geo.base()
    assert box(tables.domain['box']) == geo.coarse_box()
    assert set(tables.polynomials) == {''.join(t) for t in combinations(LABELS,3)}
    for tri, value in tables.polynomials.items():
        assert determinant(tri) == parse_poly(value)
    return geo.coarse_box()


if __name__ == '__main__':
    tables = Tables(Path(__file__).with_name('C1_BIRTT_TABLES'))
    print(audit(tables, BIRTTScalar().stage, check_coordinate, check_lift, domain))
