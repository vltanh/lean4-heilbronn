# Exclusion of the BTTT six-contact count

Use the actual six-contact hypotheses, minimum unsigned doubled
area \(s=93/1000\), and top-word convention of
[N6_TOP_TRIPLE_SETUP.md](N6_TOP_TRIPLE_SETUP.md). There is one
actual point \(P\) in the lower contact quadrilateral \(HABC\),
and three actual points \(Q,R,S\) in the top cap. Square-side
positions are included as in that setup.

**Theorem.** The BTTT placement count is impossible.

The catalogue in the setup excludes ten of the sixteen possible
words \((\operatorname{sgn}FQR,\operatorname{sgn}FQS,
\operatorname{sgn}FRS,\operatorname{sgn}QRS)\). The six surviving
words form the invariant set

\[
 ----,\quad ---+,\quad --+-,\quad -++-,\quad +--+,\quad ++-+.
\]

The exact actual transposition and relabeling of
[N6_TOP_TRIPLE_TRANSPOSE.md](N6_TOP_TRIPLE_TRANSPOSE.md) preserve
this set and the BTTT count. They exchange \(e,f\). Hence it
suffices to exclude all six words under \(e\le f\), without any
extra assumption on an individual word before transposition.

The following written theorems exclude five of the normalized words.
Their literal geometric and exact-arithmetic tables are linked in
the respective main notes.

| Normalized top word | Written exclusion |
| --- | --- |
| `----` | [N6_BTTT_TOP_WORD_MMMM.md](N6_BTTT_TOP_WORD_MMMM.md) |
| `---+` | [N6_BTTT_REMAINING_TRIANGULAR.md](N6_BTTT_REMAINING_TRIANGULAR.md) |
| `--+-` | [N6_BTTT_TOP_TRIANGLE_WORD.md](N6_BTTT_TOP_TRIANGLE_WORD.md) |
| `-++-`, `++-+` | [N6_BTTT_TOP_EARS.md](N6_BTTT_TOP_EARS.md) |

It remains to combine the children of the central word `+--+`.
Its top hull \(EQRF\), containing \(S\), has cost \(Gs\),
where \(G=1457/250\). Normalization gives \(a,e\le33/125<3s\).
Thus \(ABC,ABE,ACE,BCE\) are empty actual triangles. Their
inward signs force \(ACP>0\). There are precisely two alternatives
for the nonzero actual determinant \([HBP]\):

| Additional actual signs | Written exclusion |
| --- | --- |
| \(HBP<0\) | [N6_BTTT_REMAINING_CENTRAL_EAR.md](N6_BTTT_REMAINING_CENTRAL_EAR.md) |
| \(HBP>0,AFP>0\) | [N6_BTTT_REMAINING_CENTRAL_POSITIVE.md](N6_BTTT_REMAINING_CENTRAL_POSITIVE.md) |
| \(HBP>0,AFP<0\) | [N6_BTTT_REMAINING_CENTRAL_NEGATIVE.md](N6_BTTT_REMAINING_CENTRAL_NEGATIVE.md) |

In the positive-\(HBP\) alternative, the actual determinant
\([AFP]\) is also nonzero, so its two displayed signs exhaust
that child. Consequently all central cases are impossible. Every
surviving normalized word is excluded, and actual transposition
then excludes every BTTT configuration. This proves the theorem.

The final negative-\(AFP\) child has passed both literal-manuscript
readers and independent geometric review, including every source scope
and twelve corruption probes. The earlier triangular, central-ear,
and positive-\(AFP\) children also have independent acceptance.
Independent review of this assembly checks the sixteen-word catalogue,
the transposition preserving the complete residual set, and both
nonzero-determinant binary alternatives. The entire count is excluded.
This combined-count note introduces no new area rule, numerical factor,
or unprinted sign inference. The ITTT count remains separate and open.
