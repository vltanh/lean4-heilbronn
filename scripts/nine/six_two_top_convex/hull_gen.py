import sys
from pathlib import Path
import sympy as sp
ROOT = Path(__file__).resolve().parents[3]
sys.path.insert(0, str(ROOT / 'scripts' / 'nine' / 'six_radial'))
from hull import module
a, h, b, c, d, f, ex, ey, gx, gy = sp.symbols('a h b c d f ex ey gx gy')
G = [a, h, b, c, d, f, ex, ey, gx, gy]
B = [('ha', a), ('hha', h - a), ('hh1', 1 - h), ('hb', b), ('hcb', c - b), ('hc1', 1 - c),
     ('hda', d - a), ('hhd', h - d), ('hfb', f - b), ('hcf', c - f),
     ('hef', ex - f), ('he1', 1 - ex), ('hed', ey - d), ('hey1', 1 - ey),
     ('hDEF', (1 - d) * (ex - f) - (1 - f) * (1 - ey)),
     ('hgf', gx - f), ('hg1', 1 - gx), ('hgd', gy - d), ('hgy1', 1 - gy),
     ('hDGF', (1 - d) * (gx - f) - (1 - f) * (1 - gy)),
     ('hu', ex - gx), ('hv', gy - ey),
     ('hDEG', (ex - gx) * (ey - d) - (1 - ex) * (gy - ey)),
     ('hEGF', (gy - ey) * (gx - f) - (1 - gy) * (ex - gx))]
V = [(0, a), (b, 0), (c, 0), (1, d), (ex, ey), (gx, gy), (f, 1), (0, h)]
SPL = [(ey, h), (gy, h), (ex, c), (gx, c), (ey, a), (gx, b), (gy, a), (ex, b)]
txt = module('Heilbronn.Nine.SixBoundary.TwoTopConvexHull', 'Heilbronn.Nine.SixBoundaryTwoTopConvex',
             'The hull octagon `A, B, C, D, E, G, F, H` of `SIX_BOUNDARY_TWO_TOP_CONVEX` (3)',
             'Hull', '{a h b c d f ex ey gx gy : ℝ}', 'a h b c d f ex ey gx gy', B, V, G, SPL, 'octV')
txt = txt.replace('structure Hull {a h b c d f ex ey gx gy : ℝ} : Prop', 'structure Hull (a h b c d f ex ey gx gy : ℝ) : Prop')
txt = txt.replace('def octV {a h b c d f ex ey gx gy : ℝ} :', 'def octV (a h b c d f ex ey gx gy : ℝ) :')
(ROOT / 'Heilbronn' / 'Nine' / 'SixBoundary' / 'TwoTopConvexHull.lean').write_text(txt)
