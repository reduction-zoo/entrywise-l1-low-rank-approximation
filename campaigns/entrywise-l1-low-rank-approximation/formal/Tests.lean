import Challenge
open EntrywiseL1

example : sourceYes ⟨1, .equal (.mul (.var 0) (.var 0)) (.constant 2)⟩ := by
  refine ⟨fun _ => Real.sqrt 2, ?_⟩
  norm_num [sourceYes, evalFormula, evalExpr, ← pow_two, Real.sq_sqrt]

example : ¬ targetYes ⟨1, 1, [[1]], 0, 1⟩ := by
  norm_num [targetYes, totalError, productEntry, realEntry, rationalEntry]

example : targetYes ⟨1, 1, [[1]], 0, 2⟩ := by
  refine ⟨[[]], [], ?_⟩
  norm_num [shape, totalError, productEntry, realEntry, rationalEntry]
