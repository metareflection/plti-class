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

Alvan leads a session on probabilstic programming.

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

## Week 6

### Tuesday, October 8

Alex B. leads a session on Rust verification.

Paper of the day (OOPSLA'23): _Verus: Verifying Rust Programs using Linear Ghost Types_ ([PDF](https://www.andrew.cmu.edu/user/bparno/papers/verus-ghost.pdf), [code](https://github.com/verus-lang/verus)).

Optional extra paper of the day (ICFP'22): _Aeneas: Rust Verification by Functional Translation_ ([PDF](https://dl.acm.org/doi/abs/10.1145/3547647), [code](https://github.com/AeneasVerif/aeneas)).

### Thursday, October 10

Dennis: Hoare logic and how to semi-automatically verify it using SMTs.

**TODO**: pick a paper of the day.

## Week 7

### Tuesday, October 15

Introductory session on multi-stage programming led by Prof. Nada Amin.

Paper of the day (JFP'19): _A SQL to C compiler in 500 lines of code_ ([PDF](https://www.cambridge.org/core/journals/journal-of-functional-programming/article/sql-to-c-compiler-in-500-lines-of-code/C38B40C78B6A9C55232D4A850587FC64), [code](https://scala-lms.github.io/tutorials/query.html)).

### Thursday, October 17 (Assignment 1 Due)

Alex C. leads a session on multi-stage programming.

**TODO**: pick a paper of the day.

## Week 8

### Tuesday, October 22

Daniel and Dashiell will lead a week on HoTT.

**TODO**: pick some reading homework. Also provide extra resources.

### Thursday, October 24

HoTT continued.

## Week 9

### Tuesday, October 29 (Project Proposals Due)

Khoi and Saketh (TBD) lead a session on component-based synthesis for programs and proofs.

**TODO**: pick a paper of the day. Possible candidates so far:
- _Co-training for Theorem Proving with LLMs_ ([PDF](https://arxiv.org/pdf/2102.06203)),
- _Specification-Guided Component-Based Synthesis for Effective Libraries_ ([link](https://dl.acm.org/doi/10.1145/3563310)),
- _Statically Contextualizing Large Language Models with Typed Holes_ ([link](https://arxiv.org/abs/2409.00921)).

### Thursday, October 31

Sakyana leads a session on how PL is relevant to her research at the interplay of machine learning and medicine.

**TODO**: detailed topic and paper of the day TBD.

## Week 10

### Tuesday, November 5

TBD

### Thursday, November 7

Guest lecture by Kartik Chandra (MIT) around [memo](https://github.com/kach/memo),
a new probabilistic programming language for expressing computational cognitive models.

Paper of the day: TBD.

## Week 11

### Tuesday, November 12

Alice leads a session on TBD.

Paper of the day: TBD.

### Thursday, November 14

TBD

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
