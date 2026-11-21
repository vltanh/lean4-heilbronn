"""Independent rejected corruptions of shared N7 CE/EF written proofs."""
from copy import deepcopy
from pathlib import Path
from fractions import Fraction as F
import sys
from audit_n7_upper_shared import read,expand
from n7_upper_shared_independent import audit

IS_C=len(sys.argv)>1 and sys.argv[1]=='C'
if IS_C:
    from audit_n7_c_shared import read,expand
    ROOT=Path(sys.argv[2]) if len(sys.argv)>2 else Path(__file__).with_name('N7_CENTRAL_COMPLETION_C_TABLES')
else:
    ROOT=Path(sys.argv[1]) if len(sys.argv)>1 else Path(__file__).with_name('N7_CENTRAL_COMPLETION_CB_UPPER_TABLES')
data,stages=read(ROOT)
packets=expand(data,stages)
rejected=[]


def reject(name,action):
    try:action()
    except (AssertionError,KeyError,ValueError,IndexError,TypeError):
        rejected.append(name);print('REJECTED',name,flush=True)
    else:raise AssertionError('Corruption accepted: '+name)


def storage(name,change):
    d=deepcopy(data);s=deepcopy(stages);change(d,s)
    reject(name,lambda:expand(d,s))


def nonempty_leaf(d):return next(leaf for leaf in d['leaves'] if leaf['stages'])


storage('omitted binary leaf',lambda d,s:d['leaves'].pop())
storage('duplicate leaf',lambda d,s:d['leaves'].append(deepcopy(d['leaves'][0])))
storage('wrong pair word',lambda d,s:d['leaves'][0].__setitem__('word','EF' if d['leaves'][0]['word']=='CE' else 'CE'))
storage('changed complete leaf path',lambda d,s:d['leaves'][0]['given'].append('GOP+'))
storage('missing binary child',lambda d,s:next(iter(d['splits'].values()))['children'].__setitem__(0,'missing'))
storage('reversed signed children',lambda d,s:next(iter(d['splits'].values()))['children'].reverse())
storage('unreachable stage',lambda d,s:s.__setitem__('unreachable',deepcopy(next(iter(s.values())))))
storage('missing ancestor stage',lambda d,s:s.pop(nonempty_leaf(d)['stages'][0]))
storage('wrong local stage index',lambda d,s:s[nonempty_leaf(d)['stages'][0]].__setitem__('id',100000))
storage('unproved stage assumption',lambda d,s:s[nonempty_leaf(d)['stages'][0]].__setitem__('assumptions',['GOP+']))
if IS_C:
    storage('omitted coarse root',lambda d,s:d['roots'].pop())
    storage('duplicated coarse root',lambda d,s:d['roots'].__setitem__(1,deepcopy(d['roots'][0])))
    storage('unproved forbidden root',lambda d,s:d['roots'][0].__setitem__('given',['AGO+','AGP+','DGP+']))
else:
    def foreign_word_stage(d,s):
        first=d['leaves'][0]
        other=next(leaf for leaf in d['leaves'] if leaf['word']!=first['word'])
        other['stages'][0]=first['stages'][0]
    storage('shared stage from foreign pair word',foreign_word_stage)


def math_probe(name,predicate,change):
    original=next(packet for packet in packets if predicate(packet))
    # The unmodified complete ancestor chain must pass before corruption.
    audit([original],verbose=False,complete=False)
    altered=deepcopy(original);change(altered)
    reject(name,lambda:audit([altered],verbose=False,complete=False))


def rows(packet,kind):
    for stage in packet['stages']:
        if kind in ('initial','relations','physical'):
            for row in stage[kind].values():yield stage,row
        else:
            for row in stage.get(kind,[]):yield stage,row


math_probe('changed geometric sign',lambda p:any(rows(p,'trace')),
           lambda p:next(rows(p,'trace'))[1].__setitem__('sign',-next(rows(p,'trace'))[1]['sign']))
