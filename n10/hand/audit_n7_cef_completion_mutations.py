"""Deliberate corruptions of the independently replayed whole CEF cover."""
from copy import deepcopy
from pathlib import Path
from audit_n7_cef_completion import audit, read

packets = read(Path(__file__).with_name('N7_CENTRAL_COMPLETION_CEF_TABLES'))
rejected = []


def trial(name, choose, change):
    packet = deepcopy(next(p for p in packets if choose(p)))
    change(packet)
    try:
        audit([packet], verbose=False, complete=False)
    except (AssertionError, KeyError, ValueError, IndexError, StopIteration):
        rejected.append(name)
        print('Rejected:', name, flush=True)
        return
    raise AssertionError('Corruption accepted: ' + name)


numeric = lambda p: bool(p['stages'])
cubic = lambda p: p['terminal']['kind'] == 'polynomial'
mesh = lambda p: p['terminal']['kind'] == 'geometry'
factors = lambda p: [r for s in p['stages'] for r in s['physical'].values()]
natural = lambda p: any(r['why']['kind'] == 'natural_contact_support' for r in factors(p))
qarea = lambda p: any(r['why'].get('scheme', {}).get('tag') == 'QAREA' for r in factors(p))
first_natural = lambda p: next(r for r in factors(p) if r['why']['kind'] == 'natural_contact_support')
first_qarea = lambda p: next(r for r in factors(p) if r['why'].get('scheme', {}).get('tag') == 'QAREA')

trial('unproved initial coordinate', numeric,
      lambda p: p['stages'][0]['initial_box']['low'].__setitem__(0, '14/100'))
trial('altered actual sign deduction', numeric,
      lambda p: p['stages'][0]['trace'][0].__setitem__('sign', -p['stages'][0]['trace'][0]['sign']))
trial('extra sign premise outside leaf scope', numeric,
      lambda p: p['stages'][0]['assumptions'].append('ABC-'))
trial('changed physical polynomial', numeric,
      lambda p: next(iter(p['stages'][0]['physical'].values()))['terms'][0].__setitem__(1, '999'))
trial('omitted scalar dependency', numeric,
      lambda p: p['stages'][0]['updates'][0]['sources'].pop())
trial('future immutable scalar dependency', numeric,
      lambda p: p['stages'][0]['updates'][0]['sources'].__setitem__(0, p['stages'][0]['updates'][-1]['id']))
trial('changed rounded scalar value', numeric,
      lambda p: p['stages'][0]['updates'][0].__setitem__('value', '999'))
trial('omitted scalar vertex value', numeric,
      lambda p: next(r for r in p['stages'][0]['initial'].values() if r['witness']['kind'] == 'vertices')['witness']['values'].pop())
trial('omitted coordinate endpoint line', numeric,
      lambda p: p['stages'][0]['coordinate']['steps'][0]['lines'].pop())
trial('duplicated coordinate endpoint line', numeric,
      lambda p: p['stages'][0]['coordinate']['steps'][0]['lines'].append(p['stages'][0]['coordinate']['steps'][0]['lines'][0]))


def future_capacity(p):
    stage, row = next((s, r) for s in p['stages'] for r in s['trace'] if r['area_stage'] is not None)
    row['area_stage'] = stage['id'] + 1


trial('future capacity source', lambda p: any(r['area_stage'] is not None for s in p['stages'] for r in s['trace']), future_capacity)
trial('wrong HCF capacity target', mesh,
      lambda p: next(r for r in p['terminal']['geometry']['trace'] if r['rule'][0] == 'ray' and r['rule'][-1][0] == 'HCF2-AEF-cap1')['rule'].__setitem__(1, 'BEF'))
trial('wrong natural contact cap', natural,
      lambda p: first_natural(p)['why'].__setitem__('paired', 'BCD'))
trial('changed natural raw identity', natural,
      lambda p: first_natural(p)['why']['raw'][0].__setitem__(1, '999'))
trial('wrong square-relaxation box', qarea,
      lambda p: first_qarea(p)['why']['box']['low'].__setitem__(0, '0'))
trial('wrong QAREA floor reference', qarea,
      lambda p: first_qarea(p)['why']['floor_sources'][0].__setitem__('ref', 'not-yet-derived'))
trial('wrong QAREA constant', qarea,
      lambda p: first_qarea(p)['why']['scheme'].__setitem__('constant', '0'))
trial('wrong QAREA rate', qarea,
      lambda p: first_qarea(p)['why']['scheme'].__setitem__('rate', '0'))
trial('zero polynomial multiplier', cubic,
      lambda p: p['terminal']['sum']['factors'][0].__setitem__('weight', 0))
trial('changed expanded coefficient', cubic,
      lambda p: p['terminal']['sum']['sum'].__setitem__('', '999'))
trial('nonnegative terminal ceiling', cubic,
      lambda p: p['terminal']['sum'].__setitem__('upper', '0'))
trial('missing mesh permutation', mesh,
      lambda p: p['terminal']['geometry']['mesh_table'].pop())
trial('wrong mesh obstruction', mesh,
      lambda p: p['terminal']['geometry']['mesh_table'][0].__setitem__('opposite', 'ABC'))
trial('wrong mesh occupants', mesh,
      lambda p: p['terminal']['geometry']['contradiction'].__setitem__('points', 'GOB'))

for name, altered in [('omitted sign leaf', packets[:-1]), ('duplicated sign leaf', [packets[0], packets[0]])]:
    try:
        audit(altered, verbose=False)
    except (AssertionError, KeyError, ValueError, IndexError, StopIteration):
        rejected.append(name)
        print('Rejected:', name, flush=True)
    else:
        raise AssertionError('Corruption accepted: ' + name)

assert len(rejected) == 26
print('All 26 independent corruptions rejected.')
