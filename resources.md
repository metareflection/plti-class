# Resources

## Catching up with Programming Languages (CS152)

- See the [CS152 schedule](https://groups.seas.harvard.edu/courses/cs152/2024sp/schedule.html) for lecture notes. Particularly relevant are lectures 2-5 on semantics, lecture 7 on lambda calculus, lecture 11 on simply-typed lambda calculus (STLC).

- See the [CS152 resources](https://groups.seas.harvard.edu/courses/cs152/2024sp/resources.html) for book recommendations and programming language pointers.

## Finding papers

### Venues

The main conferences in programming languages are:
- [POPL](https://dl.acm.org/conference/popl)
- [PLDI](https://dl.acm.org/conference/pldi)
- [ICFP](https://dl.acm.org/conference/icfp)
- [OOPSLA](https://dl.acm.org/conference/splash)

They are now all part of the same journal, [Proceedings of the ACM on Programming Languages (PACMPL)](https://dl.acm.org/journal/pacmpl).

Other journals in programming languages include [HOSC](https://link.springer.com/journal/10990/volumes-and-issues), [JFP](https://www.cambridge.org/core/journals/journal-of-functional-programming) and [TOPLAS](https://dl.acm.org/journal/toplas).

Other conferences in programming languages include [ECOOP](https://drops.dagstuhl.de/entities/conference/ECOOP), [FLOPS](https://link.springer.com/book/10.1007/978-981-97-2300-3), [GPCE](https://dl.acm.org/conference/gpce), [ITP](https://itp-conference.github.io/).

Workshops co-located with conferences above can also be good source of papers. Workshops include PEPM, PADL, language-specific workshops (Scheme, miniKanren, Haskell, Coq, ...), topic workshops (egraphs, ...), and many more.
Note that for students, [PLMW](https://www.sigplan.org/Conferences/PLMW/) workshops co-located with the main conferences provide funding and mentoring.

### Some topics/papers

#### LLMs/PL interplay

- ICLR'22:  _Co-training for Theorem Proving with LLMs_ ([PDF](https://arxiv.org/pdf/2102.06203)),
- OOPSLA'22: _Specification-Guided Component-Based Synthesis for Effective Libraries_ ([link](https://dl.acm.org/doi/10.1145/3563310)),
- OOPSLA'24: _Statically Contextualizing Large Language Models with Typed Holes_ ([link](https://arxiv.org/abs/2409.00921)).
- COLM'24: _An In-Context Learning Agent for Formal Theorem-Proving_ ([link](https://arxiv.org/abs/2310.04353)).
- NeurIPS'23: _LeanDojo: Theorem Proving with Retrieval-Augmented Language Models_ ([link](https://arxiv.org/abs/2306.15626)).
- NeuRIPS'24: _Grammar-Aligned Decoding_ ([link](https://arxiv.org/abs/2405.21047)).
- [Guy Van den Broeck](https://web.cs.ucla.edu/~guyvdb/), Prof at UCLA, has some papers around controlling LLMs: [Ctrl-G](https://arxiv.org/abs/2406.13892), [GeLaTo](https://proceedings.mlr.press/v202/zhang23g/zhang23g.pdf), [Semantic Probabilistic Layer](https://proceedings.neurips.cc/paper_files/paper/2022/hash/c182ec594f38926b7fcb827635b9a8f4-Abstract-Conference.html).
- [Gabriel Poesia](https://gpoesia.com/), PhD student at Stanford, has some papers around LLMs for mathematical discovery, e.g., NeurIPS'24: _Learning Formal Mathematics From Intrinsic Motivation_ ([paper](https://arxiv.org/abs/2407.00695), [code](https://github.com/gpoesia/minimo)).

#### Reflective Towers of Interpreters

Prof. Nada Amin might present on reflective towers of interpreters, and their collapsing using the following sequence of artifacts/papers:
- [3-LISP](https://github.com/nikitadanilov/3-lisp),
- [Brown](https://github.com/namin/brown) (non-tower & tower),
- [Blond](https://github.com/namin/blond) (primer and paper),
- [Black](https://github.com/readevalprintlove/black) (scheme and metaocaml),
- [Pink](http://popl18.namin.net) and [Purple](https://github.com/namin/lms-black) (POPL'18).

As a staring point, see the [SIGPLAN blogpost on reflective towers](https://blog.sigplan.org/2021/08/12/reflective-towers-of-interpreters/) by Prof. Nada Amin.

#### Algebraic Effects

##### Tutorials

- ["An Introduction to Algebraic Effects and Handlers" by Matija Pretnar](https://www.eff-lang.org/handlers-tutorial.pdf)
- ["Handlers in Action" by Ohad Kammar, Sam Lindley and Nicolas Oury](https://homepages.inf.ed.ac.uk/slindley/papers/handlers.pdf)

##### Theoretical Foundations

- ["What's Algebraic about Algebraic Effects and Handlers?" by Andrej Bauer](https://arxiv.org/pdf/1807.05923): Good starting paper for those not intimately familiar with category theory and abstract algebra
- ["Semantics for Algebraic Operations" by Gordon Plotkin and John Power](https://homepages.inf.ed.ac.uk/gdp/publications/sem_alg_ops.pdf): Original Paper on Algebraic Effects 
- ["Handlers of Algebraic Effects" by Gordon Plotkin and Matija Pretnar](https://link.springer.com/content/pdf/10.1007/978-3-642-00590-9_7.pdf): Original Paper on Handlers for Algebraic Effects
- ["Combining Effects: Sum and Tensor" by Martin Hyland, Gordon Plotkin and John Power](https://homepages.inf.ed.ac.uk/gdp/publications/Comb_Effects_Jour.pdf)

##### Applied Systems

- ["Algebraic Effects, Fibers, Coroutines Oh My!" by Brandon Dali](https://www.youtube.com/watch?v=7GcrT0SBSnI): Describes Hooks and Fibers for React as Algebraic Effects and Coroutines
- [Poutine: A Guide to Programming with Effect Handlers in Pyro](https://pyro.ai/examples/effect_handlers.html): This describes Pyro's current effect handler stack, Poutine
- ["Effective Concurrency with Algebraic Effects" by KC Sivaramakrishnan](https://kcsrk.info/ocaml/multicore/2015/05/20/effects-multicore/)

##### Misc

- [A bibliography maintained by Yallop](https://github.com/yallop/effects-bibliography)
- ["Generalized Evidence Passing for Effect Handlers (or, Efficient Compilation of Effect Handlers to C)" by Xie and Leijen](https://www.microsoft.com/en-us/research/publication/generalized-evidence-passing-for-effect-handlers/)

#### Binding Structures

- [The POPLmark Challenge](https://www.seas.upenn.edu/~plclub/poplmark/)
- [A Solution to the PoplMark Challenge using de Bruijn indices in Isabelle/HOL](https://isabelle.in.tum.de/~berghofe/papers/poplmark_jar.pdf)
- [DBLib: a Coq library for working with de Bruijn indices](https://github.com/coq-community/dblib)
- [DeBruijn: Intrinsically-typed de Bruijn representation](https://plfa.github.io/DeBruijn/)
- [A locally nameless solution to the POPLmark challenge](https://xavierleroy.org/publi/POPLmark-locally-nameless.pdf)
- [Locally Nameless at Scale](https://www.seas.upenn.edu/~sweirich/papers/coqpl2018.pdf)
- [The Locally Nameless Representation](https://www.chargueraud.org/research/2009/ln/main.pdf)
- [Higher-Order Abstract Syntax](https://www.cs.cmu.edu/~fp/papers/pldi88.pdf)
- [Boxes Go Bananas: Encoding Higher-Order Abstract Syntax with Parametric Polymorphism](https://www.cis.upenn.edu/~sweirich/papers/itabox/icfp-published-version.pdf)
- [Parametric Higher-Order Abstract Syntax for Mechanized Semantics](http://adam.chlipala.net/papers/PhoasICFP08/PhoasICFP08.pdf)
- [Formal Metatheory of Second-Order Abstract Syntax](https://arxiv.org/pdf/2201.03504v1)
- [Nominal Logic: A First Order Theory of Names and Binding](https://www.cl.cam.ac.uk/~amp12/papers/nomlfo/nomlfo.pdf)

#### Probabilistic Programming

#### Relational Programming

#### Theorem Proving / Formal Verification / Proof Assistants

#### Differentiable Programming

#### Reconciling High-Performance, Safety and Abstractions (Rust, Staging, ...)

#### Domain-Specific Languages (for data processing, machine learning)


