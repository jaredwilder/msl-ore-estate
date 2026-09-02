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
- Timeouts must resume from source/chunk/row checkpoints; never restart by discarding committed ore.
- Heavy cumulative archives do not travel through ChatGPT. Git holds control-plane files; heavy archives move by <=100 MiB transport shards and ultimately belong in GitHub Releases.
- Erdos #411 is user-declared CLOSED and is not reopened unless explicitly requested.
- `LOG.md` is the durable running campaign log and must be updated as sweep state advances.

## Transport state

Pass 6 sealed ORE-v1 archive:
- bytes: 844847714
- SHA-256: `2682dca8104a49394d8d8d0105fead721c4d220ebecfb990b0aa7bbc0965abbc`
- nine Google Drive root shards: `MSL-ORE-ESTATE-BOOTSTRAP-PASS6.zip.part-00` through `part-08`
- repo reassembly/checksum tooling: `transport/pass6/`
- canonical Drive IDs are recorded in `LOG.md`; duplicate retry copies exist for parts 02 and 06, so use the logged IDs or verify against the shard checksum file.

## Mining state

Pass 6 sealed: 458,212 objects / 1,133,352 relations.

Pass 7:
- all 49 staged raw surfaces swept
- +294,327 objects / +3,154,887 relations
- cumulative 752,539 / 4,288,239
- edge-only-source manifest defect repaired by `swept source => manifest source`

Pass 8:
- all 48 remaining representation surfaces from census swept
- field/nested JSON/adjacent-record/native-relation/contract-diff/route-path/obligation-bridge grammars
- +56,514 objects / +235,621 relations
- cumulative 809,053 / 4,523,860

Pass 9 direct leaf sweep:
- SHA census found 1,483 previously unswept leaf files / ~412 MB in Pass-5 archive
- consumed 1,483/1,483 exact leaf SHA values, zero missing
- direct line/windows/paragraph/Lean declaration/structured-record/provenance/dependency grammars
- +501,258 objects / +1,886,215 relations
- cumulative 1,310,311 / 6,410,075

Pass 10 raw-hash recovery + numeric/witness context:
- original raw corpus manifest: 3,999 rows / 3,971 unique hashes
- 867 unique original raw hashes are physically recoverable as exact bytes from archives available in this session
- Passes 7–9 had swept 862; recovered and swept final 5 receipts (#170, #276, #289, #1142, #1212), giving 867/867 recoverable-byte saturation
- five recovered receipts added only 3 objects / 19 relations
- 94 witness-bank rows -> 188 contextual witness/construction objects / 282 relations
- 1,485 numeric payload rows -> 49 objects / 72 relations after excluding booleans, telemetry and administrative counts; exact numerator/denominator pairs and same-record numeric contexts reconstructed
- +240 objects / +373 relations
- **current cumulative materialized state: 1,310,551 ORE-v1 objects / 6,410,448 relations**
- raw-byte and numeric representations are strongly saturated relative to bytes physically available here

Full historical semantic replay validation at multi-million-edge scale remains infrastructure debt; move to incremental/hash-indexed admission rather than reparsing frozen history each round.

## Current operating objective

Continue raw discovery with structurally different graph grammars. Sweep 11: grounded graph motifs only—explicit two-hop `IMPLIES`, multi-parent `COMPOSES` neighborhoods, and theorem/dependency neighborhoods where participating objects share a problem attachment. No arbitrary graph walks/path spam. Every result merges into the same cumulative estate, and `LOG.md` / `RESUME.md` are updated at checkpoints.
