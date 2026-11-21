#!/usr/bin/env python3
"""Independent rational checks for the n=10 normalization/checker audit.

Uses no imported cubic-field implementation and performs no global search.
These checks validate constants and arithmetic bounds, not family completion.
"""
from fractions import Fraction as Q
import json


def require(condition, message):
    if not condition:
        raise ArithmeticError(message)


def polynomial(x):
    return 12*x**3 - 27*x**2 + 20*x - 4


def run():
    M, F = 22, 2**20
    S = M*F
    gl = Q(363874867642398571, 2**60)
    gu = Q(363874867642398572, 2**60)
    require(polynomial(gl) < 0 < polynomial(gu), 'fine isolating interval')
    require(Q(3156, 10000) < gl < gu < Q(3157, 10000), 'root location')
    # f'(x) = 36(x-2/3)(x-5/6). Both critical values are positive.
    require(polynomial(Q(2, 3)) == Q(8, 9), 'first critical value')
    require(polynomial(Q(5, 6)) == Q(31, 36), 'second critical value')
    # Direct interval evaluation of A = 5g^2/8 - g^3/2.
    # Positive g makes every endpoint choice below conservative.
    al = Q(5, 8)*gl**2 - gu**3/2
    au = Q(5, 8)*gu**2 - gl**3/2
    tc = Q(4653, 100000)
    tn = Q(4653741958254, 100000000000000)
    require(Q(1, 22) < tc < tn < al < au, 'actual global thresholds below A')
    require(Q(1, 44) < tc, 'same-side segment exclusion')
    require(Q(45, 2*M*M) < tc, 'CUT=46 necessary at both thresholds')
    require(Q(1, 25) < al, 'local positivity threshold')

    D = 10**12
    cl, cu = 315611137608, 315611137609
    require(polynomial(Q(cl, D)) < 0 < polynomial(Q(cu, D)),
            'C++ template root bracket')
    require(Q(cl, D) < gl < gu < Q(cu, D), 'same candidate root')
    require(4*Q(cu, D)-3 < 0, 'a(g) decreases on template bracket')

    # Absolute bounds include raw intermediate products, not just final values.
    signed64 = 2**63
    signed128 = 2**127
    bounds = {
        'grid_determinant': 2*M*M,
        'fine_determinant': 2*S*S,
        'midpoint_sort_determinant': 8*S*S,
        'local_coordinate_comparison': 2000*S + S,
    }
    require(all(v < signed64 for v in bounds.values()), 'signed 64-bit bounds')
    wide_bounds = {}
    for name, num, den in [('corner', 4653, 50000),
                            ('N', 4653741958254, 50000000000000)]:
        T = num*S*S
        wide_bounds[name+'_target'] = T
        wide_bounds[name+'_face_product'] = den*2*S*S
        # This multiplication only executes under 0 <= low < T or high < T.
        wide_bounds[name+'_contraction_numerator'] = T*S
        require(T*S < 2**117, 'documented contraction bound')
    wide_bounds['template_enclosure_numerator'] = 2*D*D*S + 2*D*D
    root_max = 0
    for x in (cl, cu):
        terms = [12*x*x*x, 27*x*x*D, 20*x*D*D, 4*D*D*D]
        partials = [terms[0], terms[0]-terms[1],
                    terms[0]-terms[1]+terms[2],
                    terms[0]-terms[1]+terms[2]-terms[3]]
        root_max = max(root_max, *(abs(z) for z in terms+partials))
    wide_bounds['root_polynomial_intermediate'] = root_max
    require(root_max < 2**125, 'documented root-polynomial bound')
    require(all(v < signed128 for v in wide_bounds.values()), 'signed 128-bit bounds')

    margin = Q(21, 2)*Q(919, 1375)**2 - 32*Q(81, 1000) - 28*Q(81, 1000)**2
    require(margin == Q(57921081, 30250000) > 0, 'local contradiction margin')
    require((1-Q(81, 1000))*Q(8, 11) == Q(919, 1375),
            'neutral-coordinate lower bound')
    require(Q(3, 2000)+Q(2, 2000**2) < Q(1, 25), 'active-area positivity')
    return {
        'status': 'GEOMETRY_CONSTANTS_PASS',
        'global_completion_claimed': False,
        'thresholds': {'corner': str(tc), 'N': str(tn)},
        'A_interval': [str(al), str(au)],
        'strict_A_minus_N_lower_bound': str(al-tn),
        'integer_bounds': bounds,
        'wide_integer_bounds': wide_bounds,
        'local_contradiction_margin': str(margin),
    }


if __name__ == '__main__':
    print(json.dumps(run(), indent=2, sort_keys=True))
