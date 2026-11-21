"""Replay the complete normalized N6 IRTT count exclusion from hand tables."""
from collections import Counter
from fractions import Fraction as F
from itertools import product
from pathlib import Path

import N6_IRTT_CORE_RADIAL_check as R
import N6_IRTT_CORE_HA_check as H


def audit():
    # The actual radial line has one side change between H and Q.
    admissible=[]
    for middle in product((-1,1),repeat=3):
        row=(-1,)+middle+(1,)
        if sum(x != y for x,y in zip(row,row[1:])) == 1:
            admissible.append(middle)
    expected=dict(HA=(1,1,1),AB=(-1,1,1),BC=(-1,-1,1),CQ=(-1,-1,-1))
    assert set(admissible) == set(expected.values()) and len(admissible) == 4
    assert 125 < (11+2*R.S)**2
    counts=Counter()
    for cut in ['AB','BC','CQ']:
        packet=R.read_packet(Path(__file__).with_name('N6_IRTT_CORE_RADIAL_TABLES')/(cut+'.md'))
        counts.update(R.audit_packet(packet))
    counts.update(H.audit())
    return dict(counts)


if __name__ == '__main__':
    print('Complete N6 IRTT core author replay:',audit(),flush=True)
