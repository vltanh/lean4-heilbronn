"""Reject corruptions of geometry, sources, ancestry and interval arithmetic."""
from copy import deepcopy
from pathlib import Path

from N6_IRTT_CORE_RADIAL_check import audit_packet, read_packet

ROOT=Path(__file__).with_name('N6_IRTT_CORE_RADIAL_TABLES')
BASE={cut:read_packet(ROOT/(cut+'.md')) for cut in ['AB','BC','CQ']}


def rejected(name, cut, change):
    packet=deepcopy(BASE[cut])
    change(packet)
    try:
        audit_packet(packet)
    except (AssertionError, KeyError, ValueError, IndexError, ZeroDivisionError):
        print('rejected',name)
        return
    raise AssertionError('Accepted corruption: '+name)


def result(packet, stage=0):
    return packet['stages'][stage]['result']


def factor(packet, tag):
    for wrapped in packet['stages']:
        for f in wrapped['result']['refinement']['factors'].values():
            if f['why'][0] == tag:
                return f
    raise AssertionError(tag)


rejected('missing radial premise','AB',lambda p:p['extra'].pop())
rejected('foreign actual point','AB',lambda p:p.__setitem__('labels','ABCEFHPQRS'))
rejected('unproved initial coordinate endpoint','BC',lambda p:result(p)['initialBox']['low'].__setitem__(0,'1/3'))
rejected('wrong actual orientation','AB',lambda p:result(p)['known'].__setitem__('ABC',-1))
rejected('unproved sign deduction','AB',lambda p:result(p)['trace'][0].__setitem__('sign',-result(p)['trace'][0]['sign']))
rejected('wrong occupancy source','AB',lambda p:factor(p,'actual-area')['why'][2].append('Q'))
rejected('wrong normalized barycentric weight','AB',lambda p:factor(p,'core-rs-bary-gap')['why'].__setitem__(2,'1/3'))
rejected('altered physical polynomial','BC',lambda p:next(iter(result(p)['refinement']['factors'].values()))['terms'][0].__setitem__(1,'7/3'))
rejected('missing coordinate line','BC',lambda p:result(p)['refinement']['steps'][0]['lines'].pop())
rejected('coordinate rounded inward','BC',lambda p:result(p)['refinement']['steps'][0]['new'].__setitem__(0,'1/2'))
rejected('wrong scalar bound','AB',lambda p:result(p)['initial'][0].__setitem__('value','1/2'))
rejected('wrong vertex difference','AB',lambda p:next(iter(result(p)['areaVertexDifferences'].values()))['differences'].__setitem__(0,'9/7'))
rejected('wrong scalar identity','AB',lambda p:result(p)['relations'][0]['parts'].__setitem__(0,'ABC'))
rejected('future scalar dependency','AB',lambda p:result(p)['updates'][0]['refs'].__setitem__(0,result(p)['updates'][0]['id']))
rejected('wrong raw scalar arithmetic','AB',lambda p:result(p)['updates'][0].__setitem__('raw','1/2'))
rejected('wrong scalar rounding','AB',lambda p:result(p)['updates'][0].__setitem__('value','1/2'))
rejected('future stage area source','AB',lambda p:factor(p,'earlier-area')['why'][1]['origin'].__setitem__('stage',1))
rejected('foreign radial area source','AB',lambda p:factor(p,'earlier-area')['why'][1]['origin'].__setitem__('packet','CQ'))
rejected('weakened immutable bound misreported','AB',lambda p:factor(p,'earlier-area')['why'][1].__setitem__('value','1/2'))
rejected('inherited box endpoint altered','AB',lambda p:result(p,1)['initialBox']['high'].__setitem__(0,'1/2'))
rejected('missing terminal line','CQ',lambda p:result(p,1)['reason']['interval']['lines'].pop())
print('21 IRTT radial corruption probes rejected')
