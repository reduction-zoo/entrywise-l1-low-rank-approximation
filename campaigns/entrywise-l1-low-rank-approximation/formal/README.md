# entrywise-l1-low-rank-approximation: literature-based challenge

This project states the open decision reduction, with an identical unproved
`Solution.lean`. It does not contain a solution or certify any prior candidate.

## Definition and scope

The target is the strict, unweighted entrywise L1 decision problem. A real factorization of width k states rank at most k, including rank zero and empty dimensions. The source is the full existential real language with integer arithmetic expressions, equality, strict inequalities, conjunction, disjunction and negation. Real assignments and factors are existential mathematical objects, not encoded algorithm outputs. This explicitly replaces the earlier incomplete search-witness contract with the published decision problem.

The source and target return Boolean decisions. The reduction must be a
deterministic polynomial-time TM2 computation on the self-delimiting binary
encodings in `Challenge.lean`, preserve legality, and preserve both answers.
Recovery of a decision is the identity; no real witness serialization, practical
oracle, or accepted reduction is assumed. Definitions contain no proof holes.
The only proof hole is the open `solve` theorem.

## Sources

- [The Existential Theory of the Reals as a Complexity Class: A Compendium](https://arxiv.org/html/2407.18006): Section 1.1 and A-Open8
- [On the Complexity of Robust PCA and L1-Norm Low-Rank Matrix Approximation](https://arxiv.org/pdf/1509.09236): Equations (1.1) and (1.4)

## Check

```sh
LEAN_NUM_THREADS=2 lake build
lake env lean Audit.lean
./scripts/verify-comparator.sh
```

The build includes semantic examples in `Tests.lean`. `Audit.lean` checks the
definition's axiom dependencies separately from the unproved theorem. The Linux
workflow checks statement agreement and the expected `sorryAx` rejection with
the bundled comparator. macOS cannot run its required bubblewrap sandbox.
Green setup CI is not evidence that the open reduction has been proved.
