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

## Transport state

Pass 6 sealed ORE-v1 archive:
- bytes: 844847714
- SHA-256: `2682dca8104a49394d8d8d0105fead721c4d220ebecfb990b0aa7bbc0965abbc`
- nine Google Drive root shards: `MSL-ORE-ESTATE-BOOTSTRAP-PASS6.zip.part-00` through `part-08`
- repo reassembly/checksum tooling: `transport/pass6/`

## Mining state

Pass 6 sealed estate: 458,212 ORE-v1 objects / 1,133,352 relations.

Pass 7 raw sweep has swept all 49 staged raw surfaces and materialized:
- 752,539 ORE-v1 objects
- 4,288,239 relations
- +294,327 objects / +3,154,887 relations over Pass 6

Pass 7 is NOT yet declared sealed. Validation exposed a manifest-generation bug: a swept raw source that contributes only provenance/edges and zero new primary objects must still appear in `manifest.json`. The permanent rule is `swept source => manifest source`. Full fail-closed validation and packaging must be completed before Pass 7 is canonical/sealed.

## Current operating objective

Keep sweeping the raw corpus with independent extraction grammars until repeated sweeps approach object AND provenance saturation. Every result merges into the same ORE estate. Update `LOG.md` and this file as the state advances.
