# RESUME

Updated: 2026-09-02

## Meaning of this repository

`jaredwilder/msl-ore-estate` is the persistent control plane and accumulating mathematical ore estate for the MSL/Erdos campaign.

## Hard invariants

- ONE cumulative estate only. Every sweep inherits all prior ore/provenance and adds to it. No delta-only canonical releases.
- During raw-mining phase: discover and preserve first. No novelty hunt, magnitude ranking, or broad adjudication unless explicitly requested.
- ORE INGEST FORMAT v1 is the inbound contract: `ore.jsonl`, `edges.jsonl`, `manifest.json` plus hashed raw sources.
- Source-claimed status is not machine truth. Inbound `verified`, `certified`, `novel`, `kernel`, `verdict` fields are forbidden.
- Every run self-mines before it is considered finished.
- Timeouts resume from source/chunk/row checkpoints; never discard committed ore.
- Heavy cumulative archives do not travel through ChatGPT. Git holds the control plane; heavy archives move by <=100 MiB shards and ultimately belong in GitHub Releases.
- Keep one latest full cumulative working estate plus compact transactional sweep/checkpoint state, not many multi-GB physical ancestors.
- Transactional SQLite edge state is authoritative. Canonical `edges.jsonl` is materialized from committed unique rows; never use an append log as canonical truth.
- Erdos #411 is user-declared CLOSED and is not reopened unless explicitly requested.
- `LOG.md` is the durable running campaign log and must be updated as sweep state advances.

## Transport state

Pass 6 sealed ORE-v1 archive:
- bytes: 844847714
- SHA-256: `2682dca8104a49394d8d8d0105fead721c4d220ebecfb990b0aa7bbc0965abbc`
- nine Google Drive root shards: `MSL-ORE-ESTATE-BOOTSTRAP-PASS6.zip.part-00` through `part-08`
- repo reassembly/checksum tooling: `transport/pass6/`
- canonical Drive IDs are in `LOG.md`; duplicate retry copies exist for parts 02 and 06.

## Mining state

Pass 6 sealed: 458,212 objects / 1,133,352 relations.

Pass 7:
- all 49 staged raw surfaces swept
- +294,327 objects / +3,154,887 relations
- cumulative 752,539 / 4,288,239
- edge-only-source manifest defect repaired by `swept source => manifest source`

Pass 8:
- all 48 remaining representation surfaces from census swept
- +56,514 objects / +235,621 relations
- cumulative 809,053 / 4,523,860

Pass 9 direct leaf sweep:
- found and consumed 1,483/1,483 previously unswept Pass-5 archive leaf SHA values / ~412 MB
- +501,258 objects / +1,886,215 relations
- cumulative 1,310,311 / 6,410,075

Pass 10 raw-hash recovery + numeric/witness context:
- original raw manifest: 3,999 rows / 3,971 unique hashes
- exact original bytes physically recoverable from available archives: 867 unique hashes; final 5 receipts swept, reaching 867/867 recoverable-byte saturation
- conservative numeric/witness context extraction excluded telemetry/admin numbers
- +240 objects / +373 relations
- cumulative 1,310,551 / 6,410,448

Pass 11 grounded graph motifs:
- topology scan exposed 410,024 duplicate physical edge-log lines from timeout/rollback vs nontransactional file append; unique SQLite counts were correct
- canonical graph rebuilt transactionally and physically matches 6,410,448 pre-Sweep-11 unique relation rows
- topology endpoint pairs: 615,938 COMPOSES, 19,314 USES, 8,514 IMPLIES
- explicit two-hop IMPLIES chains: zero; grammar exhausted without emission
- motif admission tightened to identical singleton problem attachment to block generic/multi-problem helper contamination
- final new motifs: 298 USES dependency bundles, 624 implication fan-outs, 127 implication fan-ins, 1 non-CHAIN composition neighborhood
- +1,050 objects / +4,556 relations
- **current cumulative materialized state: 1,311,601 ORE-v1 objects / 6,415,004 relations**
- immutable motif provenance is stored in `91-PASS11-MOTIF-SOURCE-RECORDS.jsonl`

Full historical semantic replay validation at multi-million-edge scale remains infrastructure debt; move to incremental/hash-indexed admission rather than reparsing frozen history each round.

## Current operating objective

Continue raw discovery with a structurally different decomposition grammar. Next sweep: mine `DERIVED_FROM` topology for meaningful parent-with-multiple-child mathematical decompositions, while excluding atomization/window spam and requiring strong problem/source coherence. No arbitrary graph walks. Every result merges into the same cumulative estate and updates `LOG.md` / `RESUME.md`.
