# MEMORY — cross-session routing table

This file is intentionally compact. It is the durable pointer a future session should load first. The mathematical estate itself is too large for conversational memory; the repo and cumulative ORE releases are the data plane.

## Trigger phrases

If Jared says any of the following, recover this repository/state before answering or asking him to repeat context:

- `the repo`
- `msl-ore-estate`
- `the ore repo`
- `our math`
- `the estate`
- `continue sweeping`
- `next sweep`
- `MSL`
- `Erdos campaign`
- `mine the gold`

## Canonical location

Repository: `jaredwilder/msl-ore-estate`

Purpose: persistent control plane, resume log, ingestion contract, transport metadata, and machine-readable accumulation rules for the user's ENTIRE mathematical estate — not merely Day 2 and not merely one Erdős problem.

## Memory architecture

- Conversational memory is a ROUTING TABLE, not the corpus.
- GitHub repo is the durable CONTROL PLANE.
- Cumulative ORE release is the mathematical DATA PLANE.
- Raw archives / Drive / release assets are the SOURCE BYTES plane.
- `RESUME.md` = current checkpoint.
- `LOG.md` = chronological campaign history.
- `ORE-INGEST-FORMAT-v1.md` = inbound contract.
- `ESTATE-SCOPE.md` = what counts as in-scope mathematics.

Never try to preserve millions of theorem objects as prose memory. Remember where they are and how to resume them.

## Hard operating rules

1. ONE cumulative estate only. No delta-only canonical releases.
2. New sweep inherits all prior ORE objects and provenance and only appends/merges.
3. During raw-mining phase: FIND/PRESERVE FIRST. No novelty hunt, magnitude ranking, or broad adjudication unless explicitly requested.
4. Re-sweep the same source with independent extraction grammars; representation saturation is an empirical question.
5. Object saturation and provenance/relation saturation are separate.
6. Timeouts resume from committed source/chunk/row checkpoints. Never discard committed ore.
7. Transactional SQLite state is authoritative during a sweep; canonical JSONL is materialized from committed unique rows.
8. Every swept raw source belongs in `manifest.json` even if it contributes zero new objects and only provenance.
9. Heavy cumulative archives do not travel through ChatGPT. Git stores control-plane files; heavy payloads travel through <=100 MiB shards / durable storage and ultimately GitHub Releases.
10. Erdős #411 is user-declared CLOSED and is not reopened unless Jared explicitly requests it.

## Scope rule

The campaign scope is now the ENTIRE recoverable mathematical estate across all sessions/days/projects: Day 1, Day 2, earlier Erdős work, MSL language experiments, Lean/formalizer outputs, theorem mines, route histories, witnesses, computations, problem dossiers, repositories, and future math runs. `Day 1` / `Day 2` are provenance labels, not scope boundaries.

## Current checkpoint

Read `RESUME.md` for authoritative counts and unfinished work. As of 2026-09-02 the latest fully materialized cumulative state is Pass 12 at 1,359,663 ORE-v1 objects / 6,631,205 relations. Sweep 13 second-generation atomization has processed 363,710 / 363,710 later parent-like objects in 19/19 resumable chunks and currently holds 228,148 distinct atom candidates / 423,183 parent→atom candidate relations awaiting global anti-join against the existing estate and cumulative materialization.

## How to resume in a fresh session

1. Fetch `MEMORY.md`.
2. Fetch `RESUME.md`.
3. Fetch tail/current section of `LOG.md`.
4. Inspect the latest cumulative release/manifest referenced there.
5. Continue the exact unfinished sweep before starting a new one.
6. Update `LOG.md`, `RESUME.md`, and this file when the authoritative checkpoint changes materially.

Do not ask Jared to reconstruct the project from memory if this repo is accessible.
