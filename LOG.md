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

## 2026-09-02 — Sweep 9 direct leaf-file sweep

- Computed a SHA-level coverage census of every Pass-5 archive leaf against the explicit Pass-7/8 swept-source set.
- Found 1,483 previously unswept leaf files totaling ~412 MB.
- Leaf families: 759 individual Lean sources, 306 recombination dossiers, 303 per-problem dossiers, 61 contract-provenance files, 18 prior ore maps, proof specs, curated cross-session files, formalizer/receipt payloads and structured tables.
- Consumed 1,483/1,483 leaf SHA values. Zero missing after completeness check.
- Grammars: direct mathematical lines, +/-1 and +/-2 line neighborhoods, paragraphs, Lean declaration windows, structured key/value mining, structured row/record neighborhoods, giant-table provenance replay, and exact Lean source dependency reconstruction.
- Individual Lean files alone added 19,158 objects / 46,068 relations; 3,283 declaration bindings were recovered and 2,686 direct `USES` relations reconstructed from named dependencies in proof bodies.
- 306 recombination dossiers added 312,406 objects; 303 per-problem dossiers added 50,583; composite-evidence pairs 26,388; explicit implication storage 23,061; Lean declaration-body JSONL 15,751; all-positive transcript verdicts 13,503.
- Giant structured-table replay showed provenance saturation without object inflation: the 294,574-row exact-field table added only 2 objects while adding 183,095 occurrence edges.
- Sweep-9 gain: **+501,258 objects / +1,886,215 relations**.
- Cumulative materialized state: **1,310,311 ORE-v1 objects / 6,410,075 relations**.
- Pass-9 cumulative manifest includes the Pass-5 source ZIP plus 1,483 virtual archive-member source entries, allowing every `src:<member_sha>` to resolve through shipped source bytes without extracting 412 MB of duplicated files into the estate.

## 2026-09-02 — Sweep 10 exact-byte recovery + numeric/witness context

- Compared the original 3,999-row raw-corpus manifest by exact SHA against every locally available uploaded source archive.
- Original manifest resolves to 3,971 unique content hashes.
- Exact original bytes recoverable in the available archives: 867 unique hashes.
- Passes 7–9 had already directly swept 862/867; exactly five recoverable original raw files remained, all receipt/kernel payloads totaling 10,679 bytes.
- Recovered originals: receipts for Erdős 170, 276, 289, 1142 and 1212. They added only 3 objects / 19 relations, a strong direct-byte saturation signal.
- Direct-byte saturation for the original raw hashes physically present in this session is now **867/867**. The remaining original-manifest hashes are not physically present as exact bytes in the uploaded archives available here.
- Numeric/witness grammar was deliberately conservative: ignored booleans, token/cost telemetry, model-call statistics, corpus/admin counts and other non-mathematical numbers.
- 94 witness-bank rows produced 188 contextual witness/construction objects / 282 relations.
- 1,485 exact structured numeric rows produced 49 objects / 72 relations after mathematical-field filtering and source-record grouping.
- Paired `exact_num`/`exact_den` into exact rational objects; bound related values such as `n_plus_k`, factorization and omega into record-neighborhood objects rather than treating bare integers as standalone mathematics.
- Sweep-10 gain: **+240 objects / +373 relations**.
- Cumulative materialized state: **1,310,551 ORE-v1 objects / 6,410,448 relations**.
- Interpretation for mining only: raw-byte and numeric-payload representations are now strongly saturated; continue with structurally different graph/motif grammars rather than inflating metadata.

## Transport bootstrap location

- Pass-6 transport shards live in the root of Google Drive / My Drive, not in a folder.
- Canonical Drive IDs: part-00 `16sJRBJcrYN3z9AZsJxKkgU2g8bJYaUXx`; part-01 `19VTtz7TwkncpIEvSIuYGRN3NWeXpw5zu`; part-02 `1qSi22sFYiRsH18FAxNI8R0Wh0B8Wp0i0`; part-03 `1qa7FMgxRZCU9NDcslBj9marHPAQPfKhi`; part-04 `1bPCrUqQi10T2BPM7MGe-9P2_SHGxIfiA`; part-05 `1bIsoYA0eSmLd_LfG72brjbfLUMTusAE6`; part-06 `1lEy9KWurTn22skQ1bULBUsTTmSQhm_DE`; part-07 `1KGSkZ404YuV5OM91YY4yrUQvvICOWM65`; part-08 `1dOfCdV-lZiU81CAfiYpBQ_j45vn3NiYz`.
- Drive contains duplicate retry copies of part-02 and part-06; use canonical IDs above or verify against `MSL-ORE-ESTATE-BOOTSTRAP-PASS6-100MB-PARTS-SHA256.txt`.

## Next raw-sweep direction

- Graph motifs over the cumulative relation estate, with a hard anti-explosion rule: emit only mathematically interpretable motifs grounded in explicit relations and shared problem attachment.
- Priority motifs: explicit two-hop `IMPLIES`, multi-parent `COMPOSES` neighborhoods, theorem/dependency neighborhoods, and relation structures that recover proof context lost by atomization.
- No arbitrary graph walks/path spam.
