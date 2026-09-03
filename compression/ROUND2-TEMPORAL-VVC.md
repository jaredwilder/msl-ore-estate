# Compression Round 2 — VVC Temporal Validity Before Support Propagation

Parent estate: Pass 15, 1,582,863 ORE-v1 objects / 7,238,762 relations.

## Why this round exists

Compression Round 1 conservatively collapsed exact same-math statement families and then propagated source support. That was useful, but one authority rule was in the wrong order: historical `PROVED` / `COMPUTATION_SUPPORTED` occurrences were allowed to contribute support before route/lemma version history was reconciled.

The recovered real VVC controller makes the correct order explicit:

**VERSION VALIDITY -> CURRENT SUPPORT -> SAME-MATH PROPAGATION -> PROOF PRESSURE**

A historical source assertion that was later replaced by `FALSE` or `UNTESTED` is stale and must not keep supporting the current proof graph.

## Latest route/lemma identity census

From `03-ALL-LATEST-LEMMA-STATES-2612.csv`:

- latest route/lemma identities: **2,612**
- latest `PROVED`: **617**
- latest `COMPUTATION_SUPPORTED`: **115**
- latest `UNTESTED`: **788**
- latest `FALSE`: **1,092**
- current source-support identities before kernel/Court augmentation: **732**

## Historical support invalidation

The Pass-15 claim universe contains 4,652 historical positive/support claims that map to a current route/lemma identity.

After applying the latest VVC head:

- **2,122 historical support claims are stale** because the current identity is `FALSE` or `UNTESTED`.
- stale claims span **208 problems**.
- **467 historical `PROVED` claims now have latest state `FALSE`.**
- **95 historical `PROVED` claims now have latest state `UNTESTED`.**

Local derived receipts:

- `VVC-CURRENT-SUPPORT-IDENTITIES-R2.csv` SHA-256 `93efc70bd0a984850cd5c38d9f4379d9acc6813f3cab0e1b2486840a189980aa`
- `VVC-STALE-SUPPORT-CLAIMS-R1.csv` SHA-256 `527df2d7b438b8270d3e9d8de1e89cfec685c523eeb962837f697a1d26f44d23`
- `VVC-TEMPORAL-SUPPORT-R2-SUMMARY.json` SHA-256 `ba5417945cdbe3c778c4b94e5fec1c3ac651997d9a3ae094f49940a072266d14`

## Consequence for Compression Round 1 queues

The old headline queues:

- 151 multi-piece conjecture pressure targets
- 116 supported-premise implication conclusions

are now **QUARANTINED_PENDING_TEMPORAL_RECOMPRESSION**.

This does not say those targets are false or useless. It says their support counts were computed before VVC stale-version invalidation and therefore cannot drive Closure Mode as authority-clean queues.

They remain discovery artifacts until rebuilt from:

1. latest valid route/lemma identities;
2. immutable kernel/exact receipts;
3. current VVC Court nodes;
4. exact same-math families after stale occurrences are masked;
5. only then IMPLIES/COMPOSES/USES pressure.

## Concrete reason this matters

Erdős #279 supplied a direct example. Historical R003/L1 occurrences were marked `PROVED` and claimed a uniform lower-bound sieve closed the target negatively. The same route later became `FALSE`: the uniform all-residue-choice claim was a quantifier mis-promotion, with later adversarial analysis explicitly killing the supposed sieve close. A pre-VVC support graph can preserve the old `PROVED` copy; a versioned VVC graph cannot.

Similar stale-positive histories occur at large scale, hence the 2,122-row invalidation count.

## New permanent rule

**Never propagate mathematical support across exact/semantic identity families until VVC version/epoch validity has been applied.**

Historical theorem ore stays preserved for provenance and learning, but stale authority cannot lift a current proof frontier.

This is an authority-order correction, not a deletion of mathematical history.
