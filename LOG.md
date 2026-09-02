# LOG

## 2026-09-02 — repository bootstrap

- Created `jaredwilder/msl-ore-estate` as the persistent control plane for the accumulating MSL/Erdos ore estate.
- Added ORE INGEST FORMAT v1 and transport/reassembly tooling.
- Sealed Pass-6 ORE-v1 archive moved out of ChatGPT via nine <=100 MiB Google Drive root shards.
- Pass-6 sealed state: 458,212 objects / 1,133,352 relations.

## 2026-09-02 — Pass 7 raw sweep

- Swept all 49 staged Pass-7 raw surfaces.
- Materialized cumulative state: 752,539 ORE-v1 objects / 4,288,239 relations.
- Pass-7 gain: +294,327 objects / +3,154,887 relations.
- Major surfaces included high-signal transcript ore, proof/bound/construction/counterexample blocks, formula index, route histories, evidence graph, branch dossiers, structured-field census, recombination/evidence bundles, formalizer obligations, registry events, vault/gold ledgers, proof-pattern hits, contract traps and Lean/claim bindings.
- Added row-level resumable checkpoints after the 116 MB structured-field census exceeded one execution window.
- Validation found an edge-only-source manifest bug. Permanent rule: every swept/staged raw source must appear in the manifest even if it creates zero new objects and contributes only provenance/relations.
- Manifest rebuilt from the staged-source census; all 49 staged surfaces are now included.
- Full historical semantic replay validation of 4.29M edges still exceeds the execution window. Infrastructure debt: move to incremental/hash-indexed admission so new shards are validated once and frozen historical edges are not reparsed every round.

## 2026-09-02 — Sweep 8 representation + neighborhood sweep

- Exhausted all 48 source representations that the Pass-7 census marked `NOT_YET_PASS7_RAW_SWEPT`; 48/48 extracted, zero missing, ~57.5 MB.
- Grammar family 1: mathematical field/object replay, nested JSON extraction, adjacent-record windows, and native relationship replay for obligation↔claim links, duplicate/near-duplicate pairs, transfer evidence and conflict pairs.
- Grammar family 2: cross-version contract diffs, same-route adjacent claim path stitching, and claim↔multiple-obligation bridge reconstruction.
- Sweep-8 gain: +56,514 globally keyed ORE-v1 objects and +235,621 relations.
- Materialized cumulative state: 809,053 ORE-v1 objects / 4,523,860 relations.
- Notable extraction counts: the 29,032-row CSV paragraph representation still yielded 37,521 new objects; Pass-2 master report 2,587; claim-universe replay 3,978; obligation↔claim table 3,743; contract-version diffs 273; obligation bridges 541. Route-path stitching added 17,039 relations with essentially no object inflation.
- Cumulative `ore.jsonl` and `edges.jsonl` were physically materialized copy-on-write; no delta-only canonical state.
- Pass-7/8 full historical semantic replay validation remains infrastructure debt; manifest source completeness is repaired, and validation must move to incremental/hash-indexed admission.

## Next raw-sweep direction

- Attack source-line/window grammars directly against original raw files rather than derived registries.
- Mine numerical payload neighborhoods, Lean declaration dependency neighborhoods, and graph/path motifs not expressible as single-row extraction.
- Continue measuring object saturation separately from provenance/relation saturation.
