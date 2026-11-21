"""Independent deliberate-corruption checks of the complete N7 E-only proof."""
from copy import deepcopy
from pathlib import Path
from audit_n7_e_only_completion import audit, read

packets = read(Path(__file__).with_name('N7_CENTRAL_COMPLETION_E_ONLY_TABLES'))
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


any_packet = lambda p: True
cubic = lambda p: p['terminal']['kind'] == 'polynomial'
affine = lambda p: p['terminal']['kind'] == 'area_linear'

trial('unproved initial coordinate', any_packet,
      lambda p: p['stages'][0]['initial_box']['low'].__setitem__(0, '14/100'))
trial('altered actual sign deduction', any_packet,
      lambda p: p['stages'][0]['trace'][0].__setitem__('sign', -p['stages'][0]['trace'][0]['sign']))
trial('changed physical source polynomial', any_packet,
      lambda p: next(iter(p['stages'][0]['physical'].values()))['terms'][0].__setitem__(1, '999'))
trial('omitted scalar source', any_packet,
      lambda p: p['stages'][0]['updates'][0]['sources'].pop())
trial('future immutable scalar bound', any_packet,
      lambda p: p['stages'][0]['updates'][0]['sources'].__setitem__(0, p['stages'][0]['updates'][-1]['id']))
trial('changed exact scalar result', any_packet,
      lambda p: p['stages'][0]['updates'][0].__setitem__('value', '999'))
trial('omitted scalar endpoint value', any_packet,
      lambda p: next(r for r in p['stages'][0]['initial'].values() if r['witness']['kind'] == 'vertices')['witness']['values'].pop())
trial('omitted coordinate endpoint line', any_packet,
      lambda p: p['stages'][0]['coordinate']['steps'][0]['lines'].pop())
trial('duplicated coordinate endpoint line', any_packet,
      lambda p: p['stages'][0]['coordinate']['steps'][0]['lines'].append(p['stages'][0]['coordinate']['steps'][0]['lines'][0]))


def future_capacity(p):
    stage, row = next((s, r) for s in p['stages'] for r in s['trace'] if r['area_stage'] is not None)
    row['area_stage'] = stage['id'] + 1


trial('future capacity premise', lambda p: any(r['area_stage'] is not None for s in p['stages'] for r in s['trace']), future_capacity)
trial('wrong capacity ray pair', any_packet,
      lambda p: next(r for r in p['stages'][0]['trace'] if r['rule'][0] == 'ray')['rule'].__setitem__(2, 'AB'))
trial('reversed capacity ray triangle', any_packet,
      lambda p: next(r for r in p['stages'][0]['trace'] if r['rule'][0] == 'ray')['rule'].__setitem__(3, 'DCA'))
trial('wrong barycentric fan endpoint', any_packet,
      lambda p: next(r for s in p['stages'] for r in s['relations'].values() if r['witness']['kind'] == 'bary_sign')['witness']['fan_lower'][0].__setitem__('value', '94/1000'))
trial('zero positive cubic multiplier', cubic,
      lambda p: p['terminal']['sum']['factors'][0].__setitem__('weight', 0))
trial('changed expanded cubic coefficient', cubic,
      lambda p: p['terminal']['sum']['sum'].__setitem__('', '999'))
trial('nonnegative terminal ceiling', cubic,
      lambda p: p['terminal']['sum'].__setitem__('upper', '0'))


def wrong_product_envelope(p):
    piece = next(f for f in p['terminal']['sum']['factors'] if f['origin']['kind'] == 'product_linear_envelope')['origin']['products'][0]
    piece['choice'] = 1 - piece['choice']


trial('wrong scalar product envelope', affine, wrong_product_envelope)
trial('wrong nested actual triangle', affine,
      lambda p: next(f for f in p['terminal']['sum']['factors'] if f['origin']['kind'] == 'nested_fan_product')['origin'].__setitem__('face', 'EFO'))
trial('missing affine ceiling endpoint', affine,
      lambda p: p['terminal']['sum']['box'].pop(next(iter(p['terminal']['sum']['box']))))
trial('changed affine weighted constant', affine,
      lambda p: p['terminal']['sum']['sum'].__setitem__('constant', '999'))

for name, altered in [('omitted sign leaf', packets[:-1]), ('duplicated sign leaf', [packets[0], packets[0]])]:
    try:
        audit(altered, verbose=False)
    except (AssertionError, KeyError, ValueError, IndexError, StopIteration):
        rejected.append(name)
        print('Rejected:', name, flush=True)
    else:
        raise AssertionError('Corruption accepted: ' + name)

assert len(rejected) == 22
print('All 22 independent corruptions rejected.')
