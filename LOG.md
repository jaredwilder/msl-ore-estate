# LOG

## 2026-09-02 — repository bootstrap

- Created `jaredwilder/msl-ore-estate` as persistent control plane for the cumulative mathematical estate.
- ORE INGEST FORMAT v1 is canonical inbound contract.
- Heavy archives use external transport; Pass-6 sealed archive was moved via nine <=100 MiB Google Drive root shards.

## 2026-09-02 — Passes 7–12 cumulative mining

- Pass 7: +294,327 objects / +3,154,887 relations -> 752,539 / 4,288,239.
- Pass 8: +56,514 / +235,621 -> 809,053 / 4,523,860.
- Pass 9 direct leaf sweep: +501,258 / +1,886,215 -> 1,310,311 / 6,410,075.
- Pass 10 raw-hash + numeric/witness context: +240 / +373 -> 1,310,551 / 6,410,448.
- Pass 11 grounded graph motifs: +1,050 / +4,556 -> 1,311,601 / 6,415,004.
- Pass 12 DERIVED_FROM decomposition: +48,062 / +216,201 -> 1,359,663 / 6,631,205.
- Pass 11 repaired 410,024 duplicate physical edge-log lines caused by timeout/rollback versus nontransactional file append. Permanent rule: transactional edge state is authoritative; canonical JSONL is materialized from committed unique rows.

## 2026-09-02 — Pass 13 second-generation atomization

- Re-atomized 363,710 parent-like objects discovered after original atomization.
- Rejected loose 228k-candidate extraction after sampling found registry/prose metadata inflation.
- Final strict new atoms: 20,430.
- Strict parent→atom relations: 114,464; source-occurrence relations: 20,430.
- Gain: **+20,430 objects / +134,894 relations**.
- Cumulative: **1,380,093 / 6,766,099**.

## 2026-09-02 — estate scope expansion / Day-1 census

- Scope changed permanently from Day-2 campaign to ENTIRE recoverable mathematical estate across sessions/days/projects.
- Recursive census of `gpt-mine.zip` and `gpt-mine-2-novelty.zip` descended through nested archives to exact leaf SHA.
- Found 8,107 unique Day-1 leaf hashes; only 318 were already source-known; **7,789 were unseen**.
- About 142 MB unique unseen leaf bytes; 7,506 contained detectable mathematical structure.

## 2026-09-02 — Estate Pass 14 / Day-1 Wave 1

- Swept 4,762 high-confidence unseen Day-1 leaves transactionally.
- Provisional 63,363 new objects; source-aware quality gate rejected 13,499 telemetry/checksum/path/status/boilerplate artifacts.
- Gain: **+49,864 objects / +319,117 relations**.
- Cumulative: **1,429,957 / 7,085,216**.
- Remaining 3,027 unseen leaves retained explicitly as UNDER_SWEPT.

## 2026-09-02 — Estate Pass 15 / Day-1 Wave 2

- Consumed all remaining 3,027 Day-1 leaves with source-specific grammars rather than lowering Wave-1 threshold.
- Dedicated handlers for exact numeric tables, witness vaults, formalizer logs, semantic contract/review fields, MSL result files, route registries and provenance-only telemetry/admin sources.
- Major representation recovery: `ERDOS1061_PRIMITIVE_SEEDS_200K.csv` had scored zero under prose-oriented math density despite being 17 MB of exact arithmetic.
- Admitted **152,803 exact Erdős #1061 row computations**. Every row passed internal table identities (`s=a+b`, `coeff_num=2φ(M)`, `coeff_den=M·s`, stored scaled floor).
- 103 other mathematical objects admitted.
- 2,703 Wave-2 sources correctly emitted zero admitted new objects after quality gates.
- Gain: **+152,906 objects / +153,546 relations**.
- Cumulative: **1,582,863 objects / 7,238,762 relations**.
- Every one of the 7,789 Day-1 leaves unseen before estate expansion has now been consumed by at least one source-appropriate grammar.

## 2026-09-02 — Compression Round 1 / exact-family KBK

Permanent loop established:
**SWEEP -> MERGE -> COMPRESS -> KBK COMPOSE -> KERNEL/EXACT CHECK -> FEEDBACK -> SWEEP AGAIN.**

Round 1 used conservative exact normalized statement equality; no fuzzy semantic merging.

- Singleton Erdős-attached rows: 928,704.
- Unique normalized statements: 849,557.
- Exact same-math clusters: **64,227**.
- Redundant rows collapsible without provenance loss: **79,147**.
- STATED-vs-PROVED/COMPUTED mixed clusters: **19,347**, of which 19,345 are cross-source.
- Logical skeleton: 928,191 raw IMPLIES/COMPOSES/USES rows -> **901,681 unique endpoint relations**.
- Graph-active singleton-problem nodes indexed: 220,000.

Strict support definition corrected during the round: only source `PROVED` or `COMPUTED` counts as support. STATED witnesses/counterexamples do not.

KBK propagation result:
- Direct-source-supported graph nodes: **22,608**.
- After exact same-math support propagation: **26,817**.
- **+4,209 usable graph nodes unlocked without discovering new mathematics.**
- STATED conjecture targets with >=2 supported COMPOSES components: **0 -> 151**.
- STATED conclusions with >=1 supported explicit IMPLIES premise: **48 -> 116**.
- Nodes whose currently-recorded USES dependencies are all supported: 4 -> 5.
- Targets with every recorded COMPOSES component supported: **0**.
- Round 1 therefore asserted **zero new problem closes**.

Derived artifacts are checksummed in Pass 15 under `COMPRESSION/ROUND1/`; repo summary is `compression/ROUND1.md`.

Next KBK action: bind/decompose the 116 implication obligations, kernel/exact-check checkable ones, promote only machine-supported results, feed failures/missing premises back into the cumulative estate, and recompute compression. Raw estate census continues in parallel over older external source families.

## Transport bootstrap location

Pass-6 shards remain in Google Drive / My Drive root. Canonical IDs are recorded in prior repo history / transport metadata; duplicate retry copies exist for parts 02 and 06, so use canonical IDs or checksums.
