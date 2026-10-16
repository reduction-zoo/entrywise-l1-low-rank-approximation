module

public import Mathlib.Computability.TuringMachine.Computable
public import Mathlib.Analysis.Real.Sqrt

@[expose] public section

namespace EntrywiseL1

def encodeNat (n : Nat) : List Bool :=
  let bits := (Nat.toDigits 2 n).map (fun c => c == '1')
  List.replicate bits.length true ++ [false] ++ bits

def encodeList {α : Type} (encode : α → List Bool) (xs : List α) : List Bool :=
  encodeNat xs.length ++ xs.flatMap encode

def encodeInt (z : Int) : List Bool := [decide (z < 0)] ++ encodeNat z.natAbs
def encodeRat (q : Rat) : List Bool := encodeInt q.num ++ encodeNat q.den

inductive Expr where
  | constant : Int → Expr
  | var : Nat → Expr
  | add : Expr → Expr → Expr
  | mul : Expr → Expr → Expr
  | neg : Expr → Expr
  deriving Repr

inductive Formula where
  | equal : Expr → Expr → Formula
  | less : Expr → Expr → Formula
  | conj : Formula → Formula → Formula
  | disj : Formula → Formula → Formula
  | neg : Formula → Formula
  deriving Repr

structure Source where
  numVars : Nat
  formula : Formula
  deriving Repr

def legalExpr (n : Nat) : Expr → Bool
  | .constant _ => true
  | .var i => i < n
  | .add a b | .mul a b => legalExpr n a && legalExpr n b
  | .neg a => legalExpr n a

def legalFormula (n : Nat) : Formula → Bool
  | .equal a b | .less a b => legalExpr n a && legalExpr n b
  | .conj a b | .disj a b => legalFormula n a && legalFormula n b
  | .neg a => legalFormula n a

def legalSource (x : Source) : Bool := legalFormula x.numVars x.formula

def evalExpr (values : Nat → ℝ) : Expr → ℝ
  | .constant z => z
  | .var i => values i
  | .add a b => evalExpr values a + evalExpr values b
  | .mul a b => evalExpr values a * evalExpr values b
  | .neg a => -evalExpr values a

def evalFormula (values : Nat → ℝ) : Formula → Prop
  | .equal a b => evalExpr values a = evalExpr values b
  | .less a b => evalExpr values a < evalExpr values b
  | .conj a b => evalFormula values a ∧ evalFormula values b
  | .disj a b => evalFormula values a ∨ evalFormula values b
  | .neg a => ¬ evalFormula values a

def sourceYes (x : Source) : Prop := ∃ values : Nat → ℝ, evalFormula values x.formula

def encodeExpr : Expr → List Bool
  | .constant z => [false,false,false] ++ encodeInt z
  | .var i => [false,false,true] ++ encodeNat i
  | .add a b => [false,true,false] ++ encodeExpr a ++ encodeExpr b
  | .mul a b => [false,true,true] ++ encodeExpr a ++ encodeExpr b
  | .neg a => [true,false,false] ++ encodeExpr a

def encodeFormula : Formula → List Bool
  | .equal a b => [false,false,false] ++ encodeExpr a ++ encodeExpr b
  | .less a b => [false,false,true] ++ encodeExpr a ++ encodeExpr b
  | .conj a b => [false,true,false] ++ encodeFormula a ++ encodeFormula b
  | .disj a b => [false,true,true] ++ encodeFormula a ++ encodeFormula b
  | .neg a => [true,false,false] ++ encodeFormula a

def encodeSource (x : Source) : List Bool := encodeNat x.numVars ++ encodeFormula x.formula

structure Instance where
  rows : Nat
  cols : Nat
  matrix : List (List Rat)
  rankBound : Nat
  threshold : Rat
  deriving Repr

def shape {α : Type} (rows cols : Nat) (matrix : List (List α)) : Bool :=
  matrix.length == rows && matrix.all (fun row => row.length == cols)

def legalTarget (x : Instance) : Bool :=
  shape x.rows x.cols x.matrix && x.threshold > 0

def realEntry (a : List (List ℝ)) (i j : Nat) : ℝ := (a[i]?.getD [])[j]?.getD 0
def rationalEntry (a : List (List Rat)) (i j : Nat) : ℝ :=
  (((a[i]?.getD [])[j]?.getD 0 : Rat) : ℝ)

def productEntry (u v : List (List ℝ)) (width i j : Nat) : ℝ :=
  ((List.range width).map (fun k => realEntry u i k * realEntry v k j)).sum

def totalError (x : Instance) (u v : List (List ℝ)) : ℝ :=
  ((List.range x.rows).flatMap (fun i => (List.range x.cols).map (fun j =>
    |rationalEntry x.matrix i j - productEntry u v x.rankBound i j|))).sum

def targetYes (x : Instance) : Prop := ∃ u v : List (List ℝ),
  shape x.rows x.rankBound u = true ∧ shape x.rankBound x.cols v = true ∧
  totalError x u v < (x.threshold : ℝ)

def encodeTarget (x : Instance) : List Bool :=
  encodeList encodeNat (List.range x.rows) ++ encodeList encodeNat (List.range x.cols) ++
  encodeList (encodeList encodeRat) x.matrix ++ encodeNat x.rankBound ++ encodeRat x.threshold

/-- Standard decision reduction. Boolean-answer recovery is the identity. -/
def Reduction (forward : Source → Instance) : Prop :=
  Nonempty (Turing.TM2ComputableInPolyTime encodeSource encodeTarget forward) ∧
  (∃ bound : Polynomial Nat, ∀ x,
    (encodeTarget (forward x)).length ≤ bound.eval (encodeSource x).length) ∧
  (∀ x, legalSource x = true → legalTarget (forward x) = true) ∧
  (∀ x, legalSource x = true → (sourceYes x ↔ targetYes (forward x)))

def Goal : Prop := ∃ forward, Reduction forward

/-- The open reduction is deliberately unproved. -/
theorem solve : Goal := by
  sorry

end EntrywiseL1
