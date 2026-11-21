"""Independent negative probes of the complete central ITTT literal proof.

Every accepted source chain is checked before these deliberate corruptions.
The full source chains and binary coverage are checked before corruption.
"""
from copy import deepcopy
from fractions import Fraction as F
from pathlib import Path
import json
import runpy
import sys

sys.argv = [str(Path(__file__).with_name('audit_n6_bttt_remaining.py')), '--ittt-central']
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
# The two sample leaves are siblings; the second is later in stage order.
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
cover_probe('missing APS capacity premise', lambda d: d.__setitem__('forces', [r for r in d['forces'] if r[2] != 'APS+']))
cover_probe('wrong declared terminal', lambda d: next(r for r in d['tree'].values() if r[4] == 'none').__setitem__(6, '0'))


def early_capacity(d):
    row = next(r for r in d['forces'] if r[2] == 'APS+')
    row[1] = str(int(row[1])-1)


cover_probe('capacity premise before its source', early_capacity)
print('Rejected', len(rejected), 'total independent coordinate/coverage corruptions')