math_probe('changed actual area endpoint',lambda p:bool(p['stages'][0]['initial']),
           lambda p:next(rows(p,'initial'))[1].__setitem__('value','999'))
math_probe('changed scalar update',lambda p:any(rows(p,'updates')),
           lambda p:next(rows(p,'updates'))[1].__setitem__('value','999'))


def weak_rows(packet):
    return [(stage,row['witness']['outer_upper']) for stage,row in rows(packet,'relations')
            if 'source_value' in row['witness'].get('outer_upper',{})]


if any(weak_rows(packet) for packet in packets):
    math_probe('changed immutable weakening source',lambda p:bool(weak_rows(p)),
               lambda p:weak_rows(p)[0][1].__setitem__('source_value','999'))
    math_probe('strengthening disguised as weakening',lambda p:bool(weak_rows(p)),
               lambda p:weak_rows(p)[0][1].__setitem__('value',str(F(weak_rows(p)[0][1]['source_value'])/2)))


def future_capacity(packet):
    return [(stage,row) for stage,row in rows(packet,'trace') if row.get('area_stage') is not None]


math_probe('future capacity endpoint',lambda p:bool(future_capacity(p)),
           lambda p:future_capacity(p)[0][1].__setitem__('area_stage',future_capacity(p)[0][0]['id']+1))
math_probe('changed physical coefficient',lambda p:any(rows(p,'physical')),
           lambda p:next(rows(p,'physical'))[1]['terms'][0].__setitem__(1,'999'))


def coordinates(packet):
    return [(stage,row) for stage in packet['stages'] for row in stage.get('coordinate',{}).get('steps',[])]


math_probe('omitted coordinate endpoint line',lambda p:bool(coordinates(p)),
           lambda p:coordinates(p)[0][1]['lines'].pop())
math_probe('changed outward coordinate endpoint',lambda p:bool(coordinates(p)),
           lambda p:coordinates(p)[0][1]['new'].__setitem__(0,'999'))
math_probe('negative polynomial weight',lambda p:p['terminal']['kind']=='polynomial',
           lambda p:p['terminal']['sum']['factors'][0].__setitem__('weight',-1))
math_probe('unproved polynomial primitive',lambda p:p['terminal']['kind']=='polynomial',
           lambda p:p['terminal']['sum']['factors'][0]['atoms'].__setitem__(0,'unproved'))
math_probe('changed expanded coefficient',lambda p:p['terminal']['kind']=='polynomial',
           lambda p:p['terminal']['sum']['sum'].__setitem__('',str(F(p['terminal']['sum']['sum'].get('','0'))+1)))
math_probe('changed exact negative ceiling',lambda p:p['terminal']['kind']=='polynomial',
           lambda p:p['terminal']['sum'].__setitem__('upper','-999'))
if IS_C:
    def nomesh(p):return p['terminal']['kind']=='geometry' and p['terminal']['geometry']['contradiction']['kind']=='nomesh'
    math_probe('omitted actual mesh order',nomesh,
               lambda p:p['terminal']['geometry']['mesh_table'].pop())
    math_probe('unproved mesh obstruction',nomesh,
               lambda p:p['terminal']['geometry']['mesh_table'][0].__setitem__('opposite',p['terminal']['geometry']['contradiction']['outer']))
    math_probe('capacity terminal missing occupant',lambda p:p['terminal']['kind']=='geometry' and p['terminal']['geometry']['contradiction']['kind']=='capacity',
               lambda p:p['terminal']['geometry']['contradiction']['occupants'].pop())
    def quad_rows(p):return [(stage,row) for stage,row in rows(p,'trace') if row['rule'][0]=='quad-cap']
    math_probe('quadrilateral capacity missing occupant',lambda p:bool(quad_rows(p)),
               lambda p:quad_rows(p)[0][1]['rule'][2].pop())
print('Rejected',len(rejected),'independent shared-proof corruptions.',flush=True)
