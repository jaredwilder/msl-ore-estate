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
- Added row-level resumable checkpoints.
- Permanent manifest rule: every swept/staged raw source appears even if it creates zero new objects and contributes only provenance.

## 2026-09-02 — Sweep 8 representation + neighborhood sweep

- Exhausted all 48 additional source representations from the Pass-7 census.
- Added field/object replay, nested JSON, adjacent-record windows, native relations, contract diffs, route stitching and obligation bridges.
- Gain: +56,514 objects / +235,621 relations.
- Cumulative: 809,053 / 4,523,860.

## 2026-09-02 — Sweep 9 direct leaf-file sweep

- SHA census found 1,483 previously unswept leaf files / ~412 MB in the Pass-5 archive.
- Consumed 1,483/1,483 leaf SHA values, zero missing.
- Included 759 direct Lean files, 306 recombination dossiers, 303 per-problem dossiers and 61 contract-provenance files.
- Grammars: raw lines, +/-1 and +/-2 line windows, paragraphs, Lean declaration windows, structured key/value/record neighborhoods, provenance replay and Lean dependencies.
- 759 Lean files: +19,158 objects / +46,068 relations; 3,283 declaration bindings; +2,686 `USES` relations.
- 306 recombination dossiers: +312,406 objects. 303 problem dossiers: +50,583.
- Gain: +501,258 objects / +1,886,215 relations.
- Cumulative: 1,310,311 / 6,410,075.

## 2026-09-02 — Sweep 10 exact-byte recovery + numeric/witness context

- Original raw manifest: 3,999 rows / 3,971 unique hashes.
- Exact original bytes recoverable from available archives: 867 unique hashes; Passes 7–9 had swept 862.
- Recovered/swept final five receipts (#170, #276, #289, #1142, #1212), reaching 867/867 recoverable-byte saturation.
- Five receipts added only 3 objects / 19 relations.
- 94 witness-bank rows -> 188 contextual witness/construction objects / 282 relations.
- 1,485 numeric payload rows -> 49 objects / 72 relations after excluding booleans, telemetry/admin counts and pairing contextual numerical fields.
- Gain: +240 objects / +373 relations.
- Cumulative: 1,310,551 / 6,410,448.

## 2026-09-02 — Sweep 11 grounded graph motifs + edge-store repair

- Found canonical-file defect: unique relation count 6,410,448 but physical `edges.jsonl` had 6,820,472 lines.
- Cause: timed-out Pass-9 processes could append edge JSON before SQLite transaction commit; rollback removed DB rows but not file bytes. Duplicate physical lines: 410,024.
- No unique graph data lost or miscounted. Canonical graph rebuilt from committed transactional rows and physically matches 6,410,448 pre-Sweep-11 relations.
- Permanent rule: transactional edge table is authoritative; canonical JSONL is materialized from committed rows, never used as write-ahead authority.
- Topology endpoint pairs: 615,938 COMPOSES, 19,314 USES, 8,514 IMPLIES. Explicit two-hop IMPLIES chains: zero.
- Motif rule tightened to identical singleton problem attachment.
- Final motifs: 298 USES dependency bundles, 624 implication fan-outs, 127 implication fan-ins, 1 non-CHAIN composition neighborhood.
- Gain: +1,050 objects / +4,556 relations.
- Cumulative: 1,311,601 / 6,415,004.
- Motif provenance frozen in `91-PASS11-MOTIF-SOURCE-RECORDS.jsonl`.
- Storage policy: one latest full cumulative working estate + compact/rebuildable sweep state, not multiple multi-GB physical ancestors.

## 2026-09-02 — Sweep 12 DERIVED_FROM decomposition

- Indexed 1,591,706 evidence-bearing DERIVED_FROM rows into 845,423 distinct endpoint pairs touching 549,924 objects.
- 182,551 parent nodes have at least one derived child.
- Admission: singleton parent problem; child same singleton problem; no CHAIN parent/child; substantive children only; identical child statements collapsed; child identical to parent removed; 2–12 distinct children; bounded bundle size.
- 48,062 coherent decomposition bundles survived and were emitted as CHAIN ore with exact parent/component provenance.
- Gain: **+48,062 objects / +216,201 relations**.
- Cumulative materialized state: **1,359,663 ORE-v1 objects / 6,631,205 relations**.
- Immutable decomposition provenance: `93-PASS12-DECOMPOSITION-SOURCE-RECORDS.jsonl`.
- Superseded full working ancestor trees and rebuildable Pass-9/10/11 SQLite caches were removed after Pass-12 materialization to preserve working disk; no unique research content removed.

## Transport bootstrap location

- Pass-6 transport shards live in Google Drive / My Drive root, not a folder.
- Canonical IDs: part-00 `16sJRBJcrYN3z9AZsJxKkgU2g8bJYaUXx`; part-01 `19VTtz7TwkncpIEvSIuYGRN3NWeXpw5zu`; part-02 `1qSi22sFYiRsH18FAxNI8R0Wh0B8Wp0i0`; part-03 `1qa7FMgxRZCU9NDcslBj9marHPAQPfKhi`; part-04 `1bPCrUqQi10T2BPM7MGe-9P2_SHGxIfiA`; part-05 `1bIsoYA0eSmLd_LfG72brjbfLUMTusAE6`; part-06 `1lEy9KWurTn22skQ1bULBUsTTmSQhm_DE`; part-07 `1KGSkZ404YuV5OM91YY4yrUQvvICOWM65`; part-08 `1dOfCdV-lZiU81CAfiYpBQ_j45vn3NiYz`.
- Duplicate retry copies exist for parts 02 and 06; use canonical IDs above or shard checksums.

## Next raw-sweep direction

- Sweep 13: second-generation atomization over objects introduced by later sweeps, especially Passes 7–12. Pass-4 atomization predates roughly a million subsequently recovered parent objects.
- Extract exact formula/equality/inequality/congruence/witness/implication clauses from those later objects and attach atoms back with DERIVED_FROM.
- Exclude already-atomic kinds and recursive CHAIN wrappers to prevent combinatorial self-expansion.
