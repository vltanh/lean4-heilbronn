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
            closed = case_id == "N6-02" and n0 == 1
            for sector in sector_choices(n_i - n0):
                indices = "".join(str(j + 1) for j in sector) or "0"
                names = "+".join(SECTORS[j] for j in sector) or "-"
                yield make_row(
                    f"{case_id}-L{n0}-S{indices}", "N6",
                    l, t, r, n0, n_i - n0, n_i, names, "-", "-", closed,
                    "SIX_BOUNDARY_TWO_SIDE_COMPLETION.md")

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
                    closed = n0 == 1 and (left, top, right, inside) == (0,1,0,2)
                    wedges = ("-",) if n0 == 0 else ("W1", "W2", "W3")
                    for wedge in wedges:
                        for sector in sector_choices(inside):
                            indices = "".join(str(j + 1) for j in sector) or "0"
                            names = "+".join(SECTORS[j] for j in sector) or "-"
                            suffix = f"-S{indices}" if n0 == 0 else f"-{wedge}-S{indices}"
                            yield make_row(
                                row + suffix, group, left, top, right,
                                n0, inside, inside, names, wedge, "-",
                                closed, "C1_ONE_LOWER_TOP_CAP.md")


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
        ("N6", "OPEN"): 37,
        ("N6", "CLOSED"): 1,
        ("N7", "CLOSED"): 16,
        ("C1-0", "OPEN"): 65,
        ("C1-1", "OPEN"): 84,
        ("C1-1", "CLOSED"): 18,
    }, counts

    print("PASS: 62 parent cases and 221 explicitly enumerated leaves")
    print("PASS: 186 open and 35 covered leaves, 221 distinct case IDs")
    print("NOTE: geometric feasibility and exact exclusion are NOT checked")


if __name__ == "__main__":
    main()
