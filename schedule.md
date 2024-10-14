# Schedule

## Week 1

### Tuesday, September 3

First day of class.

### Thursday, September 5

- Introductory discussion.
- Presentation by Teaching Fellow Raffi Sanna.

## Week 2

### Tuesday, September 10

- TF Raffi Sanna continues his presentation.
- Prof. Nada Amin presents a quick [demo](https://metareflection.seas.harvard.edu/openai/) of ChatGPT integrating tools like verifiers and solvers through GPT actions.

### Thursday, September 12

We set the schedule for the course.

## Week 3

### Tuesday, September 17

Tutorial on implementing Simply-Typed Lambda Calculus (STLC) with iso-recursive types from formal semantics.

We will consider languages (paradigms) like Dafny (verified functional programming), miniKanren (relational programming), Coq (proof assistant), Idris (dependent types).

We will consider techniques for reasoning about binders, for defining operational semantics (small step vs big step), for representing functions/closures (first order vs higher order).

Preparation homework: read up on STLC and iso-recursive types. TAPL is a good source for both.

Relevant code links:
- [In Dafny, STLC with iso-recursive types by Prof. Nada Amin.](https://github.com/namin/dafny-sandbox/blob/master/Stlc.dfy)
- [In miniKanren, the typing rules for the core STLC.](https://github.com/michaelballantyne/faster-minikanren/blob/master/test-infer.scm)
- [In miniKanren, the big-step relational evaluator for the core STLC.](https://github.com/michaelballantyne/faster-minikanren/blob/master/simple-interp.scm)

### Thursday, September 19

Survey on techniques for reasoning about binders and scope, theoretically and practically.

Challenges include quotienting modulo alpha-equivalence, implementing capture-avoiding substitution, handling shadowing.

Techniques include nominal logic, higher-order abstract syntax (HOAS), de Bruijn index, locally nameless, combinatory logic (which avoids variables entirely).

Preparation homework: dive into a specific technique, and be ready to share insights and code snippets.

## Week 4

### Tuesday, September 24

Alvan leads a session on probabilistic programming.

Paper of the day (POPL'23): _ADEV: Sound Automatic Differentiation of Expected Values of Probabilistic Programs_ ([paper](https://dl.acm.org/doi/10.1145/3571198), [code](https://github.com/probcomp/adev)).

### Thursday, September 26

Matthew R. leads a session on neuro-symbolic programming.

Paper of the day (PLDI'23): _Scallop: A Language for Neurosymbolic Programming_ ([paper](https://dl.acm.org/doi/10.1145/3591280), [code](https://www.scallop-lang.org/)).

## Week 5

### Tuesday, October 1

Ulrik and Matt lead a session on theorem proving and machine learning.

**Tentative** paper of the day (NeurIPS'18): _Reinforcement Learning of Theorem Proving_ ([PDF](https://arxiv.org/pdf/1805.07563)). See also more recent work by first author, [Cezary Kaliszy](http://cl-informatik.uibk.ac.at/cek/), highlighted in his [CPP'24 keynote](https://popl24.sigplan.org/details/CPP-2024-papers/22/Improved-Assistance-for-Interactive-Proof) ([video](https://www.youtube.com/watch?v=28YDQ_GO77k)).

**TODO** for leaders: please explore the theme, and confirm the paper of the day. I recall the current paper is a bit low on technical details, but maybe that's OK if you supplement with your own research. Also send a pull request with more resources below.

Resources on automated theorem proving: [leanTAP](https://formal.kastel.kit.edu/beckert/leantap/).

### Thursday, October 3

Raffi will lead a session on binders.

Preparation homework: Look at the definition of capture-avoiding substitution as laid out [in the assignment](hw/DependentTypes.pdf). Try and find a few examples on which CAS is undefined. What happens if we try to evaluate them naively (just replacing all the variables by name)? Can you use the α-equivalence rule to convert your examples into terms on which CAS is defined? 

The slides for this session are available [here](hw/pres.pdf).

## Week 6

### Tuesday, October 8

Dennis leads a session on Hoare logic and how to semi-automatically verify it via verification conditions.

Paper of the day (FM'23): _HHLPy: Practical Verification of Hybrid Systems using Hoare Logic_ ([PDF](https://arxiv.org/pdf/2210.17163), [code](https://github.com/bzhan/mars/tree/master/hhlpy))

Pointers on Hoare Logic:
- [CS152 Lecture Notes](https://groups.seas.harvard.edu/courses/cs152/2024sp/lectures/lec19-axiomatic.pdf)
- [CACM'69: _An axiomatic basis for computer programming_ by C. A. R. Hoare](https://dl.acm.org/doi/abs/10.1145/363235.363259)
- [_Fifty years of Hoare’s logic_](https://link.springer.com/article/10.1007/s00165-019-00501-3)

### Thursday, October 10

Alex B. leads a session on Rust verification.

System of the day: Verus ([code](https://github.com/verus-lang/verus), [playground](https://play.verus-lang.org/), [guide](https://verus-lang.github.io/verus/guide/), [VerusBench (hand-written examples)](https://github.com/secure-foundations/human-eval-verus/)). Recent papers:
- SOSP'24: _Verus: A Practical Foundation for Systems Verification_ ([accepted draft in shepherding](https://github.com/verus-lang/paper-sosp24-artifact/blob/main/ae/paper-20240821-212701-e33099e.pdf), [code for case studies](https://verus-lang.github.io/paper-sosp24-artifact/case-studies))
- OOPSLA'23: _Verus: Verifying Rust Programs using Linear Ghost Types_ ([PDF](https://www.andrew.cmu.edu/user/bparno/papers/verus-ghost.pdf)).

Optional extra paper of the day (ICFP'22): _Aeneas: Rust Verification by Functional Translation_ ([PDF](https://dl.acm.org/doi/abs/10.1145/3547647), [code](https://github.com/AeneasVerif/aeneas)).

## Week 7

### Tuesday, October 15

Introductory session on multi-stage programming led by Prof. Nada Amin and guest Cameron Wong, who will also discuss related ongoing research.

Paper of the day (JFP'19): _A SQL to C compiler in 500 lines of code_ ([PDF](https://www.cambridge.org/core/journals/journal-of-functional-programming/article/sql-to-c-compiler-in-500-lines-of-code/C38B40C78B6A9C55232D4A850587FC64), [code](https://scala-lms.github.io/tutorials/query.html)).

#### Extra pointers on multi-stage programming

All **bold**ed projects might be touched upon in class demos.

Projects using Scala/LMS:
- **LMS**: Lightweight Modular Staging ([CACM'12](https://cacm.acm.org/research/lightweight-modular-staging), [tutorials](https://scala-lms.github.io/))
- **LMS-Verify** ([POPL'17 PDF](http://lampwww.epfl.ch/~amin/pub/lms-verify.pdf), [code](https://github.com/namin/lms-verify))
- **Collapsing Towers of Interpreters** ([POPL'18 PDF](http://lampwww.epfl.ch/~amin/pub/collapsing-towers.pdf), [code](http://popl18.namin.net))
- **Collapsing Towers for Side-Channel Security** (Draft TBD, [code](https://github.com/namin/lms-koika))
- GenSym ([ICSE'23 PDF](https://continuation.passing.style/static/papers/icse23.pdf), [code](https://github.com/Generative-Program-Analysis/GenSym))

Multi-stage programming in other languages/systems:
- [MetaOCaml](https://okmij.org/ftp/ML/MetaOCaml.html)
- BuildIt in C++ ([CGO'21 PDF](https://intimeand.space/docs/buildit.pdf), [code](https://github.com/BuildIt-lang/buildit), [online demo](https://buildit.so/tryit/)) -- the lead Ajay Brahmakshatriya gives a **talk** at the [Harvard PL](https://pl.seas.harvard.edu/) seminar on **Friday, October  18 (2:00-3:15 in SEC 6.412)**
- [**staged-miniKanren**](https://github.com/namin/staged-miniKanren) (Draft TBD)

Some PL theory of multi-stage programming:
- [Two-level type theory (Google Scholar search)](https://scholar.google.com/scholar?hl=en&q=two-level+type+theory)
- [λ-calculus λ°](https://dl.acm.org/doi/abs/10.1145/3011069): A Temporal Logic Approach to Binding-Time Analysis (Rowan Davies, 2017)


### Thursday, October 17 (Assignment 1 Due)

Alex C. leads a session on multi-stage programming.

Paper of the day (ICFP'22): [András Kovács](https://andraskovacs.github.io/), Staged Compilation With Two-Level Type Theory ([PDF](https://andraskovacs.github.io/pdfs/2ltt.pdf), [code](https://github.com/AndrasKovacs/staged), [appendix](https://andraskovacs.github.io/pdfs/2ltt_appendix.pdf))

## Week 8

### Tuesday, October 22

Albert and Howard lead a session on algebraic effects.

**TODO**: pick a paper of the day.

### Thursday, October 24

Daniel and Dashiell lead a session on HoTT.

**TODO**: pick some reading homework. Also provide extra resources.

## Week 9

### Tuesday, October 29 (Project Proposals Due)

Guest lecture by Michael Ballantyne on reconciling optimizing compilation and extensibility.

- Paper of the day (ICFP'24 Functional Pearl): _Compiled, Extensible, Multi-language DSLs_ ([paper](https://dl.acm.org/doi/10.1145/3674627), [code](https://github.com/michaelballantyne/syntax-spec/tree/main/demos/mk-workshop-2024)).
- Optional paper on the broader picture of Racket's language-oriented programming (CACM'18): [_A Programmable Programming Language_](https://cacm.acm.org/research/a-programmable-programming-language/).

### Thursday, October 31

Saketh and Suki lead a session TBD.

**TODO**: pick a paper of the day. Some possible candidates:

- ICLR'22:  _Co-training for Theorem Proving with LLMs_ ([PDF](https://arxiv.org/pdf/2102.06203)),
- OOPSLA'22: _Specification-Guided Component-Based Synthesis for Effective Libraries_ ([link](https://dl.acm.org/doi/10.1145/3563310)),
- OOPSLA'24: _Statically Contextualizing Large Language Models with Typed Holes_ ([link](https://arxiv.org/abs/2409.00921)).
- COLM'24: _An In-Context Learning Agent for Formal Theorem-Proving_ ([link](https://arxiv.org/abs/2310.04353)).
- NeurIPS'23: _LeanDojo: Theorem Proving with Retrieval-Augmented Language Models_ ([link](https://arxiv.org/abs/2306.15626)).
- NeuRIPS'24: _Grammar-Aligned Decoding_ ([link](https://arxiv.org/abs/2405.21047)).
- [Guy Van den Broeck](https://web.cs.ucla.edu/~guyvdb/), Prof at UCLA, has some papers around controlling LLMs: [Ctrl-G](https://arxiv.org/abs/2406.13892), [GeLaTo](https://proceedings.mlr.press/v202/zhang23g/zhang23g.pdf), [Semantic Probabilistic Layer](https://proceedings.neurips.cc/paper_files/paper/2022/hash/c182ec594f38926b7fcb827635b9a8f4-Abstract-Conference.html).
- [Gabriel Poesia](https://gpoesia.com/), PhD student at Stanford, has some papers around LLMs for mathematical discovery, e.g., NeurIPS'24: _Learning Formal Mathematics From Intrinsic Motivation_ ([paper](https://arxiv.org/abs/2407.00695), [code](https://github.com/gpoesia/minimo)).

## Week 10

### Tuesday, November 5

TBD.

### Thursday, November 7

Guest lecture by Kartik Chandra (MIT) around [memo](https://github.com/kach/memo),
a new probabilistic programming language for expressing computational cognitive models.

Paper of the day: TBD.

## Week 11

### Tuesday, November 12

Alice leads a session on TBD.

Paper of the day: TBD.

### Thursday, November 14

Wolfie leads a session on the [TACO](http://tensor-compiler.org/) tensor algebra compiler.

Paper of the day: TBD. See [all project papers](http://tensor-compiler.org/publications.html).

## Week 12

### Tuesday, November 19

Project presentations.

### Thursday, November 21

Project presentations.

## Week 13

### Tuesday, November 26

Project workout.

### Thursday, November 28

Thanksgiving.

## Week 14

### Tuesday, December 3

Last day of class.
