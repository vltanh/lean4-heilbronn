"""Export hand/seven_boundary_exterior_certificates.json to `term_rows%` files for
Heilbronn/Seven/ExteriorCerts.lean (atoms: the 23 factors, then the 84 oriented costs)."""
import json
import sys
from fractions import Fraction as F
from itertools import combinations
sys.path.insert(0, 'scripts')
import certlib as cl
from certlib import v, k

S = k(F(7, 64))
FACTORS = [v(0) - k(F(5, 32)), v(1) - v(0), v(8) - v(1), 1 - v(8), v(4) - k(F(5, 32)),
           v(5) - v(4), v(8) - v(5) - k(F(1, 8)), v(2) - k(F(3, 20)), v(6) - v(2), v(3) - v(6),
           k(F(27, 32)) - v(3), v(7) - v(6) - k(F(9, 40)), k(F(27, 32)) - v(7), k(F(1, 2)) - v(6),
           v(9) - v(2) - k(F(7, 64)), k(F(3, 4)) - v(9), v(10) - k(F(17, 64)),
           k(F(49, 64)) - v(10), k(F(7, 8)) - v(1), k(F(27, 32)) - v(5), v(1) - k(F(33, 64)),
           v(5) - k(F(33, 64)), v(8) - v(10) - k(F(7, 64))]
Z = cl.E.lift(0)
O = cl.E.lift(1)
PTS = [(Z, v(0)), (v(2), Z), (v(3), Z), (O, v(4)), (O, v(5)), (v(7), v(8)), (v(6), O), (Z, v(1)),
       (v(9), v(10))]
TRIPLES = list(combinations(range(9), 3))


def atoms(word):
    out = list(FACTORS)
    for (i, j, l) in TRIPLES:
        a = cl.esarea(PTS[i], PTS[j], PTS[l])
        if l < 8 or j - i <= word[i]:
            out.append(a - S)
        else:
            out.append(k(-1) * a - S)
    return out


def main():
    data = json.load(open('hand/seven_boundary_exterior_certificates.json'))
    total = 0
    for cert in data['certificates']:
        word = cert['word']
        at = atoms(word)
        terms = []
        for t in cert['terms']:
            if t[0] == 'f':
                terms.append((F(t[2], 4096), list(t[1])))
            else:
                _, tri, m, w = t
                terms.append((F(w, 4096), [23 + tri] + ([m] if m >= 0 else [])))
        W = cl.integer_weights(at, terms)
        assert cl.check(at, W), cert['blocks']
        i, j = cert['blocks']
        cl.write_terms('data/seven_exterior/cert_%d_%d.txt' % (i, j), W)
        total += len(W)
    print('ok', len(data['certificates']), total)


if __name__ == '__main__':
    main()
