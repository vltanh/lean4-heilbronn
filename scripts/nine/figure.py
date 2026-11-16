#!/usr/bin/env python3
"""Draw docs/figures/nine.svg: the optimal nine-point configuration of Comellas and
Yebra, with its eleven triangles of least area (9 sqrt 65 - 55)/320 shaded.

The triangles come in pairs of mirror images in the anti-diagonal, (x, y) -> (1 - y, 1 - x),
which swaps A and F, B and E, C and D, G and H and fixes O; each pair has one colour, and BEO,
its own mirror image, a sixth. The colours are those of the squares-in-circles figures.

    python3 scripts/nine/figure.py                 # writes docs/figures/nine.svg
    python3 scripts/nine/figure.py --out FILE.svg  # the same figure, elsewhere
"""
import argparse
from itertools import combinations
from math import sqrt
from pathlib import Path

p = (15 - sqrt(65)) / 40
A0 = (9 * sqrt(65) - 55) / 320
NAMES = 'ABCDEFGHO'
P = [(0, 4*p - .5), (p, 0), (1 - 1.5*p, 0), (1, 1.5*p), (1, 1 - p), (1.5 - 4*p, 1), (p, 1),
     (0, 1 - p), (1 - 2*p, 2*p)]
INK, INK2, INK3 = '#1f2937', '#4b5563', '#8a8e96'
FONT = "Georgia, 'Times New Roman', serif"
# one colour per mirror pair, in the order of PAIRS
COLOURS = ['#2563eb', '#ea580c', '#16a34a', '#9333ea', '#db2777', '#0891b2']
PAIRS = [('ABC', 'DEF'), ('ABH', 'EFG'), ('AGH', 'FGH'), ('ADO', 'CFO'), ('CGO', 'DHO'),
         ('BEO',)]
SWAP = dict(zip('ABCDEFGHO', 'FEDCBAHGO'))  # the anti-diagonal, on the names

S, M = 420, 44          # the square's side and its margin, in pixels
W, HT = 860, 540        # the whole figure
LX = M + S + 64         # the left edge of the legend


def xy(q):
    return M + S * q[0], M + S * (1 - q[1])


def area(a, b, c):
    return abs((b[0]-a[0])*(c[1]-a[1]) - (b[1]-a[1])*(c[0]-a[0])) / 2


def name(t):
    return ''.join(NAMES[i] for i in t)


def text(x, y, body, size, fill=INK, anchor='start', extra=''):
    return ('<text x="%.1f" y="%.1f" font-size="%s" font-family="%s" fill="%s" text-anchor="%s"%s>'
            '%s</text>' % (x, y, size, FONT, fill, anchor, extra, body))


def it(s):
    return '<tspan font-style="italic">%s</tspan>' % s


# The eleven triangles of least area, checked against the pairs and the symmetry.
tight = [t for t in combinations(range(9), 3) if abs(area(*(P[i] for i in t)) - A0) < 1e-12]
assert len(tight) == 11
assert min(area(*(P[i] for i in t)) for t in combinations(range(9), 3)) > A0 - 1e-12
assert sorted(name(t) for t in tight) == sorted(n for pair in PAIRS for n in pair)
for pair in PAIRS:
    assert ''.join(sorted(SWAP[c] for c in pair[0])) == pair[-1]
for i, q in enumerate(P):
    r = P[NAMES.index(SWAP[NAMES[i]])]
    assert abs(1 - q[1] - r[0]) < 1e-12 and abs(1 - q[0] - r[1]) < 1e-12
order = [n for pair in PAIRS for n in pair]
colour = {n: COLOURS[k] for k, pair in enumerate(PAIRS) for n in pair}

title = ('The optimal configuration of nine points in the unit square, found by Comellas and Yebra: '
         'A and H on the left side, B and C on the bottom, D and E on the right, F and G on the top, '
         'and O inside. Its eleven triangles of least area, H₉ = (9√65 − 55)/320 ≈ 0.0548760, are '
         'shaded, in pairs of mirror images in the anti-diagonal: ABC and DEF, ABH and EFG, AGH and '
         'FGH, ADO and CFO, CGO and DHO; BEO is its own mirror image')
