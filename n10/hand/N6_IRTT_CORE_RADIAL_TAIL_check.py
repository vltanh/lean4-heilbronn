"""Check final interval arithmetic only; earlier premises remain unaudited.

Reads literal Markdown data and uses only the Python standard library.
This is deliberately not a full source-aware hand-proof reader.
"""
import json
import re
from fractions import Fraction as Q
from itertools import product
from pathlib import Path

HERE = Path(__file__).resolve().parent


def main():
    for cut in ['AB', 'BC', 'CQ']:
        raw = (HERE / 'N6_IRTT_CORE_RADIAL_TABLES' / (cut+'.md')).read_text()
        blocks = re.findall(r'```json\n(.*?)\n```', raw, re.S)
        assert len(blocks) == 1
        packet = json.loads(blocks[0])
        assert packet['labels'] == 'ABCEFHQRS' and packet['closed']
        r = packet['stages'][-1]['result']
        end = r['reason']['interval']
        fac = r['refinement']['factors'][str(end['factor'])]
        lo, hi = (list(map(Q, r['box'][key])) for key in ['low', 'high'])
        target = packet['variables'].index(end['target'])
        assert [Q(x) for x in end['old']] == [lo[target], hi[target]]
        terms = [(tuple(m), Q(c)) for m,c in fac['terms']]
        assert all(len(m) == len(set(m)) and all(0 <= i < 12 for i in m) for m,c in terms)
        other = sorted({i for m,c in terms for i in m} - {target})
        lines = set()
        for bits in product([0,1], repeat=len(other)):
            at = lo[:]
            for i, bit in zip(other, bits):
                at[i] = hi[i] if bit else lo[i]
            a = b = Q(0)
            for m,c in terms:
                value = c
                for i in m:
                    if i != target:
                        value *= at[i]
                if target in m:
                    a += value
                else:
                    b += value
            lines.add((a,b))
        printed = [tuple(map(Q, pair)) for pair in end['lines']]
        assert len(printed) == len(set(printed)) and set(printed) == lines
        for a,b in lines:
            low, high = lo[target], hi[target]
            if a > 0:
                low = max(low, -b/a)
            elif a < 0:
                high = min(high, -b/a)
            else:
                assert b < 0
                continue
            assert low > high
        print(f'PASS {cut}: {len(lines)} exact terminal lines exclude the printed target interval')
    print('Only terminal arithmetic checked; prior geometry, sources and chains still require independent replay.')


if __name__ == '__main__':
    main()
