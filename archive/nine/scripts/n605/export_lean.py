"""Export the verified certificates as integer data in the repository's Lean reader formats.

For each cell writes
  lean/<tag>_atoms.txt : poly_rows% format, k = 12 (exponents in order a h b c d f x y z w r t,
                         then the integer coefficient), one nonnegative atom per line;
  lean/<tag>_terms.txt : term_rows% format, "w i1 ... im" (w positive integer, atom indices);
  lean/<tag>_atoms_readable.txt : the atom names, one per line, same order.
Atoms are the factors and the 9 costs, each multiplied by the least positive integer making its
coefficients integral (so 64*(sigma*det) - 7 for a cost).  The integer expansion
sum_j w_j prod_{i in I_j} atom_i has negative monomial bound; verify_n605.py rechecks this.
"""
import json
from fractions import Fraction as Fr
from math import lcm
from pathlib import Path
import verify_n605 as V

HERE = Path(__file__).parent
OUT = HERE / 'lean'; OUT.mkdir(exist_ok=True)


def integral(p):
    m = 1
    for c in p.values():
        m = lcm(m, c.denominator)
    return m, {k: v * m for k, v in p.items()}


def atoms_for(data, cell):
    names = data['factors'] + cell['cuts']
    polys = [V.FACTORS[n] for n in names] + [V.cost(q) for q in data['costs']]
    labels = names + ['cost ' + q for q in data['costs']]
    return labels, polys


def export(path, tag):
    data = json.loads(Path(path).read_text())
    for ci, cell in enumerate(data['cells']):
        labels, polys = atoms_for(data, cell)
        idx = {l: i for i, l in enumerate(labels)}
        mults, ipolys = zip(*(integral(p) for p in polys))
        rows = []
        for term in cell['terms']:
            if term[0] == 'f':
                ids = [idx[n] for n in term[1]]; W = term[2]
            else:
                ids = [idx['cost ' + term[1]]] + ([idx[term[2]]] if term[2] is not None else []); W = term[3]
            rows.append((Fr(W, data['scale']), ids))
        # weight on prod(m_i * atom_i) is W/(scale*prod m_i); clear denominators
        dens = 1
        for W, ids in rows:
            pm = 1
            for i in ids: pm *= mults[i]
            dens = lcm(dens, (W / pm).denominator)
        tg = f'{tag}_cell{ci}'
        with open(OUT / f'{tg}_terms.txt', 'w') as fh:
            for W, ids in rows:
                pm = 1
                for i in ids: pm *= mults[i]
                wi = W / pm * dens
                assert wi.denominator == 1 and wi > 0
                fh.write(' '.join(map(str, [wi.numerator] + ids)) + '\n')
        with open(OUT / f'{tg}_atoms.txt', 'w') as fh:
            for p in ipolys:
                assert all(v.denominator == 1 for v in p.values())
                fh.write(' '.join(' '.join(map(str, m)) + ' ' + str(v.numerator)
                                  for m, v in sorted(p.items())) + '\n')
        (OUT / f'{tg}_atoms_readable.txt').write_text(
            '\n'.join(f'{i}: {l}  (x{m})' for i, (l, m) in enumerate(zip(labels, mults))) + '\n')
        print('exported', tg, len(rows), 'terms,', len(labels), 'atoms')


if __name__ == '__main__':
    export(HERE / 'n605_single_certificate.json', 'A')
    export(HERE / 'n605_three_cell_certificates.json', 'B')
