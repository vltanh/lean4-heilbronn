"""Verify the rational box inequalities for the RFH area bound."""

from collections import Counter
from fractions import Fraction as F
from pathlib import Path


S = F(93, 1000)
ALPHA = F(1037, 10000)
TARGET = F(347, 500)


def leaf(box, test):
    (c0, c1), (e0, e1), (f0, f1) = box
    assert c1 - ALPHA > S
    b0 = max(ALPHA, S / (1 - S / (c1 - ALPHA)))
    if test == "order":
        value = max(b0 - f1, f0 - c1)
        assert value > 0
        return value

    assert c1 > b0
    d0 = S / (c1 - b0)
    h0 = max(e0, 4 * S / c1)
    if 2 * f1 <= c0:
        h0 = max(h0, S / f1 + S / (c1 - f1))
    top_extent = 1 - h0 + f1 * (h0 - e0)
    assert top_extent > 0
    extent = 1 - f0 - S / top_extent
    assert extent >= 0
    support = max(x * extent + (1 - x) * (1 - c0) for x in (e0, e1))
    assert support > 0 and c0 < 1
    d_difference_floor = S / min(support, 1 - c0)
    d_difference_ceiling = e1 - d0
    if test == "cost":
        value = d_difference_ceiling - d_difference_floor
        assert value < 0
        return value

    assert test == "area" and h0 <= 1
    assert 0 < d_difference_floor <= d_difference_ceiling
    delta = max(0, (S - extent * d_difference_ceiling) / (1 - e0))
    value = (1 - delta) * (1 - h0) + min(c1, f1) * max(0, h0 - d0)
    assert value < TARGET
    return value


def audit(path):
    block = path.read_text().split("```text\n", 1)[1]
    *lines, close = block.splitlines()
    assert close == "```"
    records = {}
    for line in lines:
        name, kind, parameter, value = line.split(",")
        assert name not in records
        records[name] = kind, parameter, F(value)

    initial = ((4 * S, 1 - S), (4 * S, 1 - S), (ALPHA, 1 - S))
    pending = [("r", initial)]
    counts = Counter()
    while pending:
        name, box = pending.pop()
        kind, parameter, value = records.pop(name)
        if kind == "split":
            axis = int(parameter)
            assert 0 <= axis < len(box)
            low, high = box[axis]
            assert low < value < high and 2 * value == low + high
            for letter, pair in (("L", (low, value)), ("H", (value, high))):
                pending.append((name + letter, box[:axis] + (pair,) + box[axis + 1 :]))
            counts[kind] += 1
        else:
            assert kind == "leaf" and leaf(box, parameter) == value
            counts[parameter] += 1
    assert not records
    assert counts == Counter(split=411, order=2, cost=203, area=207)
    return counts


if __name__ == "__main__":
    print(audit(Path(__file__).with_name("N6_ADJACENT_CAPS_RFH_TABLE.md")))
