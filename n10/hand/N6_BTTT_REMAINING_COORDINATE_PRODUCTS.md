# Exact terminal certificates from products of coordinate polynomials

This note states the polynomial coefficient-ceiling rule already used
in [N6_TOP_TRIPLE_SETUP.md](N6_TOP_TRIPLE_SETUP.md), in a form that
keeps immutable actual-area and coordinate sources explicit. It does
not exclude a placement count or a particular numerical case.

Suppose an actual coordinate vector \(x\) has a completed proved box
\(\ell_i\le x_i\le u_i\), and proved polynomial inequalities give
\(F_j(x)\ge0\). Each source polynomial has its own explicit
geometric premise or immutable earlier bound. Let positive integers
\(n_k\) and finite source lists \(I_k\) be given, and expand exactly

\[
 P(x)=\sum_k n_k\prod_{j\in I_k}F_j(x).
\]

Then \(P(x)\ge0\). A repeated source in a product is permitted.
The source inequalities need hold at the actual point under the
printed case assumptions; they need not hold at every point of the
coordinate box.

Put \(d_i=x_i-\ell_i\) and \(w_i=u_i-\ell_i\ge0\). Expand

\[
 P(\ell+d)=c_\varnothing+\sum_{m\ne\varnothing}c_m d^m,
 \qquad d^m=\prod_{i\in m}d_i.
\]

A monomial is an index multiset, so repeated coordinates are included
with their multiplicities. Since \(0\le d_i\le w_i\),

\[
 P(x)\le U:=c_\varnothing+
       \sum_{m\ne\varnothing,\,c_m>0}c_m\prod_{i\in m}w_i.
\]

Indeed a nonconstant monomial is nonnegative, so a negative coefficient
contributes at most zero. A positive coefficient contributes at most
its displayed width product. The constant contributes its signed
value. Consequently \(U<0\) contradicts \(P(x)\ge0\).
This proof applies to every polynomial degree; multiaffinity is not
required for this terminal coefficient estimate.

In the ITTT application, each source is one of the following:
a proved unsigned actual-area lower or upper bound, a proved lower
or upper coordinate bound from the completed box, or a physical
nonnegative polynomial reconstructed by the geometric rules of its
case. Its literal source row states the complete polynomial and its
immutable bound or actual geometric witness. Products use one or two
of those sources, so the resulting degree is at most four.

An application prints every source, every positive integer product
weight, the full expanded polynomial, the full translated polynomial,
all width products, every coefficient contribution, and the exact
negative total. All sources, including ones whose coefficients later
cancel, must be verified before the terminal is used. A scalar bound
proved earlier in the same stage may be a source; a future bound, a
sibling case, or the terminal conclusion itself may not be one.

These products are terminal certificates. They do not become interval
refinement premises. In particular, no coordinate-box factor is used
to obtain the box that justifies its own nonnegativity. The completed
box and scalar derivations precede this polynomial comparison.
An optimization program may suggest a finite list of products and
weights, but every proof premise is the printed exact polynomial
arithmetic and the independently established sources above.
