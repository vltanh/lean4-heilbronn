"""Verify both printed adjacent-cap box covers using rational arithmetic."""

from fractions import Fraction as F
from pathlib import Path
import re


S = F(93, 1000)
ROOT = (4*S, 1-S)
HERE = Path(__file__).parent


def closed_boxes(paths, axes, root):
    """Read an exhaustive midpoint cover from its terminal path labels."""
    assert len(paths) == len(set(paths))
    pending = [("", paths, root)]
    while pending:
        prefix, descendants, box = pending.pop()
        if descendants == [prefix]:
            yield prefix, box
            continue
        assert prefix not in descendants
        next_letters = {word[len(prefix)] for word in descendants}
        lower = min(next_letters).lower()
        assert lower in axes and next_letters == {lower, lower.upper()}
        index = axes.index(lower)
        lo, hi = box[index]
        cut = (lo + hi)/2
        for letter, interval in ((lower, (lo, cut)), (lower.upper(), (cut, hi))):
            child = prefix + letter
            subtree = [word for word in descendants if word.startswith(child)]
            pending.append((child, subtree, box[:index] + (interval,) + box[index+1:]))


def contact_parameter(c):
    x = c - F(103, 1000)
    j = c - S*x/(x-S)
    return S/j, S*(1 + (S/(x-S))**2)/j**2


def left_cap():
    text = (HERE/"N6_ADJACENT_CAPS_SFHA_TABLE.md").read_text()
    rows = re.findall(r"\x60([cCeE]+)\x60 \| (right ear|[0-9]+) \|", text)
    ceilings = dict(rows)
    assert len(rows) == len(ceilings) == 177
    for path, ((c0, c1), (e0, e1)) in closed_boxes(list(ceilings), "ce", (ROOT, ROOT)):
        k0, r0 = contact_parameter(c0)
        k1, r1 = contact_parameter(c1)
        d = e1 - k1
        claim = ceilings[path]
        if claim == "right ear":
            assert (1-c0)*d < S
            continue
        assert d > 0 and (1-c0)*d >= S
        em = min(e1, max(e0, (1+k1)/2))
        lower = max(0, (S-(1-c0)*(em-k1)*(1-em))/(e1*d))
        slope = 1/e1-1
        if S*(2*e1-k1) >= (1-c0)*d*d:
            if e1 > k0 and S*r0 <= (1-e1)*(e1-k0)**2:
                bound = S/(e1*(e1-k0))-slope*(1-c0)
            elif S*r1 >= (1-e1)*d*d:
                bound = S/(e1*d)-slope*(1-c1)
            else:
                bound = S/(e1*d)-slope*(1-c0)
            lower = max(lower, bound)
        top = 1-lower
        assert top > 0 and (1-e0)*top >= S
        positive = max(0, (1-e0)*top-S-S/top)
        area = (1-k1)*top + top*positive**2/(4*S)
        assert 10**6*area <= int(claim) < 787000
    print("SFHA: all 177 rectangles and strict ceilings verified")


def height_bound_trace(c1, e0, t1, trace):
    h, b = F(1), F(103, 1000)
    for index in range(3):
        span = c1-b
        if span <= 0 or h*span <= S:
            assert index == len(trace)
            return "bottom"
        b = max(b, S*span/(h*span-S))
        high = min(c1, t1-S/(1-e0))
        if high < b:
            assert index == len(trace)
            return "top"
        label = trace[index]
        if label != "—":
            improved = F(label)/10000
            assert improved < h
            quadratic = improved-e0
            linear = (1-improved)*(1+t1)-(1-e0)*t1
            constant = (improved-1)*t1+S
            for f in (b, high):
                assert quadratic*f*f+linear*f+constant >= 0
            if quadratic > 0 and b <= -linear/(2*quadratic) <= high:
                assert 4*quadratic*constant >= linear*linear
            h = improved
        if h < e0:
            assert index+1 == len(trace)
            return "height"
    assert len(trace) == 3
    return h, b


def right_crossing():
    text = (HERE/"N6_ADJACENT_CAPS_HCR_TABLE.md").read_text()
    rows = re.findall(
        r"\x60([cCeEtT]+)\x60 \| ([0-9—· ]+|none) \| (bottom|top|height|gap|[0-9]+) \|",
        text,
    )
    records = {name: (trace, ceiling) for name, trace, ceiling in rows}
    assert len(rows) == len(records) == 767
    for path, ((c0, c1), (e0, e1), (t0, t1)) in closed_boxes(
        list(records), "cet", (ROOT, ROOT, (S, F(1)))
    ):
        trace, claim = records[path]
        stages = [] if trace == "none" else [word.strip() for word in trace.split("·")]
        source = height_bound_trace(c1, e0, t1, stages)
        if isinstance(source, str):
            assert source == claim
            continue
        h, b = source
        if c1 <= b:
            assert claim == "bottom"
            continue
        upper = e1-S/(c1-b)
        phi = max(e*(1-t0)+(1-e)*(1-c0) for e in (e0, e1))
        if phi <= 0:
            assert claim == "gap"
            continue
        lower = max(S/(1-c0), S/phi)
        if lower > upper:
            assert claim == "gap"
            continue
        gaps = [lower, upper]
        if t0 < 1 and lower <= S/(1-t0) <= upper:
            gaps.append(S/(1-t0))
        area = max(h*(1-c0-max(0, (S-d*(1-t0))/(1-e0)))+c1*(e1-d) for d in gaps)
        assert 10**9*area <= int(claim) < 694000000
    print("HCR: all 767 rectangles, height traces and strict ceilings verified")


if __name__ == "__main__":
    left_cap()
    right_crossing()
