# Compression Round 1 — exact-family KBK

Parent estate: Pass 15, 1,582,863 ORE-v1 objects / 7,238,762 relations.

## Lossless exact-statement compression

- Singleton Erdős-attached rows analyzed: 928,704
- Unique conservative normalized statements: 849,557
- Exact same-math clusters: **64,227**
- Redundant rows collapsible without losing provenance: **79,147**
- Same-math clusters mixing STATED with PROVED/COMPUTED: **19,347**
- Of those, cross-source: 19,345
- Clusters containing a CONJECTURE-kind occurrence: 104
- Exact clusters containing a STATED CONJECTURE plus source-supported occurrence: 83; all 83 are COMPUTED-only support in this round, zero have a PROVED occurrence.

## Logical skeleton

- Raw selected IMPLIES/COMPOSES/USES relation rows: 928,191
- Unique endpoint relations after provenance collapse: **901,681**
- Graph-active singleton-problem nodes indexed: 220,000

## KBK support propagation

Base support is intentionally strict: only source status PROVED or COMPUTED. STATED witnesses/counterexamples do not count.

- Direct-source-supported graph nodes: **22,608**
- Supported after exact-same-math propagation: **26,817**
- Nodes unlocked by compression alone: **+4,209**
- Non-CHAIN STATED targets with >=2 supported COMPOSES components: 0 before compression -> **151** after compression.
- Targets with every recorded COMPOSES component supported: **0**. Therefore Round 1 declares no composition proof complete.
- STATED conclusions with >=1 source-supported explicit IMPLIES premise: 48 -> **116** after compression.
- Explicit implication edges queued for checking: **116**.
- Nodes whose currently-recorded USES dependencies are all supported: 4 -> **5**. This is a dependency-completeness signal, not proof.

## Interpretation

Compression changed the usable knowledge graph without inventing mathematics. Exact duplicate families transferred source support across session/index boundaries and unlocked 151 multi-piece conjecture targets plus 116 stated implication conclusions for further composition/kernel work. No multi-piece target had every recorded component supported, so no close is asserted by this round.

The next compression action is to kernel/binding-check the explicit implication queue, replace source-supported premise families with kernel-supported families when they pass, and feed those verdicts back into the graph. That is the KBK loop.
