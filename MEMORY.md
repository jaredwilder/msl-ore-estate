# MEMORY — cross-session routing table

This file is intentionally compact. It is the durable pointer a future session should load first. The mathematical estate itself is too large for conversational memory; the repo and cumulative ORE releases are the data plane.

## Canonical commands

When Jared says **“sweep the entire estate and add the new things to the repo”**, **“sweep the estate for gold and add to repo / compress”**, **“continue the estate”**, **“next sweep”**, or any obvious equivalent, interpret it as ONE continuous process:

> Resume the exact unfinished checkpoint first. Census and sweep the ENTIRE recoverable mathematical estate across all sessions/days/projects with independent extraction grammars; globally dedupe; merge every newly discovered mathematical object and relation into the ONE cumulative ORE estate with full provenance; then run the compression/KBK layer over the updated estate: losslessly cluster same mathematics, propagate support across exact same-math families, rebuild per-problem obligation/proof graphs, expose composition and implication gaps, send checkable ladders to Lean/kernel/exact computation, append verdicts, and feed every proved/refuted/missing obligation back into the estate and next sweep. Update manifests plus durable repo state (`LOG.md`, `RESUME.md`, `MEMORY.md`, coverage indexes, compression ledgers). Never create a delta-only canonical release. Do not stop at Day 1/Day 2/project boundaries. During mining prioritize discovery/preservation; during compression never upgrade source-supported material to kernel truth without an actual check.

Short form:

**SWEEP → MERGE → COMPRESS → KBK COMPOSE → KERNEL/EXACT CHECK → FEEDBACK → SWEEP AGAIN.**

This is the permanent operating loop.

Do not ask Jared to restate which math, which day, or which project. “Entire estate” means all recoverable mathematics.

## Canonical location

Repository: `jaredwilder/msl-ore-estate`

Purpose: persistent control plane, resume log, ingestion contract, transport metadata, compression/KBK state, and machine-readable accumulation rules for the user's ENTIRE mathematical estate.

## Memory architecture

- Conversational memory is a ROUTING TABLE, not the corpus.
- GitHub repo is the durable CONTROL PLANE.
- Cumulative ORE release is the mathematical DATA PLANE.
- Raw archives / Drive / Library / release assets are the SOURCE BYTES plane.
- Compression/KBK artifacts are the DERIVED PROOF-PRESSURE plane.
- `RESUME.md` = current checkpoint.
- `LOG.md` = chronological campaign history.
- `ORE-INGEST-FORMAT-v1.md` = inbound contract.
- `ESTATE-SCOPE.md` = scope.
- `compression/` = reversible compression/KBK results and queues.

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
12. Compression must be reversible: compressed nodes/families retain downward pointers to all ore/provenance they summarize.
13. Source status `PROVED`/`COMPUTED` is support, not kernel truth. `STATED` witnesses/counterexamples do not count as proof support. Kernel/check verdicts are separate machine facts.
14. KBK composition never infers a proof merely because components are nearby. Explicit implications/compositions become obligations until checked.
15. Every compression/check result feeds back into the same estate and changes what the next sweep/compression round sees.

## Scope rule

The campaign scope is the ENTIRE recoverable mathematical estate across all sessions/days/projects: Day 1, Day 2, earlier Erdős work, MSL/Mathematical Speaker experiments, Lean/formalizer outputs, theorem mines, route histories, witnesses, computations, problem dossiers, repositories, and future math runs. Day labels are provenance only.

## Current checkpoint

Read `RESUME.md` for authoritative detail.

As of 2026-09-02:
- Estate Pass 15 is sealed at **1,582,863 ORE-v1 objects / 7,238,762 relations**.
- Every one of the **7,789 Day-1 leaf hashes that was unseen before estate expansion has now been consumed by at least one source-appropriate grammar**.
- Day-1 Wave 2 added **152,906 objects / 153,546 relations**; 152,803 objects are exact Erdős #1061 row computations that passed full source-table structural consistency checks.
- Compression Round 1 is complete and banked under `compression/ROUND1.md`.
- Compression Round 1: 928,704 singleton Erdős rows -> 849,557 conservative unique normalized statements; 64,227 exact same-math clusters; 79,147 redundant rows collapsible without provenance loss; 19,347 STATED-vs-PROVED/COMPUTED mixed clusters.
- Strict direct-source support covered 22,608 graph nodes. Exact same-math propagation raised this to **26,817**, unlocking **+4,209 nodes without new theorem discovery**.
- Multi-piece STATED conjecture targets with >=2 supported COMPOSES components changed **0 -> 151** after compression.
- STATED conclusions with a supported explicit IMPLIES premise changed **48 -> 116**.
- No target had every recorded COMPOSES component supported, so Compression Round 1 asserted **zero new problem closes**.
- Next compression action: binding/kernel/exact-check the 116 implication obligations, promote only checked results, feed missing premises and failures back into the estate, then continue whole-estate sweep plus compression loop.

## How to resume in a fresh session

1. Fetch `MEMORY.md`.
2. Fetch `RESUME.md`.
3. Fetch current/tail of `LOG.md`.
4. Inspect `compression/ROUND1.md` and current compression/check queues when the command includes `compress`, `KBK`, `gold`, or simply asks to continue the estate loop.
5. Continue the exact unfinished sweep/compression/check stage before starting a new one.
6. Globally dedupe and merge into the one cumulative estate.
7. Update `LOG.md`, `RESUME.md`, `MEMORY.md`, manifests, coverage indexes, and compression ledgers at material checkpoints.

Do not ask Jared to reconstruct the project if this repo is accessible.
