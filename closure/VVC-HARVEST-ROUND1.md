# VVC Closure Harvest — Round 1

Parent estate: Pass 15, **1,582,863 ORE-v1 objects / 7,238,762 relations**.
Controller: recovered real `VVC-TERMINAL-ENCIRCLEMENT-2026-08-10` build; unchanged verification suite passed 21/21 before closure work.

This layer records Court decisions and certified cuts. It does not replace raw ORE or source provenance.

## Accepted — Erdős #655 literal frozen target

- Result: complete negative close of the literal frozen statement by the regular-polygon family.
- VVC optimizer compiled the target to the regular-polygon proof frontier.
- Court admitted the close relative to the exact source geometry roots.
- Actual `SkiRentalTheoremizer` promoted the cut after a second observed reuse; no forced promotion.
- Scope warning retained: the universal mathematics is complete, while the previously archived Lean receipt checks only a finite proxy.

## Accepted local cut — C(13,6,3), fixed run23b witness

Pass-4 local `C(12,5,2)` classification was independently reconstructed.

For a degree-9 anchor, the five arithmetic local degree histograms `(count degree-3, count degree-4, count degree-5)` are:

- `(3,9,0)` — feasible
- `(4,7,1)` — feasible
- `(5,5,2)` — feasible
- `(6,3,3)` — feasible
- `(7,1,4)` — integer-infeasible

Every feasible type produced an explicit 9-block pair-cover witness and was independently replayed. Consequence: at every degree-9 anchor, local pair multiplicities lie in `{3,4,5}`, with 3–6 multiplicity-3 neighbors.

Important falsification: a surviving histogram is **not** a unique isomorphism class. At least two non-isomorphic neighborhoods were found for `(3,9,0)`. Therefore a one-representative-per-histogram extension search is unsound.

New exact rigidity wall for the fixed validated run23b 21-cover:

- Court node: `COURT_C13_RUN23B_NO_4TO3`
- exhaustive four-block removals: `C(21,4)=5985`
- result: **no 4→3 compression**
- checker source SHA-256: `1859fe998ca3c023a3e09229107ffef0fcaaf36b2795dcb16523331aa056524e`
- checker binary SHA-256: `2e5fdea3194ed214ed6a09f672abeaa3dcf7c4a613e1f8e41bdaea47afb03d8c`
- run23b witness SHA-256: `e43a389512a7f25c17ea63f765ffd2a63cee6c8b4402d2d44c3caa7b13123ab3`
- theoremizer observed once and correctly did **not** promote the pattern yet (`savings=1 < build_cost=2`).

This is a local rigidity theorem, not a proof that `C(13,6,3)=21`.

## Rejected stale close — Erdős #539

Historical close packet claimed `h(n)=n` because “the diagonal injects A into the quotient-value set.”

Court refutation:

`a / gcd(a,a) = a/a = 1`, so the claimed diagonal injection is false.

- Court node: `COURT_539_DIAGONAL_COLLAPSES`
- old close-status version invalidated by VVC MVCC
- current close status: `REJECTED_CLOSE_PROOF`
- scope: this rejects that proof only; the equality `h(n)=n` is not decided by this rejection.

## Rejected stale close — Erdős #740

Historical close packet claimed that for `G=K_m`, every subgraph is complete, so any same-chromatic-cardinal subgraph contains a triangle.

Court refutation of the load-bearing step:

An ordinary subgraph may delete edges. Already `K_3` has the non-complete path `P_3` as a subgraph.

- Court node: `COURT_740_SUBGRAPH_STEP_FALSE`
- old close-status version invalidated by VVC MVCC
- current close status: `REJECTED_CLOSE_PROOF`
- scope: rejects only the historical `K_m` close argument; canonical Erdős #740 remains unresolved by this packet.

## Operating consequence

Do not rank closure candidates by graph pressure or `OPEN_DEBT NONE` alone. The harvest order is:

1. bind a close-shaped packet to the literal canonical target/version;
2. compile the smallest VVC frontier;
3. Court-check every load-bearing bridge;
4. accept a close/cut, reject and invalidate poison, or record the exact residual;
5. feed the result back and recompile the **whole estate**.

Bounded-swing anti-tunnel rule remains active: every target swing must yield a close, reusable certified cut, certified refutation, or materially smaller exact residual, then return to whole-estate recompilation.
