"""Independent negative probes of a complete BRTT top-pair literal proof.

Every accepted source chain is checked before these deliberate corruptions.
The full source chains and binary coverage are checked before corruption.
"""
from copy import deepcopy
from fractions import Fraction as F
from pathlib import Path
import json
import runpy
import sys

mode = sys.argv[1] if len(sys.argv)>1 else '--brtt-convex'
assert mode in ('--brtt-triangular','--brtt-convex')
sys.argv = [str(Path(__file__).with_name('audit_n6_bttt_remaining.py')), mode]
g = runpy.run_path(sys.argv[0])
from n6_coordinate_products_independent import audit_coordinate_certificate

original, stage, box, physical, known, scope = g['coordinate_samples'][0]


def endpoint(w):
    bound = g['allbounds'][w['ref']]
    assert bound[:3] == (w['triangle'], w['direction'], F(w['value']))
    assert bound[3] <= stage and (scope == bound[4] or scope.startswith(bound[4] + '/'))
    return bound[2]


def area(w):
    return g['scale'](g['det'](w), g['sign'](known, w))


def change_witness(c, kind, change):
    row = next(r for r in c['sources'] if r[1] == kind)
    w = json.loads(row[2])
    change(w)
    row[2] = json.dumps(w)


rejected = []


def probe(name, change):
    c = deepcopy(original)
    change(c)
    try:
        audit_coordinate_certificate(c, stage, box, physical, endpoint, area, g['V'])
    except (AssertionError, KeyError, ValueError, IndexError):
        rejected.append(name)
        return
    raise AssertionError('Corruption accepted: ' + name)


probe('zero product weight', lambda c: c['products'][0].__setitem__(1, '0'))
probe('negative product weight', lambda c: c['products'][0].__setitem__(1, '-1'))
probe('changed repeated source', lambda c: c['products'][0].__setitem__(2, c['sources'][1][0] + ', ' + c['sources'][1][0]))
probe('omitted source', lambda c: c['sources'].pop(0))
probe('changed source polynomial', lambda c: c['sources'][0].__setitem__(3, c['sources'][0][3] + ' + 1/1000'))
probe('changed area premise', lambda c: change_witness(c, 'bound', lambda w: w.__setitem__('value', str(F(w['value']) + 1))))


def wrong_ancestor(c, future):
    w = json.loads(next(r for r in c['sources'] if r[1] == 'bound')[2])
    ref, br = next((ref, br) for ref, br in g['allbounds'].items()
                   if br[:2] == (w['triangle'], w['direction']) and
                   (br[3] > stage if future else br[3] < stage and not (scope == br[4] or scope.startswith(br[4] + '/'))))
    change_witness(c, 'bound', lambda w: w.update(ref=ref, value=str(br[2])))


probe('future area premise', lambda c: wrong_ancestor(c, True))
# The second sample is later; only a verified non-ancestor is injected.
# Use its certificate and inject a same-triangle first-leaf bound to exercise
# sibling rejection independently of the future-stage guard.
second, second_stage, second_box, second_physical, second_known, second_scope = g['coordinate_samples'][1]


def check_sibling():
    c = deepcopy(second)
    row = next(r for r in c['sources'] if r[1] == 'bound')
    w = json.loads(row[2])
    ref, br = next((ref, br) for ref, br in g['allbounds'].items()
                   if br[:2] == (w['triangle'], w['direction']) and br[3] < second_stage
                   and not (second_scope == br[4] or second_scope.startswith(br[4] + '/')))
    w.update(ref=ref, value=str(br[2]))
    row[2] = json.dumps(w)
    def ep(w):
        b = g['allbounds'][w['ref']]
        assert b[:3] == (w['triangle'], w['direction'], F(w['value']))
        assert b[3] <= second_stage and (second_scope == b[4] or second_scope.startswith(b[4] + '/'))
        return b[2]
    try:
        audit_coordinate_certificate(c, second_stage, second_box, second_physical, ep,
                                     lambda w: g['scale'](g['det'](w), g['sign'](second_known, w)), g['V'])
    except AssertionError:
        rejected.append('sibling area premise')
        return
    raise AssertionError('Sibling premise accepted')


check_sibling()
probe('wrong completed box', lambda c: change_witness(c, 'coordinate', lambda w: w.__setitem__('box', stage - 1)))
probe('wrong coordinate endpoint', lambda c: change_witness(c, 'coordinate', lambda w: w.__setitem__('value', str(F(w['value']) + 1))))
probe('nonexistent physical premise', lambda c: change_witness(c, 'physical', lambda w: w.__setitem__('factor', 1000000)))
probe('changed expansion coefficient', lambda c: c['expanded'][0].__setitem__(1, str(F(c['expanded'][0][1]) + 1)))
probe('omitted shifted monomial', lambda c: c['shifted'].pop(0))
probe('wrong width multiplicity', lambda c: c['shifted'][0].__setitem__(2, str(F(c['shifted'][0][2]) + 1)))
probe('changed signed contribution', lambda c: next(r for r in c['shifted'] if r[0] == '1').__setitem__(3, '0'))
probe('changed terminal ceiling', lambda c: c['terminal'][0].__setitem__(1, '-1'))
print('Rejected', len(rejected), 'independent coordinate corruptions:', ', '.join(rejected))

