# Exclusion of the ITTT six-contact count

Use the ten distinct actual points, six-contact order, closed
square-side conventions, and minimum unsigned doubled triangle
area \(s=93/1000\) of
[N6_TOP_TRIPLE_SETUP.md](N6_TOP_TRIPLE_SETUP.md). The actual
point \(P\) is strictly inside the upper contact quadrilateral
\(HCEF\), and the three actual points \(Q,R,S\) lie in the
closed top cap \(EF(1,1)\), strictly on the corner side of
\(EF\).

**Theorem.** The ITTT placement count is impossible.

Order the rays from \(E\) so that \(EQR,EQS,ERS>0\).
These rays are distinct, since every actual triangle has nonzero
area. Let the word record the signs of \(FQR,FQS,FRS,QRS\).
The sixteen-word catalogue in the setup excludes eight words by
the five-label determinant identity and two more by the actual
endpoint-support bounds. The six surviving words are

\[
 ----,\quad ---+,\quad --+-,\quad -++-,\quad +--+,\quad ++-+.
\]

The actual transposition and relabeling of
[N6_TOP_TRIPLE_TRANSPOSE.md](N6_TOP_TRIPLE_TRANSPOSE.md)
preserve the ITTT placement, all unsigned actual areas, and this
complete six-word set. They exchange \(e,f\). In particular,
transposition exchanges `----` with `---+`, exchanges `-++-`
with `++-+`, and preserves each of `--+-` and `+--+` after
the prescribed ray relabeling. Therefore every remaining
configuration has an equivalent representative with \(e\le f\).
Equality is included.

All six normalized words have the following written exclusions.
The linked notes and their literal geometric and arithmetic tables
form the respective proofs.

| Normalized top word | Written exclusion | Binary sign splits | Leaves |
| --- | --- | --- | --- |
| `----` | [N6_BTTT_REMAINING_ITTT_TRIANGULAR.md](N6_BTTT_REMAINING_ITTT_TRIANGULAR.md) | 5 | 6 |
| `---+` | [N6_BTTT_REMAINING_ITTT_TRIANGULAR.md](N6_BTTT_REMAINING_ITTT_TRIANGULAR.md) | 7 | 8 |
| `--+-` | [N6_ITTT_TOP_TRIANGLE_WORD.md](N6_ITTT_TOP_TRIANGLE_WORD.md) | 19 | 20 |
| `-++-` | [N6_BTTT_REMAINING_ITTT_EARS.md](N6_BTTT_REMAINING_ITTT_EARS.md) | 10 | 11 |
| `++-+` | [N6_BTTT_REMAINING_ITTT_EARS.md](N6_BTTT_REMAINING_ITTT_EARS.md) | 9 | 10 |
| `+--+` | [N6_BTTT_REMAINING_ITTT_CENTRAL.md](N6_BTTT_REMAINING_ITTT_CENTRAL.md) | 145 | 146 |

Every split is the positive or negative alternative of a nonzero
actual determinant; both children are printed. The six trees have
195 such splits and 201 contradictory leaves, with no coordinate
cuts. Capacity-forced signs use their proved actual-area upper
sources and introduce no additional alternatives. Each theorem
uses the actual upper placement \(P\in\operatorname{int}HCEF\).
Any additional \(HP\) or \(CP\) sign is established within its
own tree.

Each of the six written exclusions has passed author literal replay
and independent geometric and exact-arithmetic review. In particular,
the final central word has a complete 291-node binary tree; its
coordinate-product, affine, capacity-sign-conflict, and zero-barycentric
terminals have all been reconstructed independently. The linked
theorems therefore exclude every surviving normalized word.
Applying the actual transposition when necessary excludes every
ITTT configuration and proves the theorem.

This assembly introduces no new area inequality, numerical source,
or geometric inference. Together with
[N6_BTTT_REMAINING_COUNT.md](N6_BTTT_REMAINING_COUNT.md), it
excludes both top-triple placement counts BTTT and ITTT.