out = ['<svg xmlns="http://www.w3.org/2000/svg" width="%d" height="%d" viewBox="0 0 %d %d" '
       'role="img" aria-label="%s">' % (W, HT, W, HT, title),
       '<title>%s</title>' % title,
       '<rect width="100%" height="100%" fill="#ffffff"/>']
# the anti-diagonal, the axis of the configuration's symmetry
(x0, y0), (x1, y1) = xy((0, 1)), xy((1, 0))
out.append('<line x1="%.1f" y1="%.1f" x2="%.1f" y2="%.1f" stroke="%s" stroke-width="1" '
           'stroke-dasharray="5 5"/>' % (x0, y0, x1, y1, INK3))
for t in sorted(tight, key=lambda t: order.index(name(t))):
    s = colour[name(t)]
    pts = ' '.join('%.2f,%.2f' % xy(P[i]) for i in t)
    out.append('<polygon points="%s" fill="%s" fill-opacity="0.12" stroke="%s" stroke-width="1.5" '
               'stroke-linejoin="round"/>' % (pts, s, s))
out.append('<rect x="%d" y="%d" width="%d" height="%d" fill="none" stroke="%s" stroke-width="1.6"/>'
           % (M, M, S, S, INK))
# the points, and their names outside the square for the points on a side
for i, q in enumerate(P):
    x, y = xy(q)
    if q[0] == 0:
        lx, ly, anchor = x - 12, y + 6, 'end'
    elif q[0] == 1:
        lx, ly, anchor = x + 12, y + 6, 'start'
    elif q[1] == 0:
        lx, ly, anchor = x, y + 24, 'middle'
    elif q[1] == 1:
        lx, ly, anchor = x, y - 12, 'middle'
    else:  # O, between the edges OD and OE
        lx, ly, anchor = x + 13, y + 3, 'start'
    out.append('<circle cx="%.2f" cy="%.2f" r="4.4" fill="%s"/>' % (x, y, INK))
    out.append(text(lx, ly, NAMES[i], 19, anchor=anchor, extra=' font-style="italic"'))
# the value, under the square
out.append(text(M + S / 2, M + S + 56, it('H') + '<tspan dy="5" font-size="13">9</tspan>'
                '<tspan dy="-5"> = (9√65 − 55)/320 ≈ 0.0548760</tspan>', 20, anchor='middle'))
# the legend: the pairs, each with a small triangle in its colour
y = M + 14
out.append(text(LX, y, 'The eleven triangles of least area', 18))
y += 46
for k, pair in enumerate(PAIRS):
    s = COLOURS[k]
    out.append('<polygon points="%.1f,%.1f %.1f,%.1f %.1f,%.1f" fill="%s" fill-opacity="0.12" '
               'stroke="%s" stroke-width="1.5" stroke-linejoin="round"/>'
               % (LX, y + 1, LX + 26, y + 1, LX + 7, y - 16, s, s))
    out.append(text(LX + 42, y, ' and '.join(it(n) for n in pair), 19))
    y += 40
y += 10
for line in ['The two of a pair are mirror images in the',
             'dashed anti-diagonal, which maps the',
             'configuration to itself; ' + it('BEO') + ' is its own',
             'mirror image.']:
    out.append(text(LX, y, line, 16, fill=INK2))
    y += 24
out.append('</svg>')

parser = argparse.ArgumentParser(description=__doc__.splitlines()[0])
parser.add_argument('--out', type=Path,
                    default=Path(__file__).resolve().parents[2] / 'docs/figures/nine.svg')
dest = parser.parse_args().out
dest.write_text('\n'.join(out) + '\n')
print('wrote', dest, 'with', len(tight), 'tight triangles:', ' '.join(name(t) for t in tight))
