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

- ["A bibliography maintained" by Yallop](https://github.com/yallop/effects-bibliography)
- ["Generalized Evidence Passing for Effect Handlers (or, Efficient Compilation of Effect Handlers to C)" by Xie and Leijen](https://www.microsoft.com/en-us/research/publication/generalized-evidence-passing-for-effect-handlers/)

#### Probabilistic Programming

#### Relational Programming

#### Theorem Proving / Formal Verification / Proof Assistants

#### Differentiable Programming

#### Reconciling High-Performance, Safety and Abstractions (Rust, Staging, ...)

#### Domain-Specific Languages (for data processing, machine learning)


