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

Pass 6 sealed estate: 458,212 ORE-v1 objects / 1,133,352 relations.

Pass 7 raw sweep:
- swept all 49 staged raw surfaces
- materialized 752,539 ORE-v1 objects / 4,288,239 relations
- +294,327 objects / +3,154,887 relations over Pass 6
- manifest edge-only-source defect repaired by enforcing `swept source => manifest source`
- full historical semantic replay validation remains too slow in Python and must become incremental/hash-indexed

Pass 8 representation + neighborhood sweep:
- exhausted all 48 census surfaces previously marked `NOT_YET_PASS7_RAW_SWEPT`
- added field/object replay, nested JSON mining, adjacent-record windows, native relation replay, contract-version diffs, route-path stitching and claim/obligation bridges
- +56,514 objects / +235,621 relations
- cumulative state: 809,053 ORE-v1 objects / 4,523,860 relations

Pass 9 direct leaf-file sweep:
- SHA-censused the Pass-5 archive against Pass-7/8 swept sources and found 1,483 previously unswept leaf files / ~412 MB
- consumed 1,483/1,483 leaf SHA values, zero missing
- families included 759 direct Lean files, 306 recombination dossiers, 303 problem dossiers, 61 contract-provenance files, prior ore maps, proof specs, curated cross-session material, receipts/formalizer payloads and structured tables
- grammars: raw math lines, +/-1 and +/-2 line windows, paragraphs, Lean declaration windows, structured key/value and row/record neighborhoods, provenance replay, direct Lean dependency reconstruction
- 759 direct Lean files added 19,158 objects / 46,068 relations; recovered 3,283 declarations and 2,686 explicit `USES` relations
- 306 recombination dossiers added 312,406 objects; 303 per-problem dossiers added 50,583
- giant exact-field replay showed provenance saturation: 294,574 rows added only 2 new objects but 183,095 occurrence edges
- +501,258 objects / +1,886,215 relations
- **current cumulative materialized state: 1,310,311 ORE-v1 objects / 6,410,075 relations**
- Pass-9 manifest ships the Pass-5 source ZIP once and represents its 1,483 raw leaf members virtually by exact member SHA to avoid duplicating 412 MB of source bytes

## Current operating objective

Continue raw sweeping with independent grammars. Next: compare the original 3,999-file raw-corpus manifest by exact SHA against every uploaded source archive, recover any direct raw files that were not physically present in the Pass-5 archive, and sweep those bytes. Then continue exact numeric/witness neighborhoods and larger graph/path motifs. Every result merges into the same ORE estate. Update `LOG.md` and this file as state advances.
