# ORE INGEST FORMAT v1 - how mathematics enters the machine

Operator law, 2026-09-02: raw output is never "unmined ore" again. Every run mines its own
output into this format as a stage of the run. Every backlog release (external mines, old
transcripts, old registries) is converted into this format once and merged into ONE
accumulating ledger. The ledger is not a record. It is fuel: every object with a problem id
becomes a candidate node in that problem's obligation DAG and is pushed through the check
pipe until it is PROVED_KERNEL, REFUTED, SUBSUMED or UNBOUND.

Three files per release. Nothing else is required. Anything else is ignored.

## 1. `ore.jsonl` - one line per mathematical object

Required fields (an object missing any of these is REFUSED at the door, with the line number):

| field | type | meaning |
|---|---|---|
| `ore_id` | string | `sha256(kind + "\n" + statement_canonical)`; the same mathematics from two sources has one id |
| `kind` | enum | `THEOREM` `LEMMA` `CONJECTURE` `WITNESS` `COUNTEREXAMPLE` `FORMULA` `IDENTITY` `INEQUALITY` `CONGRUENCE` `CONSTRUCTION` `BOUND` `REDUCTION` `OBSTRUCTION` `DEFINITION` `PROOF_STEP` `COMPUTATION` `CHAIN` |
| `statement_canonical` | string | the mathematics in one plain sentence or formula, variable names normalized, no prose around it |
| `problems` | list of strings | canonical ids this object bears on, e.g. `["erdos:289"]`; empty list allowed but the object then goes to the unattributed queue |
| `claimed_status` | enum | what the SOURCE asserted: `PROVED` `COMPUTED` `CONJECTURED` `REFUTED` `PARTIAL` `STATED` - never what the miner believes |
| `source` | object | `{path, sha256, line_start, line_end}` of the raw text the object was read from; the raw file must ship in the release or already exist in the estate |
| `extraction` | object | `{release, wave, grammar, tool, version}` - which pass found it, so a grammar can be re-run and audited |

Optional fields (used when present, never required):

| field | type | meaning |
|---|---|---|
| `statement_lean` | string | a Lean 4 statement (signature only, no proof) if the source had one or the miner rendered one; marked `rendered_by` if a model wrote it |
| `lean_source` | object | `{path, sha256}` of a full Lean file claiming to prove it - goes straight to the kernel |
| `payload` | object | exact numbers, tuples, sets, sequences (witnesses, computed values, bounds with their N) as JSON, never inside prose |
| `parameters` | object | named parameters and their domains, e.g. `{"n": "ℕ, n ≥ 2"}` |
| `hypotheses` | list | conditions the statement depends on, each a string; a named open conjecture here makes the object CONDITIONAL |
| `citation` | object | `{author, year, venue, id}` when the source says it is published mathematics |
| `confidence` | number 0-1 | the miner's own extraction confidence; never a truth claim |
| `notes` | string | anything else, free text, ignored by the machine |

Forbidden: any field named `verified`, `certified`, `novel`, `kernel`, `verdict`. Those are the
machine's columns. An inbound release that asserts them is refused whole.

## 2. `edges.jsonl` - one line per relation

| field | type | meaning |
|---|---|---|
| `from` | string | `ore_id` or `src:<sha256>` for a raw source |
| `to` | string | `ore_id` |
| `relation` | enum | `OCCURS_IN` (object found in source) `DERIVED_FROM` (object read out of another object) `IMPLIES` `SPECIALIZES` `GENERALIZES` `DUPLICATES` `REFINES` `COMPOSES` (from is a step of to) `REFUTES` `USES` (proof uses) `SAME_PROBLEM` |
| `extraction` | object | same shape as above |
| `evidence` | string | one line saying why the edge exists (a quoted phrase, a line number, a hash) - an edge without evidence is refused |

`IMPLIES` and `COMPOSES` edges become COMPOSITION obligations in the DAG: they count for
nothing until the kernel proves the implication.

## 3. `manifest.json` - one per release

```
{
 "release_id":        "MSL-DAY2-PASS4-CUMULATIVE-2026-09-02",
 "cumulative_of":     "MSL-DAY2-PASS3-2026-09-02",      // the release this one contains and extends; null only for the first ever
 "produced_by":       "gpt-5 mining session <id>" ,      // who or what
 "grammars":          ["whole-record", "subclaim", "atomization", ...],
 "counts":            {"ore": 336246, "edges": 612545, "sources": 95},
 "files":             [{"path": "ore.jsonl", "sha256": "..."}, {"path": "edges.jsonl", "sha256": "..."}, {"path": "sources/...", "sha256": "..."}],
 "prior_release_sha": "...",
 "notes":             "free text"
}
```

The cumulative rule is enforced at the door: a release whose `counts.ore` is smaller than its
`cumulative_of` release, or whose ore set is not a superset of it, is refused as delta-only.

## 4. What the machine does with it (so the format is fuel, not a ledger)

1. **Admission.** Schema check, forbidden-field check, source hashes present, cumulative rule.
   Refusals are per line with the reason; the release is never silently trimmed.
2. **Canonicalize.** Recompute every `ore_id` from `kind + statement_canonical`; merge duplicates;
   keep every `OCCURS_IN` edge so provenance is never lost; where a `statement_lean` exists,
   normalize it (variable names stripped, pinned prelude) and key on that.
3. **Route to a referee.** By kind: `WITNESS` `COUNTEREXAMPLE` `COMPUTATION` with a `payload` go
   to exact re-computation and then `decide`; `FORMULA` `IDENTITY` `INEQUALITY` `CONGRUENCE`
   with concrete numbers go to `decide`/`norm_num`; anything with `lean_source` goes to the
   kernel; anything with `statement_lean` but no proof goes to the ladder; prose-only
   `THEOREM`/`LEMMA` go to the decomposer to be rendered typed first; `CHAIN` and `IMPLIES`
   edges become composition obligations.
4. **Attach to the problem.** Every object with a problem id becomes a node in that problem's
   obligation DAG: status `OPEN`, or `PROVED_SPEAKER` if `claimed_status` is `PROVED`, binding
   `PARAPHRASE` at best until bound to the frozen contract's types. Witnesses go to the
   witness bank; refutations become obstruction nodes; bounds become `COMPUTED_BOUNDED`.
5. **Verdicts append.** Every referee result is a row `{ore_id, stage, verdict, receipt, sha,
   toolchain}`; status is the fold over rows; `PROVED` exists only with a kernel row;
   `NOVEL` exists only with a fingerprint row that has no corpus hit.
6. **Feed back.** Proved leaves compose upward by source inclusion; proved compositions advance
   parents; the DAG re-emits; the problem's closability updates; the fleet's next round sees the
   new standing lemmas. That is the loop: ore -> node -> verdict -> ladder -> problem.

## 5. Self-mining as a stage of every run

Every campaign round's raw transcript, every registry event, every formalizer output passes
through the same extraction grammars into the same ledger before the round is considered
finished. The outsider's grammars are the regression test: on the same raw, our miner must
produce at least the outsider's object set or it is broken.

## 6. What to hand an external miner

This file. Ask for the three files above, the raw sources they read, and nothing else. Do not
ask for verdicts, novelty opinions, or rankings; the machine computes those.
