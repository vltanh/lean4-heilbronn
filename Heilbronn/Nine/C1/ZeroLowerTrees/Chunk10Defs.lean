module

public import Heilbronn.Nine.C1.ZeroLowerModel
public import Heilbronn.Common.DataReader

/-! # Zero-lower C1 cover, chunk 10: the parts of the tree of the case [3, 3, 4, 7]

Split by `scripts/nine/c1_zero_lower/split_chunk.py`. -/

@[expose] public section

namespace Heilbronn.Nine.C1ZeroLower.Trees

open Cover Model

noncomputable def part10_nn : Cover.Tree Split :=
  .node (.tri 1 5 7) [.node (.tri 0 7 8) [.cert (term_rows% "../../../../data/nine/c1_zero_lower/c183.txt"), .node (.tri 3 5 6) [.cert (term_rows% "../../../../data/nine/c1_zero_lower/c184.txt"), .cert (term_rows% "../../../../data/nine/c1_zero_lower/c185.txt")]], .node (.tri 1 6 7) [.cert (term_rows% "../../../../data/nine/c1_zero_lower/c186.txt"), .cert (term_rows% "../../../../data/nine/c1_zero_lower/c187.txt")]]

noncomputable def part10_npn : Cover.Tree Split :=
  .node (.tri 3 5 6) [.node (.tri 0 6 7) [.node (.tri 6 7 8) [.cert (term_rows% "../../../../data/nine/c1_zero_lower/c188.txt"), .cert (term_rows% "../../../../data/nine/c1_zero_lower/c189.txt")], .node (.tri 5 6 7) [.cert (term_rows% "../../../../data/nine/c1_zero_lower/c190.txt"), .cert (term_rows% "../../../../data/nine/c1_zero_lower/c191.txt")]], .node (.tri 6 7 8) [.cert (term_rows% "../../../../data/nine/c1_zero_lower/c192.txt"), .node (.tri 2 5 6) [.node (.tri 1 5 6) [.cert (term_rows% "../../../../data/nine/c1_zero_lower/c193.txt"), .cert (term_rows% "../../../../data/nine/c1_zero_lower/c194.txt")], .node (.tri 0 6 7) [.cert (term_rows% "../../../../data/nine/c1_zero_lower/c195.txt"), .cert (term_rows% "../../../../data/nine/c1_zero_lower/c196.txt")]]]]

noncomputable def part10_npp : Cover.Tree Split :=
  .node (.tri 3 5 6) [.cert (term_rows% "../../../../data/nine/c1_zero_lower/c197.txt"), .node (.tri 4 6 7) [.node (.tri 6 7 8) [.cert (term_rows% "../../../../data/nine/c1_zero_lower/c198.txt"), .node (.tri 2 5 6) [.cert (term_rows% "../../../../data/nine/c1_zero_lower/c199.txt"), .cert (term_rows% "../../../../data/nine/c1_zero_lower/c200.txt")]], .node (.tri 2 5 6) [.cert (term_rows% "../../../../data/nine/c1_zero_lower/c201.txt"), .cert (term_rows% "../../../../data/nine/c1_zero_lower/c202.txt")]]]

noncomputable def part10_np : Cover.Tree Split :=
  .node (.tri 4 5 7) [part10_npn, part10_npp]

noncomputable def part10_n : Cover.Tree Split :=
  .node (.tri 0 5 7) [part10_nn, part10_np]

noncomputable def part10_pnn : Cover.Tree Split :=
  .node (.tri 3 5 6) [.cert (term_rows% "../../../../data/nine/c1_zero_lower/c203.txt"), .node (.tri 2 5 6) [.cert (term_rows% "../../../../data/nine/c1_zero_lower/c204.txt"), .cert (term_rows% "../../../../data/nine/c1_zero_lower/c205.txt")]]

noncomputable def part10_pnp : Cover.Tree Split :=
  .node (.tri 4 5 6) [.cert (term_rows% "../../../../data/nine/c1_zero_lower/c206.txt"), .node (.tri 1 6 7) [.node (.tri 0 6 8) [.node (.tri 3 5 6) [.cert (term_rows% "../../../../data/nine/c1_zero_lower/c207.txt"), .cert (term_rows% "../../../../data/nine/c1_zero_lower/c208.txt")], .cert (term_rows% "../../../../data/nine/c1_zero_lower/c209.txt")], .node (.tri 0 6 8) [.node (.tri 0 7 8) [.cert (term_rows% "../../../../data/nine/c1_zero_lower/c210.txt"), .cert (term_rows% "../../../../data/nine/c1_zero_lower/c211.txt")], .node (.tri 0 5 7) [.node (.tri 2 5 6) [.cert (term_rows% "../../../../data/nine/c1_zero_lower/c212.txt"), .cert (term_rows% "../../../../data/nine/c1_zero_lower/c213.txt")], .cert (term_rows% "../../../../data/nine/c1_zero_lower/c214.txt")]]]]

noncomputable def part10_pn : Cover.Tree Split :=
  .node (.tri 1 5 7) [part10_pnn, part10_pnp]

noncomputable def part10_ppn : Cover.Tree Split :=
  .node (.tri 0 6 8) [.node (.tri 0 6 7) [.node (.tri 1 6 7) [.cert (term_rows% "../../../../data/nine/c1_zero_lower/c215.txt"), .cert (term_rows% "../../../../data/nine/c1_zero_lower/c216.txt")], .node (.tri 4 6 7) [.node (.tri 2 5 6) [.cert (term_rows% "../../../../data/nine/c1_zero_lower/c217.txt"), .node (.tri 4 5 7) [.cert (term_rows% "../../../../data/nine/c1_zero_lower/c218.txt"), .cert (term_rows% "../../../../data/nine/c1_zero_lower/c219.txt")]], .cert (term_rows% "../../../../data/nine/c1_zero_lower/c220.txt")]], .node (.tri 3 5 6) [.cert (term_rows% "../../../../data/nine/c1_zero_lower/c221.txt"), .node (.tri 2 5 6) [.cert (term_rows% "../../../../data/nine/c1_zero_lower/c222.txt"), .cert (term_rows% "../../../../data/nine/c1_zero_lower/c223.txt")]]]

noncomputable def part10_ppp : Cover.Tree Split :=
  .node (.tri 0 6 7) [.node (.tri 1 6 7) [.node (.tri 4 5 7) [.cert (term_rows% "../../../../data/nine/c1_zero_lower/c224.txt"), .cert (term_rows% "../../../../data/nine/c1_zero_lower/c225.txt")], .node (.tri 4 5 7) [.cert (term_rows% "../../../../data/nine/c1_zero_lower/c226.txt"), .cert (term_rows% "../../../../data/nine/c1_zero_lower/c227.txt")]], .node (.tri 4 6 7) [.node (.tri 4 5 7) [.cert (term_rows% "../../../../data/nine/c1_zero_lower/c228.txt"), .cert (term_rows% "../../../../data/nine/c1_zero_lower/c229.txt")], .cert (term_rows% "../../../../data/nine/c1_zero_lower/c230.txt")]]

noncomputable def part10_pp : Cover.Tree Split :=
  .node (.tri 0 7 8) [part10_ppn, part10_ppp]

noncomputable def part10_p : Cover.Tree Split :=
  .node (.tri 5 7 8) [part10_pn, part10_pp]

noncomputable def part10_ : Cover.Tree Split :=
  .node (.tri 0 5 8) [part10_n, part10_p]

end Heilbronn.Nine.C1ZeroLower.Trees
