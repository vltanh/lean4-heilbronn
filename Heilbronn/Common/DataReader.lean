module

public meta import Lean

/-!
# Reading certificate data from text files

`int_rows% "file"` is the `List (List Int)` whose rows are the nonempty lines of `file`, each a
list of decimal integers separated by spaces. `poly_rows% "file" k` reads each nonempty line as a
polynomial: groups of `k` natural-number exponents, each followed by an integer coefficient,
giving a `List (List Nat × Int)`; the value is the `List` of these polynomials. `term_rows% "file"`
reads each line `w i₁ … iₘ` as the pair `(w, [i₁, …, iₘ])`, a `List (Int × List Nat)`.

The terms are built directly from raw literals: a natural number is a raw literal, and an integer
is `Int.ofNat n` or `Int.negSucc n` with `n` a raw literal. No numeral is elaborated, so the
kernel reads each number in constant time and large tables elaborate quickly. The notation
produces data only; every property of the data is proved by a separate check. Paths are relative
to the directory of the source file. A module using the notation reads its files when it is
elaborated, so it must be rebuilt after a file changes.

Adapted from `SquaresInCircles/Eight/Certificates/Readers.lean` of
<https://github.com/vltanh/lean4-squares-in-circles> (Apache-2.0), by the same author.
-/

public meta section

open Lean Elab Term

namespace Heilbronn.DataReader

/-- The integer `z` as a constructor applied to a raw natural-number literal. -/
def intLit (z : Int) : Expr :=
  if 0 ≤ z then mkApp (Lean.mkConst ``Int.ofNat) (mkRawNatLit z.toNat)
  else mkApp (Lean.mkConst ``Int.negSucc) (mkRawNatLit (z.natAbs - 1))

/-- The list `[x₀, …, xₙ]` of elements of type `ty`. -/
def listLit (ty : Expr) (xs : List Expr) : Expr :=
  xs.foldr (fun x acc => mkApp3 (Lean.mkConst ``List.cons [.zero]) ty x acc)
    (mkApp (Lean.mkConst ``List.nil [.zero]) ty)

/-- The pair `(a, b)` of types `α` and `β`. -/
def pairLit (α β a b : Expr) : Expr :=
  mkApp4 (Lean.mkConst ``Prod.mk [.zero, .zero]) α β a b

/-- The integers of one line, separated by spaces. -/
def parseLine (file : String) (n : Nat) (line : String) : TermElabM (List Int) :=
  ((line.splitOn " ").filter (· ≠ "")).mapM fun s =>
    match s.toInt? with
    | some z => pure z
    | none => throwError "{file}, line {n + 1}: not an integer: {s}"

/-- The nonempty lines of the file `path`, relative to the current source file, as lists of
integers. -/
def readRows (path : String) : TermElabM (List (List Int)) := do
  let dir := (System.FilePath.mk (← getFileName)).parent.getD "."
  let file := dir / path
  let text ← try IO.FS.readFile file
    catch e => throwError "cannot read {file}: {e.toMessageData}"
  let lines := (text.splitOn "\n").filter (fun l => !l.trimAscii.isEmpty)
  lines.zipIdx.mapM fun (l, n) => parseLine file.toString n l

/-- `int_rows% "file"`: the rows of the integer data file. -/
syntax (name := intRows) "int_rows% " str : term
/-- `poly_rows% "file" k`: the polynomials of the file, one per line, in `k` variables. -/
syntax (name := polyRows) "poly_rows% " str ppSpace num : term
/-- `key_rows% "file"`: polynomials, one per line, as pairs `key coefficient` of natural-number
monomial keys and integer coefficients, giving a `List (List (Nat × Int))`. -/
syntax (name := keyRows) "key_rows% " str : term
/-- `term_rows% "file"`: the weighted index lists of the file, one per line. -/
syntax (name := termRows) "term_rows% " str : term

