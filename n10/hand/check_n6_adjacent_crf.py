"""Replay the printed rational area bounds for the adjacent-cap triangle CRF."""

from collections import Counter
from fractions import Fraction
from pathlib import Path


S = Fraction(93, 1000)
ALPHA = Fraction(1037, 10000)
TARGET = Fraction(347, 500)


def leaf_value(rectangle, reason):
    (c_low, c_high), (e_low, e_high), (f_low, f_high) = rectangle
    if 2 * f_high <= c_low:
        height = S / f_high + S / (c_high - f_high)
    else:
        height = 4 * S / c_high
    height = max(e_low, height)
    extent = (1 - f_high) * (1 - height) + f_high * (1 - e_low)
    assert extent > 0
    top_limit = 1 - f_low - S / extent
    if reason == "top":
        assert top_limit < 0
        return top_limit

    assert top_limit >= 0
    denominator = max(
        top_limit * endpoint + (1 - endpoint) * (1 - c_low)
        for endpoint in (e_low, e_high)
    )
    assert denominator > 0 and c_high > ALPHA
    difference_low = S / min(denominator, 1 - c_low)
    difference_high = e_high - S / (c_high - ALPHA)
    if reason == "cost":
        assert difference_low > difference_high
        return difference_low - difference_high

    assert reason == "area" and difference_low <= difference_high
    slope = max(Fraction(0), c_low - f_high)
    points = [difference_low]
    if top_limit > 0 and S / top_limit >= difference_low:
        points.append(S / top_limit)
    penalty = min(
        slope * point + max(Fraction(0), S - top_limit * point) / (1 - e_low)
        for point in points
    )
    c_star = max(c_low, f_low)
    ceiling = (1 - e_high) * (1 - c_star) + e_high * (1 - f_low) - penalty
    assert ceiling < TARGET
    return ceiling


def audit(path):
    _, block = path.read_text().split("```text\n")
    *records, fence = block.splitlines()
    assert fence == "```"
    rows = {}
    for record in records:
        name, kind, parameter, expected = record.split(",")
        assert name not in rows
        rows[name] = kind, parameter, Fraction(expected)
    domain = ((4 * S, 1 - S), (4 * S, 1 - S), (ALPHA, TARGET))
    pending = [("r", domain)]
    counts = Counter()
    ceilings = []
    while pending:
        name, rectangle = pending.pop()
        kind, parameter, expected = rows.pop(name)
        if kind == "split":
            index = int(parameter)
            assert 0 <= index < len(rectangle)
            low, high = rectangle[index]
            assert low < expected < high
            for label, interval in (("L", (low, expected)), ("H", (expected, high))):
                child = rectangle[:index] + (interval,) + rectangle[index + 1 :]
                pending.append((name + label, child))
            counts["split"] += 1
        else:
            assert kind == "leaf"
            assert leaf_value(rectangle, parameter) == expected
            if parameter == "area":
                ceilings.append(expected)
            counts[parameter] += 1
    assert not rows
    assert counts == Counter(split=302, area=282, top=14, cost=7)
    return counts, max(ceilings)


if __name__ == "__main__":
    print(audit(Path(__file__).with_name("N6_ADJACENT_CAPS_CRF_TABLE.md")))
