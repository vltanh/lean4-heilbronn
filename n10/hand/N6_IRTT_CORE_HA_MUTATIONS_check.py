"""Corruption probes for the printed HA cover and positive-product terminal."""
from copy import deepcopy
from unittest.mock import patch

import N6_IRTT_CORE_HA_check as H

TABLES={p.name:H.A.read_packet(p) for p in H.ROOT.glob('*.md')}


def reject(name,filename,change):
    changed=deepcopy(TABLES[filename]);change(changed)
    def read(path):
        return changed if path.name == filename else TABLES[path.name]
    with patch.object(H.A,'read_packet',read):
        try:
            H.audit()
        except (AssertionError,KeyError,ValueError,IndexError,TypeError,ZeroDivisionError):
            print('rejected',name,flush=True)
            return
    raise AssertionError('Accepted corruption: '+name)


def result(packet,stage=0):
    return packet['stages'][stage]['result']


def find_factor(tag,predicate=lambda f:True):
    for file,packet in TABLES.items():
        for stage,wrapped in enumerate(packet.get('stages',[])):
            for number,factor in wrapped['result']['refinement']['factors'].items():
                if factor['why'][0] == tag and predicate(factor):
                    return file,stage,number
    raise AssertionError(tag)


def mutate_factor(tag,change,predicate=lambda f:True):
    file,stage,number=find_factor(tag,predicate)
    return file,lambda packet:change(result(packet,stage)['refinement']['factors'][number])


def find_initial(tag):
    for file,packet in TABLES.items():
        for stage,wrapped in enumerate(packet.get('stages',[])):
            for ii,row in enumerate(wrapped['result'].get('initial',[])):
                if row['source'][0] == tag:return file,stage,ii
    raise AssertionError(tag)


reject('missing coordinate sibling','INDEX.md',lambda p:p['nodes'].pop('rm'))
reject('unproved metric split','INDEX.md',lambda p:p['nodes']['r']['split'].__setitem__('value','0'))
reject('foreign metric coordinate','INDEX.md',lambda p:p['nodes']['r']['split'].__setitem__('variable','p'))
reject('wrong tree depth','INDEX.md',lambda p:p['nodes']['rm'].__setitem__('depth',9))
reject('wrong parent scope','INDEX.md',lambda p:p['nodes']['rm'].__setitem__('parent','rp'))
reject('unproved root box','global.md',lambda p:result(p)['initialBox']['low'].__setitem__(0,'1/3'))
reject('wrong actual sign','r.md',lambda p:result(p)['known'].__setitem__('ABC',-1))
file,change=mutate_factor('actual-area',lambda f:f['why'][2].append('Q'))
reject('wrong actual occupants',file,change)
file,change=mutate_factor('support-envelope',lambda f:f['why'][1][2][0].__setitem__('root','1'),lambda f:f['why'][1][0]=='pentagon-ear-box')
reject('unsupported pentagon square-root floor',file,change)
file,change=mutate_factor('support-envelope',lambda f:next(row for row in f['why'][1][2]if row['side'])['side'].__setitem__(3,'1/10'),lambda f:f['why'][1][0]=='pentagon-ear-box' and any(row['side']for row in f['why'][1][2]))
reject('wrong AH/BC input endpoint',file,change)
file,change=mutate_factor('octagon-ear-root-budget',lambda f:f['why'][2][0].__setitem__('gamma','1'))
reject('wrong cube-root chord',file,change)
file,stage,ii=find_initial('earlier-area')
reject('future scalar ancestor',file,lambda p:result(p,stage)['initial'][ii]['source'][1]['origin'].__setitem__('stage',999))
reject('foreign scalar ancestor',file,lambda p:result(p,stage)['initial'][ii]['source'][1]['origin'].__setitem__('packet','rmmpppppppp'))
reject('immutable scalar endpoint changed',file,lambda p:result(p,stage)['initial'][ii]['source'][1].__setitem__('value','1/2'))

TERMINAL='rpppppmmmp.md'
def cert(packet):return packet['coordinateCertificate']
reject('negative product coefficient',TERMINAL,lambda p:cert(p)['products'][0].__setitem__('weight','-1'))
reject('missing product source',TERMINAL,lambda p:cert(p)['sources'].pop(str(cert(p)['products'][0]['factors'][0])))
reject('wrong current scalar endpoint',TERMINAL,lambda p:next(s for s in cert(p)['sources'].values()if s['origin']['kind']=='bound')['origin'].__setitem__('value','1/2'))
reject('wrong physical source index',TERMINAL,lambda p:next(s for s in cert(p)['sources'].values()if s['origin']['kind']=='physical')['origin'].__setitem__('factorIndex',999999))
reject('wrong coordinate source endpoint',TERMINAL,lambda p:next(s for s in cert(p)['sources'].values()if s['origin']['kind']=='coordinate')['origin'].__setitem__('value','1/2'))
reject('wrong expanded product',TERMINAL,lambda p:cert(p)['sum'][0].__setitem__(1,'1/2'))
reject('wrong shifted product',TERMINAL,lambda p:cert(p)['shifted'][0].__setitem__(1,'1/2'))
reject('wrong terminal upper ceiling',TERMINAL,lambda p:cert(p).__setitem__('upper','1/2'))
print('22 HA cover/source/product corruptions rejected',flush=True)