cover = g['visit'].__globals__
saved = {k: cover[k] for k in ('tree', 'forces', 'seen', 'assigned', 'leaves')}


def cover_probe(name, change):
    cover.update(tree=deepcopy(saved['tree']), forces=deepcopy(saved['forces']), seen=set(), assigned=set(), leaves=[])
    change(cover)
    try:
        cover['visit']('root', cover['root_given'])
        assert cover['assigned'] == set(cover['stages'])
        assert cover['seen'] == set(cover['tree'])
        assert sorted(cover['leaves']) == sorted(cover['terminal_stages'])
    except (AssertionError, KeyError, ValueError, IndexError):
        rejected.append(name)
        cover.update(saved)
        return
    cover.update(saved)
    raise AssertionError('Coverage corruption accepted: '+name)


cover_probe('omitted binary leaf', lambda d: d['tree'].pop(next(n for n, r in d['tree'].items() if r[4] == 'none')))
forced_token = saved['forces'][0][2]
cover_probe('missing capacity premise', lambda d: d.__setitem__('forces', [r for r in d['forces'] if r[2] != forced_token]))
cover_probe('wrong declared terminal', lambda d: next(r for r in d['tree'].values() if r[4] == 'none').__setitem__(6, '0'))


def early_capacity(d):
    row = next(r for r in d['forces'] if r[2] == forced_token)
    row[1] = str(int(row[1])-1)


cover_probe('capacity premise before its source', early_capacity)
print('Rejected', len(rejected), 'total independent coordinate/coverage corruptions')

# Check the additional actual physical-source witnesses independently.
from types import SimpleNamespace
from n6_brtt_independent import physical as brtt_physical, coarse as brtt_coarse
E = SimpleNamespace(**g)

def source_probe(name, tag, change):
    sid0, text, known0, witness, printed = next(
        (sid0, text, known0, json.loads(prem[5:]), printed)
        for sid0, (scope0, text, known0) in g['stages'].items()
        for _, _, prem, printed in g['rows'](text, 'Physical factors')
        if prem.startswith('brtt ') and json.loads(prem[5:])[0] == tag)
    prop=g['props'](text); scope0=prop['Scope']
    bounds=g['rows'](text, 'Coordinate box')
    lo,hi=[F(r[1]) for r in bounds],[F(r[2]) for r in bounds]
    def previous(obj):
        b=g['allbounds'][obj['ref']]
        assert b[:3]==(obj['triangle'],obj['direction'],F(obj['value']))
        assert b[3]<sid0 and (scope0==b[4] or scope0.startswith(b[4]+'/'))
        return b[2]
    expected=g['parsepoly'](printed)
    assert brtt_physical(E,witness,known0,lo,hi,int(prop['Coarse version']),g['WORD'],previous)==expected
    altered=deepcopy(witness);change(altered)
    try:
        result=brtt_physical(E,altered,known0,lo,hi,int(prop['Coarse version']),g['WORD'],previous)
        assert result==expected
    except (AssertionError,KeyError,ValueError,IndexError):
        rejected.append(name);return
    raise AssertionError('Physical source corruption accepted: '+name)

source_probe('wrong fixed support maximum','support-envelope',lambda w:w.__setitem__(5,'1/1000'))
source_probe('wrong support actual hull','support-envelope',lambda w:w[1].__setitem__(1,'ABC'))
source_probe('wrong actual occupancy','actual-area',lambda w:w[2].append('A'))
source_probe('unproved contact order','contact-order',lambda w:w.__setitem__(1,'sym'))
source_probe('wrong lower container cost','endpoint-lower',lambda w:w.__setitem__(1,'1'))
source_probe('wrong top hull alternative','top-hull',lambda w:w.__setitem__(1,'-' if g['WORD']=='+' else '+'))
source_probe('wrong right clearance point','right-clearance',lambda w:w.__setitem__(1,'R'))
source_probe('wrong central coordinate floor','central-floor',lambda w:w.__setitem__(2,'1'))
source_probe('unavailable preceding physical source','earlier-area',lambda w:w[1].__setitem__('ref','999999:0'))
try:brtt_coarse(E,known,3,g['WORD'])
except AssertionError:rejected.append('unproved coarse-box version')
else:raise AssertionError('Unproved coarse version accepted')
assert len(rejected)==30
print('All thirty independent BRTT corruptions rejected.')