@[term_elab intRows] def elabIntRows : TermElab := fun stx _ => do
  let `(int_rows% $path:str) := stx | throwUnsupportedSyntax
  let rows ← readRows path.getString
  let intTy := Lean.mkConst ``Int
  return listLit (mkApp (Lean.mkConst ``List [.zero]) intTy) (rows.map (listLit intTy ∘ List.map intLit))

/-- The polynomial written as groups of `k` exponents, each followed by a coefficient. -/
def polyLit (file : String) (k : Nat) (row : List Int) : TermElabM Expr := do
  let natTy := Lean.mkConst ``Nat
  let intTy := Lean.mkConst ``Int
  let monoTy := mkApp (Lean.mkConst ``List [.zero]) natTy
  let termTy := mkApp2 (Lean.mkConst ``Prod [.zero, .zero]) monoTy intTy
  if row.length % (k + 1) != 0 then
    throwError "{file}: a polynomial row has {row.length} entries, not a multiple of {k + 1}"
  let rec go (fuel : Nat) (r : List Int) : TermElabM (List Expr) := do
    match fuel, r with
    | 0, _ => return []
    | _, [] => return []
    | fuel + 1, r => do
      let e := r.take k
      let c := (r.drop k).headD 0
      if e.any (· < 0) then throwError "{file}: negative exponent"
      let mono := listLit natTy (e.map (mkRawNatLit ∘ Int.toNat))
      let rest ← go fuel (r.drop (k + 1))
      return pairLit monoTy intTy mono (intLit c) :: rest
  return listLit termTy (← go row.length row)

@[term_elab polyRows] def elabPolyRows : TermElab := fun stx _ => do
  let `(poly_rows% $path:str $k:num) := stx | throwUnsupportedSyntax
  let rows ← readRows path.getString
  let natTy := Lean.mkConst ``Nat
  let intTy := Lean.mkConst ``Int
  let monoTy := mkApp (Lean.mkConst ``List [.zero]) natTy
  let termTy := mkApp2 (Lean.mkConst ``Prod [.zero, .zero]) monoTy intTy
  let polyTy := mkApp (Lean.mkConst ``List [.zero]) termTy
  let polys ← rows.mapM (polyLit path.getString k.getNat)
  return listLit polyTy polys

@[term_elab keyRows] def elabKeyRows : TermElab := fun stx _ => do
  let `(key_rows% $path:str) := stx | throwUnsupportedSyntax
  let rows ← readRows path.getString
  let natTy := Lean.mkConst ``Nat
  let intTy := Lean.mkConst ``Int
  let termTy := mkApp2 (Lean.mkConst ``Prod [.zero, .zero]) natTy intTy
  let polyTy := mkApp (Lean.mkConst ``List [.zero]) termTy
  let polys ← rows.mapM fun r => do
    if r.length % 2 != 0 then throwError "key_rows%: odd row"
    let rec go (fuel : Nat) (r : List Int) : List Expr :=
      match fuel, r with
      | fuel + 1, k :: c :: rest => pairLit natTy intTy (mkRawNatLit k.toNat) (intLit c) :: go fuel rest
      | _, _ => []
    return listLit termTy (go r.length r)
  return listLit polyTy polys

@[term_elab termRows] def elabTermRows : TermElab := fun stx _ => do
  let `(term_rows% $path:str) := stx | throwUnsupportedSyntax
  let rows ← readRows path.getString
  let natTy := Lean.mkConst ``Nat
  let intTy := Lean.mkConst ``Int
  let idxTy := mkApp (Lean.mkConst ``List [.zero]) natTy
  let rowTy := mkApp2 (Lean.mkConst ``Prod [.zero, .zero]) intTy idxTy
  let items ← rows.mapM fun r => do
    let some w := r.head? | throwError "term_rows%: empty row"
    if r.tail.any (· < 0) then throwError "term_rows%: negative index"
    return pairLit intTy idxTy (intLit w) (listLit natTy (r.tail.map (mkRawNatLit ∘ Int.toNat)))
  return listLit rowTy items

end Heilbronn.DataReader
