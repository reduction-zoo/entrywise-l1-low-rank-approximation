# Existential theory of the reals → Entrywise L1 low-rank approximation

Category: Complexity open

## Source

The source asks whether a finite existential formula of polynomial equalities and inequalities over the reals is satisfiable, using binary integer coefficients. Recovery must respect the campaign’s finite algebraic witness representation; an unsatisfiable instance returns NO-SOLUTION.

## Target

The target asks whether a binary rational matrix has a rank-bounded approximation with unweighted entrywise L1 error strictly less than a rational ε. The strict inequality is part of the question; an accepted factor witness uses the specified finite rational encoding.

## Required result

Construct deterministic polynomial-time maps F and G: F sends every legal source instance to a legal target instance, and G(x,y) is a valid source output for every valid output y of F(x). Preserve the stated threshold, domain and promises. The requested complexity conclusion is ∃R-hardness for the stated target problem.

## Acceptance

Give explicit construction and recovery algorithms, a general proof for every legal input and every valid target output, and polynomial runtime and encoding-size bounds. Specify finite output encodings and handle NO-SOLUTION outputs when applicable. Tests compare recovered source outputs with independent source solutions.

## Why it matters

Real-algebraic hardness would strengthen ordinary NP-hardness and identify a deeper obstruction in robust low-rank fitting.

## Difficulty

Encoding multiplication through an unweighted strict error threshold remains unresolved; a universal construction is needed.

## Literature context

Ordinary NP-hardness of low-rank approximation does not establish the proposed real-algebraic hardness under a strict, unweighted L1 threshold.

Literature checked 2026-09-15. This summarizes the archived literature search on the date above. Unpublished, unindexed and overlooked work remains outside coverage; no new novelty assessment was performed.

## References

- [On the Complexity of Robust PCA and L1-Norm Low-Rank Matrix Approximation](https://arxiv.org/pdf/1509.09236): - R1: Gillis and Vavasis, On the Complexity of Robust PCA and L1-Norm Low-Rank Matrix Approximation, Sections 4–5 and conclusion, pp. 9–14 of the inspected preprint; Mathematics of Operations Research 43, 1072–1084 (2018). - R2: Schaefer, Cardinal, Miltzow, The Existential Theory of the Reals as a Complexity Class: A Compendium, July 2024, A-Open8. This is the primary source of the stronger open classification; R1 supplies the applicable known hardness result. - R3: Affine Rank Minimization is ER-Complete, February 2026, problem formulation and main theorem. Inspected as a possible composition, not independently verified in full.
- [Mathematics of Operations Research 43, 1072–1084 (2018)](https://doi.org/10.1287/moor.2017.0895): - R1: Gillis and Vavasis, On the Complexity of Robust PCA and L1-Norm Low-Rank Matrix Approximation, Sections 4–5 and conclusion, pp. 9–14 of the inspected preprint; Mathematics of Operations Research 43, 1072–1084 (2018). - R2: Schaefer, Cardinal, Miltzow, The Existential Theory of the Reals as a Complexity Class: A Compendium, July 2024, A-Open8. This is the primary source of the stronger open classification; R1 supplies the applicable known hardness result. - R3: Affine Rank Minimization is ER-Complete, February 2026, problem formulation and main theorem. Inspected as a possible composition, not independently verified in full.
- [The Existential Theory of the Reals as a Complexity Class: A Compendium](https://arxiv.org/html/2407.18006v1): - R1: Gillis and Vavasis, On the Complexity of Robust PCA and L1-Norm Low-Rank Matrix Approximation, Sections 4–5 and conclusion, pp. 9–14 of the inspected preprint; Mathematics of Operations Research 43, 1072–1084 (2018). - R2: Schaefer, Cardinal, Miltzow, The Existential Theory of the Reals as a Complexity Class: A Compendium, July 2024, A-Open8. This is the primary source of the stronger open classification; R1 supplies the applicable known hardness result. - R3: Affine Rank Minimization is ER-Complete, February 2026, problem formulation and main theorem. Inspected as a possible composition, not independently verified in full.
- [Affine Rank Minimization is ER-Complete](https://arxiv.org/html/2602.14037v1): - R1: Gillis and Vavasis, On the Complexity of Robust PCA and L1-Norm Low-Rank Matrix Approximation, Sections 4–5 and conclusion, pp. 9–14 of the inspected preprint; Mathematics of Operations Research 43, 1072–1084 (2018). - R2: Schaefer, Cardinal, Miltzow, The Existential Theory of the Reals as a Complexity Class: A Compendium, July 2024, A-Open8. This is the primary source of the stronger open classification; R1 supplies the applicable known hardness result. - R3: Affine Rank Minimization is ER-Complete, February 2026, problem formulation and main theorem. Inspected as a possible composition, not independently verified in full.
- [Probabilistically checkable proofs for the Existential Theory of the Reals](https://arxiv.org/html/2605.23517v1): A new literature lead does not yet resolve this gap. In Probabilistically checkable proofs for the Existential Theory of the Reals, Section 1.2, Theorem 2 establishes a constant gap in the fraction of exactly satisfied ETR-INV constraints. The theorem's objective counts violations; it does not lower-bound their absolute residuals. For example, x=0 and x=delta on [0,1] force at least half the equations to fail, yet their minimum residual sum is delta. This example explains the logical distinction; it is not an ETR-INV instance or a counterexample to that preprint's theorem. The proof of its full construction has not been independently audited here.

Fixed from board record `website/questions/entrywise-l1-low-rank-approximation.json` in board checkout at 6c7d3bd9c0a8f595279969a9c0a4d1853a3f5c17; the record was copied from the current working tree.
