import sys
from pathlib import Path
import sympy as sp
ROOT = Path(__file__).resolve().parents[3]
sys.path.insert(0, str(ROOT / 'scripts' / 'nine' / 'six_radial'))
from hull import module
a, h, b, c, d, f, xx, xy = sp.symbols('a h b c d f xx xy')
G = [a, h, b, c, d, f, xx, xy]
B = [('ha', a), ('hha', h - a), ('hh1', 1 - h), ('hb', b), ('hcb', c - b), ('hc1', 1 - c),
     ('hda', d - a), ('hhd', h - d), ('hfb', f - b), ('hcf', c - f),
     ('hxf', xx - f), ('hx1', 1 - xx), ('hxd', xy - d), ('hxy1', 1 - xy),
     ('hDXF', (1 - d) * (xx - f) - (1 - f) * (1 - xy))]
V = [(0, a), (b, 0), (c, 0), (1, d), (xx, xy), (f, 1), (0, h)]
SPL = [(xy, h), (xx, c), (xy, a), (xx, b)]
txt = module('Heilbronn.Nine.SixBoundary.TwoTopTriangularHull', 'Heilbronn.Nine.SixBoundaryTwoTopTriangular',
             'The hull heptagon `A, B, C, D, X, F, H` of `SIX_BOUNDARY_TWO_TOP_TRIANGULAR` (3)',
             'Hull', '{a h b c d f xx xy : ℝ}', 'a h b c d f xx xy', B, V, G, SPL, 'heptV')
txt = txt.replace('structure Hull {a h b c d f xx xy : ℝ} : Prop', 'structure Hull (a h b c d f xx xy : ℝ) : Prop')
txt = txt.replace('def heptV {a h b c d f xx xy : ℝ} :', 'def heptV (a h b c d f xx xy : ℝ) :')
(ROOT / 'Heilbronn' / 'Nine' / 'SixBoundary' / 'TwoTopTriangularHull.lean').write_text(txt)
