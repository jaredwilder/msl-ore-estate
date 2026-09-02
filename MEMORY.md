# MEMORY — cross-session routing table

This file is intentionally compact. It is the durable pointer a future session should load first. The mathematical estate itself is too large for conversational memory; the repo and cumulative ORE releases are the data plane.

## Canonical command

When Jared says **“sweep the entire estate and add the new things to the repo”** (or any obvious equivalent), interpret it as:

> Resume the exact unfinished checkpoint first. Then census and sweep the ENTIRE recoverable mathematical estate across all sessions/days/projects with independent extraction grammars; globally dedupe; merge every newly discovered mathematical object and relation into the ONE cumulative ORE estate with full provenance; update manifests and durable repo state (`LOG.md`, `RESUME.md`, `MEMORY.md`, coverage indexes); never create a delta-only canonical release; do not stop at Day 1/Day 2/project boundaries; during mining, prioritize discovery/preservation over novelty, magnitude ranking, or broad adjudication.

Do not ask Jared to restate which math, which day, or which project. “Entire estate” means all recoverable mathematics.

## Trigger phrases

If Jared says `sweep the entire estate`, `the repo`, `msl-ore-estate`, `our math`, `the estate`, `continue sweeping`, `next sweep`, `MSL`, `Erdos campaign`, or `mine the gold`, recover this repository/state before asking him to repeat context.

## Canonical location

Repository: `jaredwilder/msl-ore-estate`

Purpose: persistent control plane, resume log, ingestion contract, transport metadata, and machine-readable accumulation rules for the user's ENTIRE mathematical estate.

## Memory architecture

- Conversational memory is a ROUTING TABLE, not the corpus.
- GitHub repo is the durable CONTROL PLANE.
- Cumulative ORE release is the mathematical DATA PLANE.
- Raw archives / Drive / Library / release assets are the SOURCE BYTES plane.
- `RESUME.md` = current checkpoint.
- `LOG.md` = chronological campaign history.
- `ORE-INGEST-FORMAT-v1.md` = inbound contract.
- `ESTATE-SCOPE.md` = scope.

Never try to preserve millions of theorem objects as prose memory. Remember where they are and how to resume them.

## Hard operating rules

1. ONE cumulative estate only. No delta-only canonical releases.
2. New sweep inherits all prior ORE objects and provenance and only appends/merges.
3. During raw mining: FIND/PRESERVE FIRST. No novelty hunt, magnitude ranking, or broad adjudication unless explicitly requested.
4. Re-sweep the same source with independent extraction grammars.
5. Object saturation and provenance/relation saturation are separate.
6. Timeouts resume from committed source/chunk/row checkpoints.
7. Transactional SQLite state is authoritative during sweeps; canonical JSONL is materialized from committed unique rows.
8. Every swept source belongs in the manifest even if it adds only provenance.
9. Heavy cumulative archives do not travel through ChatGPT; use durable transport/storage and GitHub Releases.
10. Erdős #411 is user-declared CLOSED and is not reopened unless explicitly requested.
11. A source that does not pass one extraction grammar remains `UNDER_SWEPT`; it is never silently discarded.

## Scope rule

The campaign scope is the ENTIRE recoverable mathematical estate across all sessions/days/projects: Day 1, Day 2, earlier Erdős work, MSL/Mathematical Speaker experiments, Lean/formalizer outputs, theorem mines, route histories, witnesses, computations, problem dossiers, repositories, and future math runs. Day labels are provenance only.

## Current checkpoint

Read `RESUME.md` for authoritative detail.

As of 2026-09-02:
- Pass 13 sealed at 1,380,093 objects / 6,766,099 relations.
- Estate Pass 14 / Day-1 Wave 1 is sealed at **1,429,957 ORE-v1 objects / 7,085,216 relations**.
- Day-1 recursive census found 8,107 unique leaf hashes; only 318 were already known; 7,789 were unseen.
- 4,762 high-confidence unseen Day-1 leaves were swept; quality-gated gain was **49,864 objects / 319,117 relations**.
- **3,027 unseen lower-confidence Day-1 leaves remain UNDER_SWEPT.**
- Estate Census 1 has already identified genuinely external Aug-31/Aug-30/Aug-29/Aug-28 math families including raw problem sessions, MSL/Mathematical Speaker work, formalizer assets, #902/JSPACE work, standalone Lean files, and session exports.

## How to resume in a fresh session

1. Fetch `MEMORY.md`.
2. Fetch `RESUME.md`.
3. Fetch current/tail of `LOG.md`.
4. Continue the exact unfinished estate census/sweep.
5. Globally dedupe and merge into the one cumulative estate.
6. Update `LOG.md`, `RESUME.md`, and this file at material checkpoints.

Do not ask Jared to reconstruct the project if this repo is accessible.
