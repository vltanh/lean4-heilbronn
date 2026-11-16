import sys
from pathlib import Path
import sympy as sp
ROOT = Path(__file__).resolve().parents[2]
sys.path.insert(0, str(ROOT / 'scripts' / 'six_radial'))
from hull import module
a, h, b, c, d, f, x, y, ex, ey = sp.symbols('a h b c d f x y ex ey')
G = [a, h, b, c, d, f, x, y, ex, ey]
B = [('ha', a), ('hha', h - a), ('hh1', 1 - h), ('hb', b), ('hcb', c - b), ('hc1', 1 - c),
     ('hda', d - a), ('hhd', h - d), ('hfb', f - b), ('hcf', c - f), ('hxc', x - c),
     ('hx1', 1 - x), ('hy', y), ('hdy', d - y), ('hCDX', d * (x - c) - (1 - c) * y),
     ('hef', ex - f), ('he1', 1 - ex), ('hed', ey - d), ('hey1', 1 - ey),
     ('hDEF', (1 - d) * (ex - f) - (1 - f) * (1 - ey))]
V = [(0, a), (b, 0), (c, 0), (x, y), (1, d), (ex, ey), (f, 1), (0, h)]
SPL = [(y, a), (ex, x), (ey, h), (x, ex), (y, h), (ey, a), (f, x), (ex, c)]
txt = module('Heilbronn.Six.SideTwoTopHull', 'Heilbronn.SixBoundarySideTwoTop',
             'The hull octagon `A, B, C, X, D, E, F, H` of `SIX_BOUNDARY_SIDE_TWO_TOP` (7)',
             'Hull', '{a h b c d f x y ex ey : ℝ}', 'a h b c d f x y ex ey', B, V, G, SPL, 'octV')
txt = txt.replace('structure Hull {a h b c d f x y ex ey : ℝ} : Prop', 'structure Hull (a h b c d f x y ex ey : ℝ) : Prop')
txt = txt.replace('def octV {a h b c d f x y ex ey : ℝ} :', 'def octV (a h b c d f x y ex ey : ℝ) :')
(ROOT / 'Heilbronn' / 'Six' / 'SideTwoTopHull.lean').write_text(txt)
