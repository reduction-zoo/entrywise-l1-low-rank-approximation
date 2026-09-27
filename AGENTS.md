# Research instructions

Read the [fixed question](campaigns/entrywise-l1-low-rank-approximation/question.md), [prior state](campaigns/entrywise-l1-low-rank-approximation/state.md) and [preparation notes](campaigns/entrywise-l1-low-rank-approximation/work/preparation.md). The fixed [test corpus](campaigns/entrywise-l1-low-rank-approximation/work/cases.json) and [verifier](campaigns/entrywise-l1-low-rank-approximation/work/check.py) are the starting evidence; the preparation notes state their coverage and any pending checks.

Run `uv sync --locked`, then `uv run --locked python campaigns/entrywise-l1-low-rank-approximation/work/check.py --self-test` before relying on that evidence. Follow the current user's AutoResearch pipeline. Preserve prior evidence, commit new work incrementally and make only evidence-backed claims.
