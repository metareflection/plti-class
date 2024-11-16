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

Paper of the day (POPL'17): _Do be do be do_ ([paper](https://arxiv.org/pdf/1611.09259), [code](https://github.com/frank-lang/frank)).

### Thursday, October 24

Daniel and Dashiell lead a session on HoTT.

Readings of the day:
- Read Sections 2.1-2.4 + 2.10 of the [HoTT book](https://homotopytypetheory.org/book/) ([PDF](https://hott.github.io/book/hott-online.pdf.html)),
- Peek at [Cubical Agda](https://dl.acm.org/doi/10.1145/3341691).

Additional resources:
- _Introduction to Homotopy Type Theory_ by Rĳke ([PDF](https://arxiv.org/pdf/2212.11082): an alternative to the HoTT book more focused on a bottom-up deriviation of concepts in mathematics within HoTT.
- Videos by Emily Riehl, overviewing category theory behind HoTT:
  [1](https://www.youtube.com/live/VdxdQiucJe8?si=RA47-3SM8nTjR5UC),
  [2](https://youtu.be/XIYoI5j5Flo?si=PeiQLjid_MAuCtAJ),
  [3](https://youtu.be/A6hXn6QCu0k?si=NQ_zBVsK_bCYeG2S).

## Week 9

### Tuesday, October 29 (Project Proposals Due)

Guest lecture by Michael Ballantyne on reconciling optimizing compilation and extensibility.

- Paper of the day (ICFP'24 Functional Pearl): _Compiled, Extensible, Multi-language DSLs_ ([paper](https://dl.acm.org/doi/10.1145/3674627), [code](https://github.com/michaelballantyne/syntax-spec/tree/main/demos/mk-workshop-2024)).
- Optional paper on the broader picture of Racket's language-oriented programming (CACM'18): [_A Programmable Programming Language_](https://cacm.acm.org/research/a-programmable-programming-language/).

### Thursday, October 31

Saketh and Suki lead a session on LLMs and mathematical discovery.

Paper of the day (NeurIPS'24):
_Learning Formal Mathematics From Intrinsic Motivation_ by
Gabriel Poesia, David Broman, Nick Haber and Noah D. Goodman
([paper](https://arxiv.org/abs/2407.00695), [code](https://github.com/gpoesia/minimo))

## Week 10

### Tuesday, November 5

Guest lecture by William Byrd on [midoriKanren](https://github.com/webyrd/midoriKanren).

Paper of the day: as a warm-up, read this programming pearl on _Quine Generation via Relational Interpreters_ ([PDF](http://webyrd.net/quines/quines.pdf)).


### Thursday, November 7

Guest lecture by Kartik Chandra (MIT) around [memo](https://github.com/kach/memo),
a new probabilistic programming language for expressing computational cognitive models.

Paper of the day: shared draft on Ed. Feedback encouraged.

## Week 11

### Tuesday, November 12

Alice leads a session.

Paper of the day (PLDI'24): _Bit Blasting Probabilistic Programs_ ([PDF](https://dl.acm.org/doi/pdf/10.1145/3656412), [code](https://github.com/Tractables/Dice.jl/tree/hybit)).

### Thursday, November 14

Wolfie leads a session on the [TACO](http://tensor-compiler.org/) tensor algebra compiler.

Paper of the day (OOPSLA'17): _The Tensor Algebra Compiler_ ([PDF](http://tensor-compiler.org/files/kjolstad-oopsla17-tensor-compiler.pdf)). See [all project papers](http://tensor-compiler.org/publications.html).

## Week 12

### Student Presentations of their Ongoing Projects

_Each student has **10 minutes** to pitch their project and get feedback.
The pitch should motivate, describe and situate the project and outline a plan for the rest of semester. What challenges do you anticipate? What milestones do you hope to achieve? How will you evaluate success? Feel free to structure your pitch to maximize feedback from the class._

### Tuesday, November 19

1. Alex C.
2. Wolfie
3. Albert
4. Dennis
5. Alice
6. Suki
7. Howard

### Thursday, November 21

1. Dashiell
2. Ulrik
3. Daniel
4. Matt
5. Seakth
6. Matthew
7. Alvan

## Week 13

### Tuesday, November 26

Project workout.

### Thursday, November 28

Thanksgiving.

## Week 14

### Tuesday, December 3

Last day of class.

Guest speaker McCoy Becker (MIT) will lead a session on probabilistic programming.

Paper of the Day (PLDI'24): [_Probabilistic Programming with Programmable Variational Inference_](https://dl.acm.org/doi/10.1145/3656463)

