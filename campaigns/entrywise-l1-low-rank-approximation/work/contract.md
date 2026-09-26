# Partial contract

The current source corpus uses a conjunction of polynomial comparisons, encoded as `{"variables":n,"constraints":[{"terms":[[integer_coefficient,[nonnegative_exponents,...]],...],"relation":op},...]}`. Relations are `=`, `!=`, `<`, `<=`, `>` and `>=` against zero. Covered positive outputs are rational vectors `{"values":[[numerator,positive_denominator],...]}`. `NO-SOLUTION` is accepted only after conclusive Z3 `unsat`. This is a finite test subdomain of the fixed existential-real source problem. The full source witness contract must also encode real algebraic values; a positive irrational case raises an explicit blocker rather than being mislabelled NO.

The target asks for a rank-bounded approximation to a rational matrix with unweighted entrywise L1 error strictly below a rational threshold. A factor witness, exact error calculation, conclusive target NO oracle and recovery contract remain to be fixed. `check.py --candidate` exits with the blocker.
