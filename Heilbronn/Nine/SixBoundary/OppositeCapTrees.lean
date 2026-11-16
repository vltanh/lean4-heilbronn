module

public import Heilbronn.Nine.SixBoundary.OppositeCapModel
public import Heilbronn.Common.DataReader
public import Heilbronn.Nine.SixBoundary.OppositeCapTrees.Sharp

/-! # Opposite-cap cover

The cover `tree` of `Heilbronn.Nine.SixBoundary.OppositeCapModel` (2605 certificate terms in 15
leaves): checked by `tree_decide`. -/

@[expose] public section

namespace Heilbronn.Nine.SixBoundaryOppositeCapCompletion.Trees

open Cert Cert.Expr Cover Model

/-- The word cover. -/
noncomputable def tree : Cover.Tree Split :=
  .node (.vertex 4) [
    .node (.vertex 5) [
      .node (.vertex 0) [
        .node (.vertex 1) [
          .node (.vertex 2) [.node (.vertex 3) [.node (.vertex 6) [.node (.vertex 7) [.cert (term_rows% "../Data/six_opposite_cap/w54322156_whole.txt")]]], .node (.vertex 3) [.node (.vertex 6) []], .node (.vertex 3) [.node (.vertex 6) []]],
          .node (.vertex 2) [.node (.vertex 3) [.node (.vertex 6) []], .node (.vertex 3) [.node (.vertex 6) []], .node (.vertex 3) [.node (.vertex 6) []]],
          .node (.vertex 2) [.node (.vertex 3) [.node (.vertex 6) []], .node (.vertex 3) [.node (.vertex 6) []], .node (.vertex 3) [.node (.vertex 6) []]]],
        .node (.vertex 1) [
          .node (.vertex 2) [.node (.vertex 3) [.node (.vertex 6) []], .node (.vertex 3) [.node (.vertex 6) []], .node (.vertex 3) [.node (.vertex 6) []]],
          .node (.vertex 2) [.node (.vertex 3) [.node (.vertex 6) []], .node (.vertex 3) [.node (.vertex 6) []], .node (.vertex 3) [.node (.vertex 6) []]],
          .node (.vertex 2) [.node (.vertex 3) [.node (.vertex 6) []], .node (.vertex 3) [.node (.vertex 6) []], .node (.vertex 3) [.node (.vertex 6) []]]]],
      .node (.vertex 0) [
        .node (.vertex 1) [
          .node (.vertex 2) [.node (.vertex 3) [.node (.vertex 6) [.node (.vertex 7) [.cert (term_rows% "../Data/six_opposite_cap/w54322255_whole.txt")]]], .node (.vertex 3) [.node (.vertex 6) []], .node (.vertex 3) [.node (.vertex 6) []]],
          .node (.vertex 2) [.node (.vertex 3) [.node (.vertex 6) []], .node (.vertex 3) [.node (.vertex 6) []], .node (.vertex 3) [.node (.vertex 6) []]],
          .node (.vertex 2) [.node (.vertex 3) [.node (.vertex 6) []], .node (.vertex 3) [.node (.vertex 6) []], .node (.vertex 3) [.node (.vertex 6) []]]],
        .node (.vertex 1) [
          .node (.vertex 2) [.node (.vertex 3) [.node (.vertex 6) []], .node (.vertex 3) [.node (.vertex 6) []], .node (.vertex 3) [.node (.vertex 6) []]],
          .node (.vertex 2) [.node (.vertex 3) [.node (.vertex 6) []], .node (.vertex 3) [.node (.vertex 6) []], .node (.vertex 3) [.node (.vertex 6) []]],
          .node (.vertex 2) [.node (.vertex 3) [.node (.vertex 6) []], .node (.vertex 3) [.node (.vertex 6) []], .node (.vertex 3) [.node (.vertex 6) []]]]],
      .node (.vertex 0) [
        .node (.vertex 1) [
          .node (.vertex 2) [.node (.vertex 3) [.node (.vertex 6) [.node (.vertex 7) [.cert (term_rows% "../Data/six_opposite_cap/w44322355_whole.txt")]]], .node (.vertex 3) [.node (.vertex 6) []], .node (.vertex 3) [.node (.vertex 6) []]],
          .node (.vertex 2) [.node (.vertex 3) [.node (.vertex 6) []], .node (.vertex 3) [.node (.vertex 6) []], .node (.vertex 3) [.node (.vertex 6) []]],
          .node (.vertex 2) [.node (.vertex 3) [.node (.vertex 6) []], .node (.vertex 3) [.node (.vertex 6) []], .node (.vertex 3) [.node (.vertex 6) []]]]],
      .node (.vertex 0) [
        .node (.vertex 1) [
          .node (.vertex 2) [.node (.vertex 3) [.node (.vertex 6) [.node (.vertex 7) [.cert (term_rows% "../Data/six_opposite_cap/w43322455_whole.txt")]]], .node (.vertex 3) [.node (.vertex 6) []], .node (.vertex 3) [.node (.vertex 6) []]]]],
      .node (.vertex 0) [.node (.vertex 1) [.node (.vertex 2) [.node (.vertex 3) [.node (.vertex 6) [.node (.vertex 7) [.cert (term_rows% "../Data/six_opposite_cap/w43222555_whole.txt")]]]]]]],
    .node (.vertex 5) [
      .node (.vertex 0) [
        .node (.vertex 1) [
          .node (.vertex 2) [.node (.vertex 3) [.node (.vertex 6) [.node (.vertex 7) []]], .node (.vertex 3) [.node (.vertex 6) []], .node (.vertex 3) [.node (.vertex 6) []]],
          .node (.vertex 2) [.node (.vertex 3) [.node (.vertex 6) []], .node (.vertex 3) [.node (.vertex 6) []], .node (.vertex 3) [.node (.vertex 6) []]],
          .node (.vertex 2) [.node (.vertex 3) [.node (.vertex 6) []], .node (.vertex 3) [.node (.vertex 6) []], .node (.vertex 3) [.node (.vertex 6) []]]],
        .node (.vertex 1) [
          .node (.vertex 2) [.node (.vertex 3) [.node (.vertex 6) []], .node (.vertex 3) [.node (.vertex 6) []], .node (.vertex 3) [.node (.vertex 6) []]],
          .node (.vertex 2) [.node (.vertex 3) [.node (.vertex 6) []], .node (.vertex 3) [.node (.vertex 6) []], .node (.vertex 3) [.node (.vertex 6) []]],
          .node (.vertex 2) [.node (.vertex 3) [.node (.vertex 6) []], .node (.vertex 3) [.node (.vertex 6) []], .node (.vertex 3) [.node (.vertex 6) []]]]],
      .node (.vertex 0) [
        .node (.vertex 1) [
          .node (.vertex 2) [.node (.vertex 3) [.node (.vertex 6) [.node (.vertex 7) [.cert (term_rows% "../Data/six_opposite_cap/w54323254_whole.txt")]]], .node (.vertex 3) [.node (.vertex 6) []], .node (.vertex 3) [.node (.vertex 6) []]],
          .node (.vertex 2) [.node (.vertex 3) [.node (.vertex 6) []], .node (.vertex 3) [.node (.vertex 6) []], .node (.vertex 3) [.node (.vertex 6) []]],
          .node (.vertex 2) [.node (.vertex 3) [.node (.vertex 6) []], .node (.vertex 3) [.node (.vertex 6) []], .node (.vertex 3) [.node (.vertex 6) []]]],
        .node (.vertex 1) [
          .node (.vertex 2) [.node (.vertex 3) [.node (.vertex 6) []], .node (.vertex 3) [.node (.vertex 6) []], .node (.vertex 3) [.node (.vertex 6) []]],
          .node (.vertex 2) [.node (.vertex 3) [.node (.vertex 6) []], .node (.vertex 3) [.node (.vertex 6) []], .node (.vertex 3) [.node (.vertex 6) []]],
          .node (.vertex 2) [.node (.vertex 3) [.node (.vertex 6) []], .node (.vertex 3) [.node (.vertex 6) []], .node (.vertex 3) [.node (.vertex 6) []]]]],
      .node (.vertex 0) [
        .node (.vertex 1) [
          .node (.vertex 2) [.node (.vertex 3) [.node (.vertex 6) [.node (.vertex 7) [.cert (term_rows% "../Data/six_opposite_cap/w44323354_whole.txt")]]], .node (.vertex 3) [.node (.vertex 6) []], .node (.vertex 3) [.node (.vertex 6) []]],
          .node (.vertex 2) [.node (.vertex 3) [.node (.vertex 6) []], .node (.vertex 3) [.node (.vertex 6) []], .node (.vertex 3) [.node (.vertex 6) []]],
          .node (.vertex 2) [.node (.vertex 3) [.node (.vertex 6) []], .node (.vertex 3) [.node (.vertex 6) []], .node (.vertex 3) [.node (.vertex 6) []]]]],
      .node (.vertex 0) [.node (.vertex 1) [.node (.vertex 2) [.node (.vertex 3) [.node (.vertex 6) [.node (.vertex 7) [.closed 1]]], .node (.vertex 3) [.node (.vertex 6) []], .node (.vertex 3) [.node (.vertex 6) []]]]],
      .node (.vertex 0) [.node (.vertex 1) [.node (.vertex 2) [.node (.vertex 3) [.node (.vertex 6) [.node (.vertex 7) [.cert (term_rows% "../Data/six_opposite_cap/w43223554_whole.txt")]]]]]]],
    .node (.vertex 5) [
      .node (.vertex 0) [],
      .node (.vertex 0) [],
      .node (.vertex 0) [
        .node (.vertex 1) [.node (.vertex 2) [.node (.vertex 3) []], .node (.vertex 2) [.node (.vertex 3) []], .node (.vertex 2) [.node (.vertex 3) []]],
        .node (.vertex 1) [
          .node (.vertex 2) [.node (.vertex 3) [], .node (.vertex 3) [], .node (.vertex 3) []],
          .node (.vertex 2) [.node (.vertex 3) [], .node (.vertex 3) [], .node (.vertex 3) []],
          .node (.vertex 2) [.node (.vertex 3) [], .node (.vertex 3) [], .node (.vertex 3) []]],
        .node (.vertex 1) [
          .node (.vertex 2) [.node (.vertex 3) [.node (.vertex 6) [.node (.vertex 7) [.cert (term_rows% "../Data/six_opposite_cap/w34324354_whole.txt")]]], .node (.vertex 3) [.node (.vertex 6) []], .node (.vertex 3) [.node (.vertex 6) []]],
          .node (.vertex 2) [.node (.vertex 3) [.node (.vertex 6) []], .node (.vertex 3) [.node (.vertex 6) []], .node (.vertex 3) [.node (.vertex 6) []]],
          .node (.vertex 2) [.node (.vertex 3) [.node (.vertex 6) []], .node (.vertex 3) [.node (.vertex 6) []], .node (.vertex 3) [.node (.vertex 6) []]]]],
      .node (.vertex 0) [
        .node (.vertex 1) [.node (.vertex 2) [.node (.vertex 3) []]],
        .node (.vertex 1) [.node (.vertex 2) [.node (.vertex 3) [], .node (.vertex 3) [], .node (.vertex 3) []]],
        .node (.vertex 1) [
          .node (.vertex 2) [.node (.vertex 3) [.node (.vertex 6) [.node (.vertex 7) [.cert (term_rows% "../Data/six_opposite_cap/w33324454_whole.txt")]]], .node (.vertex 3) [.node (.vertex 6) []], .node (.vertex 3) [.node (.vertex 6) []]]]],
      .node (.vertex 0) [
        .node (.vertex 1) [.node (.vertex 2) []],
        .node (.vertex 1) [.node (.vertex 2) [.node (.vertex 3) []]],
        .node (.vertex 1) [.node (.vertex 2) [.node (.vertex 3) [.node (.vertex 6) [.node (.vertex 7) [.cert (term_rows% "../Data/six_opposite_cap/w33224554_whole.txt")]]]]]]],
    .node (.vertex 5) [
      .node (.vertex 0) [],
      .node (.vertex 0) [],
      .node (.vertex 0) [.node (.vertex 1) [], .node (.vertex 1) [], .node (.vertex 1) []],
      .node (.vertex 0) [
        .node (.vertex 1) [.node (.vertex 2) [.node (.vertex 3) []], .node (.vertex 2) [.node (.vertex 3) []]],
        .node (.vertex 1) [.node (.vertex 2) [.node (.vertex 3) [], .node (.vertex 3) [], .node (.vertex 3) []], .node (.vertex 2) [.node (.vertex 3) [], .node (.vertex 3) [], .node (.vertex 3) []]],
        .node (.vertex 1) [
          .node (.vertex 2) [.node (.vertex 3) [], .node (.vertex 3) [], .node (.vertex 3) []],
          .node (.vertex 2) [.node (.vertex 3) [.node (.vertex 6) [.node (.vertex 7) [.cert (term_rows% "../Data/six_opposite_cap/w32325454_whole.txt")]]], .node (.vertex 3) [.node (.vertex 6) []], .node (.vertex 3) [.node (.vertex 6) []]]]],
      .node (.vertex 0) [
        .node (.vertex 1) [.node (.vertex 2) [], .node (.vertex 2) []],
        .node (.vertex 1) [.node (.vertex 2) [.node (.vertex 3) []], .node (.vertex 2) [.node (.vertex 3) []]],
        .node (.vertex 1) [.node (.vertex 2) [.node (.vertex 3) []], .node (.vertex 2) [.node (.vertex 3) [.node (.vertex 6) [.node (.vertex 7) [.cert (term_rows% "../Data/six_opposite_cap/w32225554_whole.txt")]]]]]]],
    .node (.vertex 5) [
      .node (.vertex 0) [],
      .node (.vertex 0) [],
      .node (.vertex 0) [.node (.vertex 1) [], .node (.vertex 1) [], .node (.vertex 1) []],
      .node (.vertex 0) [.node (.vertex 1) [.node (.vertex 2) [], .node (.vertex 2) []], .node (.vertex 1) [.node (.vertex 2) [], .node (.vertex 2) []], .node (.vertex 1) [.node (.vertex 2) [], .node (.vertex 2) []]],
      .node (.vertex 0) [
        .node (.vertex 1) [.node (.vertex 2) [], .node (.vertex 2) []],
        .node (.vertex 1) [.node (.vertex 2) [.node (.vertex 3) []], .node (.vertex 2) [.node (.vertex 3) []]],
        .node (.vertex 1) [.node (.vertex 2) [.node (.vertex 3) []], .node (.vertex 2) [.node (.vertex 3) [.node (.vertex 6) [.node (.vertex 7) [.cert (term_rows% "../Data/six_opposite_cap/w32126554_whole.txt")]]]]]]]]

theorem tree_ok : checkTree spec [] tree = true := by
  tree_decide

end Heilbronn.Nine.SixBoundaryOppositeCapCompletion.Trees
