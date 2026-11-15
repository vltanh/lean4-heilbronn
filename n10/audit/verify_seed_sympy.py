#!/usr/bin/env python3
"""Independent exact n=10 seed audit using SymPy's algebraic-number field.

Does not import verify_n10.py or its arithmetic. Only the compressed dual
coefficients are shared inputs. This verifies attainment and the local theorem,
and both thresholds actually used by the unrestricted global checker.
"""
from fractions import Fraction
from itertools import combinations
from pathlib import Path
import argparse
import base64
import hashlib
import json
import zlib
import sympy as sp
from sympy.polys.domains import QQ


ROOT = Path(__file__).resolve().parents[2]
SEED = ROOT / 'n10' / 'seed'


def need(ok, message):
    if not ok:
        raise ArithmeticError(message)


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--output', type=Path)
    args = parser.parse_args()
    x = sp.Symbol('g')
    polynomial = 12*x**3 - 27*x**2 + 20*x - 4
    need(sp.Poly(polynomial, x).is_irreducible, 'irreducibility')
    need(sp.discriminant(polynomial, x) < 0, 'unique real root')
    root = sp.CRootOf(polynomial, 0)
    field = QQ.algebraic_field(root)
    zero, one = field.zero, field.one
    g = field.from_sympy(root)
    lo, hi = Fraction(363874867642398571, 2**60), Fraction(363874867642398572, 2**60)
    p = lambda t: 12*t**3-27*t*t+20*t-4
    need(p(lo) < 0 < p(hi), 'independent rational root isolation')

    def q(value):
        return field.from_sympy(sp.Rational(value))

    def interval(value):
        # ANP coefficients are highest degree first; Horner interval arithmetic
        # is independent of the original verifier's monomial interval sum.
        lower = upper = Fraction(0)
        for coefficient in value.to_list():
            products = (lower*lo, lower*hi, upper*lo, upper*hi)
            c = Fraction(int(coefficient.numerator), int(coefficient.denominator))
            lower, upper = min(products)+c, max(products)+c
        return lower, upper

    def sign(value):
        if value == zero:
            return 0
        lower, upper = interval(value)
        need(lower > 0 or upper < 0, 'insufficient independent root interval')
        return 1 if lower > 0 else -1

    def absolute(value):
        return value if sign(value) >= 0 else -value

    a = one-3*g+2*g*g
    area = q('5/8')*g*g-q('1/2')*g**3
    need(3456*area**3-1764*area**2+268*area-9 == zero, 'area polynomial')
    need(sp.discriminant(3456*x**3-1764*x*x+268*x-9, x) < 0,
         'area polynomial has exactly one real root')
    thresholds = {'corner': Fraction(4653, 100000),
                  'N': Fraction(4653741958254, 100000000000000)}
    for name, threshold in thresholds.items():
        need(sign(area-q(threshold)) > 0, name+' target below attainment')
        need(Fraction(45, 2*22**2) < threshold, name+' coarse cutoff')
        need(Fraction(1, 22) < threshold, name+' repeated-cell exclusion')
    need(sign(area-q('1/25')) > 0, 'orientation neighborhood margin')
    points = [(zero,a),(a,zero),(one-g/2,zero),(one,g/2),
              (one,one-a),(one-a,one),(g/2,one),(zero,one-g/2),
              (g,g),(one-g,one-g)]
    need(all(sign(c) >= 0 and sign(one-c) >= 0 for point in points for c in point),
         'candidate in square')
    labels = 'ABCDEFGHOP'
    gradients, active = [], []
    for indices in combinations(range(10), 3):
        i,j,k = indices
        xi,yi = points[i]
        xj,yj = points[j]
        xk,yk = points[k]
        signed_area = ((xj-xi)*(yk-yi)-(yj-yi)*(xk-xi))/2
        orientation = sign(signed_area)
        gap = orientation*signed_area-area
        need(sign(gap) >= 0, 'negative candidate triangle gap')
        if gap != zero:
            continue
        name = ''.join(labels[t] for t in indices)
        active.append((name, orientation, indices))
        row = [zero]*20
        for u,v,w in ((i,j,k),(j,k,i),(k,i,j)):
            row[2*u] = orientation*(points[v][1]-points[w][1])/2
            row[2*u+1] = orientation*(points[w][0]-points[v][0])/2
        gradients.append(row)
    need([t[0] for t in active] == ['ADO','AEO','AEP','AGH','AOP','BCD','BFO','BFP',
          'BGO','BOP','CDE','CFP','EHP','EOP','FGH','FOP'], 'active inventory')
    L, M = 24*g*g-30*g+8, 12*g*g-27*g+8
    weights = [L if name in ('ADO','BGO','CFP','EHP') else
               M if name in ('AGH','BCD','CDE','FGH') else one for name,_,_ in active]
    normals, boundary_weights = [], []
    for i,point in enumerate(points):
        for coordinate,c in enumerate(point):
            if c not in (zero,one):
                continue
            normal = [zero]*20
            normal[2*i+coordinate] = one if c == zero else -one
            normals.append(normal)
            boundary_weights.append(6*g*g-7*g+2 if labels[i] in 'ABEF' else 26*g*g-39*g+10)
    need(len(normals) == 8, 'boundary inventory')
    rows = gradients+normals
    full_weights = weights+boundary_weights
    need(all(sign(w) > 0 for w in full_weights), 'positive stress')
    need(all(sum((w*r[i] for w,r in zip(full_weights, rows)), zero) == zero
             for i in range(20)), 'stress identity')
    v = [zero,2*(one-g),2*(one-g),zero,-one/2,zero,zero,one/2,
         zero,-2*(one-g),-2*(one-g),zero,one/2,zero,zero,-one/2,one,one,-one,-one]
    need(all(sum((u*w for u,w in zip(row,v)),zero) == zero for row in rows),
         'neutral direction')
    need(all(sign(q('11/8')-absolute(c)) > 0 for c in v), 'neutral norm')
    encoded = ''.join((SEED/'dual_data'/f'{i:02d}.b64').read_text().strip() for i in range(8))
    raw = zlib.decompress(base64.b64decode(encoded, validate=True))
    duals = json.loads(raw)
    seen = set()
    for record in duals:
        i,sg = record['coordinate'],record['sign']
        need(i != 16 and 0 <= i < 20 and sg in (-1,1), 'dual key')
        need((i,sg) not in seen, 'duplicate dual key')
        seen.add((i,sg))
        support = record['support']
        need(len(set(support)) == len(support) == len(record['weights']), 'dual support')
        need(all(0 <= j < 24 for j in support), 'dual row bounds')
        dual_weights = [sum((q(c)*g**degree for degree,c in enumerate(vector)),zero)
                        for vector in record['weights']]
        need(all(sign(w) >= 0 for w in dual_weights), 'dual positivity')
        for coordinate in range(20):
            if coordinate == 16:
                continue
            value = sum((w*rows[j][coordinate] for w,j in zip(dual_weights,support)),zero)
            need(value == (-sg*one if coordinate == i else zero), 'dual identity')
        total = sum((w for w,j in zip(dual_weights,support) if j < 16),zero)
        saved = sum((q(c)*g**degree for degree,c in enumerate(record['sum'])),zero)
        need(total == saved and sign(81*one-total) > 0, 'dual transverse bound')
    need(seen == {(i,sg) for i in range(20) if i != 16 for sg in (-1,1)},
         'all 38 coordinate bounds')
    # Build Q directly as coefficients of x_i*y_j, then symmetrize. This avoids
    # importing the original Hessian construction or any saved matrix.
    H = [[zero]*20 for _ in range(20)]
    for weight,(_,sg,(i,j,k)) in zip(weights,active):
        for u,w in ((i,j),(j,k),(k,i)):
            H[2*u][2*w+1] += sg*weight/4
            H[2*w+1][2*u] += sg*weight/4
            H[2*w][2*u+1] -= sg*weight/4
            H[2*u+1][2*w] -= sg*weight/4
    Hv = [sum((u*w for u,w in zip(row,v)),zero) for row in H]
    curvature = sum((u*w for u,w in zip(Hv,v)),zero)
    need(curvature == -54*g*g+q('195/2')*g-36, 'curvature identity')
    need(sign(-q('21/2')-curvature) > 0, 'strict negative curvature')
    need(sign(32*one-2*sum(map(absolute,Hv),zero)) > 0, 'mixed term bound')
    need(sign(28*one-sum((absolute(c) for row in H for c in row),zero)) > 0,
         'quadratic remainder bound')
    margin = Fraction(21,2)*Fraction(919,1375)**2-32*Fraction(81,1000)-28*Fraction(81,1000)**2
    need(margin == Fraction(57921081,30250000) and margin > 0, 'local contradiction margin')
    need(Fraction(3,2000)+Fraction(2,2000**2) < Fraction(1,25), 'orientation stability')
    # Conservative bounds for the fixed C++ scale, including intermediate
    # products (not merely final, possibly cancelling, values).
    scale = 22*2**20
    need(8*scale**2 < 2**63, 'signed 64-bit determinant and midpoint operations')
    need(4653741958254*scale**3 < 2**117, 'signed 128-bit contraction numerator')
    need(50000000000000*2*scale**2 < 2**127, 'signed 128-bit target products')
    D = 10**12
    need((Fraction(12,27)+Fraction(27,9)+Fraction(20,3)+4)*D**3 < 2**125,
         'signed 128-bit root polynomial intermediates')
    report = {'schema':1, 'status':'PASS', 'scope':'attainment, unrestricted local theorem, global threshold comparisons, integer bounds',
              'independent_arithmetic':'SymPy QQ.algebraic_field with Horner rational sign enclosures',
              'sympy_version':sp.__version__, 'triangles':120, 'active_triangles':16,
              'dual_certificates':38, 'local_radius':'1/2000', 'local_margin':str(margin),
              'global_thresholds_below_A':{k:str(v) for k,v in thresholds.items()},
              'dual_data_sha256':hashlib.sha256(raw).hexdigest(),
              'global_upper_bound_claimed':False}
    if args.output:
        args.output.parent.mkdir(parents=True, exist_ok=True)
        args.output.write_text(json.dumps(report,indent=2)+'\n')
    print(json.dumps(report,indent=2))


if __name__ == '__main__':
    main()
