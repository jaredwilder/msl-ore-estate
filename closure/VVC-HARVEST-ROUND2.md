# VVC Closure Harvest — Round 2

Parent estate: Pass 15, 1,582,863 ORE-v1 objects / 7,238,762 relations.
Controller: recovered real VVC build; Court authority remains separate from raw/source status.

## Court/theoremized cut — distinct-prime multiplicative boxes

Source origin: Erdős #52 raw-reconstructed multiplicative-box injection.

Generalized reusable theorem:

For distinct primes `p != q` and

`A_N(p,q) = {p^i q^j : 0 <= i,j < N}`,

`|A_N + A_N| >= C(N,2)^2`.

Proof decoder for `i<k`, `j<l`:

`p^i q^j + p^k q^l = p^i q^j (1 + p^(k-i) q^(l-j))`.

The bracket is `1 mod p` and `1 mod q`, so the sum recovers `i,j` from its `p,q` valuations; division by `p^i q^j` then recovers `k-i,l-j`, hence the whole quadruple. Therefore the selected sums are injective.

- Court node: `COURT_MULTIBOX_DISTINCT_PRIMES`
- actual theoremizer: first observation did not promote; second reuse promoted
- scope: universal distinct-prime rank-2 multiplicative boxes; lower bound only
- no novelty claim

Operational meaning: the tempting two-prime multiplicative-box architecture is permanently compressed behind a reusable theorem instead of being re-proved inside #52 or future sum-product branches.

## Court/theoremized cut — bounded-divisor predicate periodicity

Source origin: Erdős #859 density-existence theorem.

General reusable theorem:

Fix `t` and let `L_t = lcm(1,...,t)`. Any predicate of `n` that depends only on the finite divisibility signature

`{d <= t : d | n}`

is periodic modulo `L_t`. Hence its natural density exists and is rational (number of accepted residue classes divided by `L_t`).

Reason: every `d<=t` divides `L_t`, so `n ≡ m (mod L_t)` implies `d|n iff d|m` simultaneously for all `d<=t`.

- Court node: `COURT_BOUNDED_DIVISOR_PERIODICITY`
- actual theoremizer: promoted on second reuse
- #859 consequence: for every fixed `t`, the density `d_t` of integers for which `t` is a sum of distinct positive divisors exists and is rational
- residual #859 target remains the two-sided asymptotic law; this cut does not solve it

Operational meaning: density existence is no longer an open/presupposed obligation for #859 or any future bounded-divisor-signature predicate.

## Semantic fork — #509

The frozen prose source says “circles,” while the supplied Lean formalization uses closed discs/closed balls. This is a real version/representation mismatch. Do not treat the easy circle-boundary refutation of the frozen prose as a close of the intended closed-disc problem. VVC should preserve the source-version fork and bind any future closure to the exact intended/formal target.

## Whole-estate consequence

Round 2 deliberately harvests reusable theorem vocabulary rather than serially tunneling into one problem. The next recompile should treat these Court nodes as certified cuts and search for:

1. exact/specialized occurrences already duplicated elsewhere in ORE;
2. obligations whose premises become discharged by either cut;
3. target packets that shrink after the new cuts;
4. additional short universal theorem families that deserve theoremization.
