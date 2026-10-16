# Existential theory of the reals → Entrywise L1 low-rank approximation

Category: Complexity open

## Source

The input is a finite existential sentence over real variables, with binary integer constants, addition, multiplication, negation, polynomial comparisons and Boolean connectives. Output YES exactly when the sentence is true over the reals, and NO otherwise. Real assignments are existential mathematical objects, not algorithm outputs.

## Target

Given a binary rational matrix A of shape m by n, a nonnegative integer k and a positive rational threshold epsilon, output YES exactly when there is a real matrix B of rank at most k with sum over all entries of |A_ij - B_ij| strictly less than epsilon. Equivalently, B = UV for unrestricted real factors of shapes m by k and k by n. The error is unweighted and the threshold is strict; output NO otherwise.

## Required result

Construct a deterministic polynomial-time map F from existential-real sentence satisfiability to this strict, unweighted L1 low-rank decision problem, preserving YES and NO. Boolean-answer recovery G is the identity. The requested conclusion is ∃R-hardness, with no additional algebraic-witness reconstruction requirement.

## Acceptance

Specify the finite input encodings and a deterministic instance construction. Prove legality and YES/NO equivalence for every legal source input, together with polynomial runtime and output bit-length bounds. The source and target return Boolean decisions; recovery returns the same answer. Real or geometric realizations are existential objects, and no witness reconstruction or exhaustive target oracle is required to state the problem. A compiling open Lean challenge is a specification, not a completed reduction proof.

## Why it matters

Real-algebraic hardness would strengthen ordinary NP-hardness and identify a deeper obstruction in robust low-rank fitting.

## Difficulty

Encoding multiplication through an unweighted strict error threshold remains unresolved; a universal construction is needed.

## Literature context

Ordinary NP-hardness of low-rank approximation does not establish the proposed real-algebraic hardness under a strict, unweighted L1 threshold.

Literature classification checked: 2026-09-15.

This summarizes the archived literature search on the date above. Unpublished, unindexed and overlooked work remains outside coverage; no new novelty assessment was performed. Definition audit 2026-10-16 reconstructs the mathematical decision definition from primary literature; it does not establish a new hardness result or constitute an exhaustive search for later resolutions. Historical executable preparation contracts do not limit the existential mathematical witnesses in this definition.

## References

- [On the Complexity of Robust PCA and L1-Norm Low-Rank Matrix Approximation](https://arxiv.org/pdf/1509.09236): - R1: Gillis and Vavasis, On the Complexity of Robust PCA and L1-Norm Low-Rank Matrix Approximation, Sections 4–5 and conclusion, pp. 9–14 of the inspected preprint; Mathematics of Operations Research 43, 1072–1084 (2018). - R2: Schaefer, Cardinal, Miltzow, The Existential Theory of the Reals as a Complexity Class: A Compendium, July 2024, A-Open8. This is the primary source of the stronger open classification; R1 supplies the applicable known hardness result. - R3: Affine Rank Minimization is ER-Complete, February 2026, problem formulation and main theorem. Inspected as a possible composition, not independently verified in full.
- [Mathematics of Operations Research 43, 1072–1084 (2018)](https://doi.org/10.1287/moor.2017.0895): - R1: Gillis and Vavasis, On the Complexity of Robust PCA and L1-Norm Low-Rank Matrix Approximation, Sections 4–5 and conclusion, pp. 9–14 of the inspected preprint; Mathematics of Operations Research 43, 1072–1084 (2018). - R2: Schaefer, Cardinal, Miltzow, The Existential Theory of the Reals as a Complexity Class: A Compendium, July 2024, A-Open8. This is the primary source of the stronger open classification; R1 supplies the applicable known hardness result. - R3: Affine Rank Minimization is ER-Complete, February 2026, problem formulation and main theorem. Inspected as a possible composition, not independently verified in full.
- [The Existential Theory of the Reals as a Complexity Class: A Compendium](https://arxiv.org/html/2407.18006v1): - R1: Gillis and Vavasis, On the Complexity of Robust PCA and L1-Norm Low-Rank Matrix Approximation, Sections 4–5 and conclusion, pp. 9–14 of the inspected preprint; Mathematics of Operations Research 43, 1072–1084 (2018). - R2: Schaefer, Cardinal, Miltzow, The Existential Theory of the Reals as a Complexity Class: A Compendium, July 2024, A-Open8. This is the primary source of the stronger open classification; R1 supplies the applicable known hardness result. - R3: Affine Rank Minimization is ER-Complete, February 2026, problem formulation and main theorem. Inspected as a possible composition, not independently verified in full.
- [Affine Rank Minimization is ER-Complete](https://arxiv.org/html/2602.14037v1): - R1: Gillis and Vavasis, On the Complexity of Robust PCA and L1-Norm Low-Rank Matrix Approximation, Sections 4–5 and conclusion, pp. 9–14 of the inspected preprint; Mathematics of Operations Research 43, 1072–1084 (2018). - R2: Schaefer, Cardinal, Miltzow, The Existential Theory of the Reals as a Complexity Class: A Compendium, July 2024, A-Open8. This is the primary source of the stronger open classification; R1 supplies the applicable known hardness result. - R3: Affine Rank Minimization is ER-Complete, February 2026, problem formulation and main theorem. Inspected as a possible composition, not independently verified in full.
- [Probabilistically checkable proofs for the Existential Theory of the Reals](https://arxiv.org/html/2605.23517v1): A new literature lead does not yet resolve this gap. In Probabilistically checkable proofs for the Existential Theory of the Reals, Section 1.2, Theorem 2 establishes a constant gap in the fraction of exactly satisfied ETR-INV constraints. The theorem's objective counts violations; it does not lower-bound their absolute residuals. For example, x=0 and x=delta on [0,1] force at least half the equations to fail, yet their minimum residual sum is delta. This example explains the logical distinction; it is not an ETR-INV instance or a counterexample to that preprint's theorem. The proof of its full construction has not been independently audited here.
