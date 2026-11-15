#!/usr/bin/env python3
"""Validate the itemized G6 occupation/sector census, not its geometry."""
import csv
from collections import Counter
from itertools import combinations, product
from pathlib import Path

SECTORS = ("HCJ", "CDJ", "DFJ", "FHJ")
N6 = (
    ("N6-01", 0, 0, 1, 2),
    ("N6-02", 1, 0, 1, 1),
    ("N6-03", 0, 1, 0, 2),
    ("N6-04", 0, 1, 1, 1),
    ("N6-05", 1, 1, 1, 0),
    ("N6-06", 0, 2, 0, 1),
    ("N6-07", 0, 2, 1, 0),
    ("N6-08", 0, 3, 0, 0),
)
HEADER = ("id", "group", "l", "t", "r", "lower", "upper", "inner",
          "sectors", "wedge", "signs", "status", "proof")


N6_CLOSED = {"N6-04-L1":"SIX_BOUNDARY_SIDE_TOP_LOWER.md","N6-01-L0":"SIX_BOUNDARY_SINGLE_SIDE.md","N6-01-L1":"SIX_BOUNDARY_SINGLE_SIDE.md","N6-02-L0":"SIX_BOUNDARY_TWO_SIDE_UPPER.md","N6-02-L1":"SIX_BOUNDARY_TWO_SIDE_COMPLETION.md","N6-05-L0":"SIX_BOUNDARY_TWO_SIDE_UPPER.md","N6-07-L0":"SIX_BOUNDARY_SIDE_TWO_TOP.md","N6-08-L0":"SIX_BOUNDARY_OPPOSITE_CAP_COMPLETION.md"}
C1_ONE_CLOSED = {"C1-1-10":"C1_ONE_LOWER_TOP_MULTIPLICITY.md","C1-1-11":"C1_ONE_LOWER_TOP_MULTIPLICITY.md","C1-1-12":"C1_ONE_LOWER_TOP_MULTIPLICITY.md","C1-1-01":"C1_ONE_LOWER_SIDE_CAP.md","C1-1-02":"C1_ONE_LOWER_RIGHT_PAIR.md","C1-1-03":"C1_ZERO_LOWER.md","C1-1-05":"C1_ZERO_LOWER.md","C1-1-06":"C1_ONE_LOWER_TOP_CAP.md","C1-1-08":"C1_ONE_LOWER_RIGHT_PAIR.md","C1-1-09":"C1_ONE_LOWER_EIGHT_HULL.md"}


def sector_choices(k):
    return combinations(range(4), k)


def make_row(case_id, group, l, t, r, lower, upper, inner,
             sector, wedge, signs, closed, proof):
    vals = (case_id, group, l, t, r, lower, upper, inner, sector, wedge,
            signs, "CLOSED" if closed else "OPEN", proof if closed else "-")
    return dict(zip(HEADER, map(str, vals)))


def expected():
    for case_id, l, t, r, n_i in N6:
        for n0 in range(min(1, n_i) + 1):
            proof = N6_CLOSED.get(f"{case_id}-L{n0}")
            closed = proof is not None
            for sector in sector_choices(n_i - n0):
                indices = "".join(str(j + 1) for j in sector) or "0"
                names = "+".join(SECTORS[j] for j in sector) or "-"
                yield make_row(
                    f"{case_id}-L{n0}-S{indices}", "N6",
                    l, t, r, n0, n_i - n0, n_i, names, "-", "-", closed,
                    proof)

    for left_bits in product("PM", repeat=2):
        for right_bits in product("PM", repeat=2):
            w = "".join(left_bits + right_bits)
            sign_word = w.replace("P", "+").replace("M", "-")
            yield make_row(
                f"N7-{w[:2]}-{w[2:]}", "N7",
                "-", "-", "-", "-", "-", "-", "-", "-", sign_word,
                True, "SEVEN_BOUNDARY_MIXED_ABOVE_COMPLETION.md")

    for n0 in (0, 1):
        m = 4 - n0
        counter = 0
        for top in range(m + 1):
            for left in range(m + 1):
                for right in range(left, m + 1):
                    inside = m - top - left - right
                    if inside < 0 or left + top + right == 0:
                        continue
                    counter += 1
                    group = f"C1-{n0}"
                    row = f"{group}-{counter:02}"
                    proof = "C1_ZERO_LOWER.md" if n0 == 0 else C1_ONE_CLOSED.get(row)
                    closed = proof is not None
                    wedges = ("-",) if n0 == 0 else ("W1", "W2", "W3")
                    for wedge in wedges:
                        for sector in sector_choices(inside):
                            indices = "".join(str(j + 1) for j in sector) or "0"
                            names = "+".join(SECTORS[j] for j in sector) or "-"
                            suffix = f"-S{indices}" if n0 == 0 else f"-{wedge}-S{indices}"
                            yield make_row(
                                row + suffix, group, left, top, right,
                                n0, inside, inside, names, wedge, "-",
                                closed, proof)


def main():
    path = Path(__file__).with_name("G6_ITEMIZED_LEAVES.tsv")
    with path.open(newline="", encoding="utf-8") as fp:
        reader = csv.DictReader(fp, delimiter="\t")
        assert reader.fieldnames == list(HEADER), reader.fieldnames
        actual = list(reader)

    want = list(expected())
    assert len(want) == 221
    assert actual == want, next(
        (f"row {i}: actual={a!r}, expected={b!r}"
         for i, (a, b) in enumerate(zip(actual, want)) if a != b),
        f"length mismatch: {len(actual)} != {len(want)}"
    )
    assert len({r["id"] for r in actual}) == len(actual)
    counts = Counter((r["group"], r["status"]) for r in actual)
    assert counts == {
        ("N6", "OPEN"): 19,
        ("N6", "CLOSED"): 19,
        ("N7", "CLOSED"): 16,
        ("C1-0", "CLOSED"): 65,
        ("C1-1", "OPEN"): 24,
        ("C1-1", "CLOSED"): 78,
    }, counts

    print("PASS: 62 parent cases and 221 explicitly enumerated leaves")
    print("PASS: 43 open and 178 covered leaves, 221 distinct case IDs")
    print("NOTE: geometric feasibility and exact exclusion are NOT checked")


if __name__ == "__main__":
    main()
