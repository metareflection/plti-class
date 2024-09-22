# Assignments

## Assignment: Implement a given semantic model

Here is a semantic model for dependent types, provided as a [PDF](hw/DependentTypes.pdf) and [LaTeX](hw/DependentTypes.tex).

Implement this model in the language/system of your choice.

Explain any deviation from the model.

Alternatively, propose a different model (for example, Simply-Typed Lambda-Calculus (STLC) with some extension).
Provide the semantic model, on paper as a PDF.
Then implement the model.

Show some interesting program(s) in your model.
For the model we provide, it is possible to prove that the theorem that addition is commutative,
as the model builds in natural numbers and can encode equality.
This [code in Agda](hw/stdlib.agda) sketches how to prove this theorem within the subset of our provided model.
However, one difference is that parameter types are always explicit in our model.

### Some suggestions

The provided model has mostly syntax-directed rules, except for the typing relation rule Type-Eval, which relates a type to its normalization.
One way to split the concern is to have a syntax-directed function `inferType` (which takes a context and an expression and optionally return a type), and a predicate `checkType` (which takes a context, an expression and its expected type, and returns whether the typing relation holds for these inputs).
For this separation to work, in `inferType`, it is important to always compare types (including in pattern matches on recursive invocations) after normalization (and possibly up to alpha-equivalence).

Normalization can be implemented by iterating over a single-step reduction function that takes an expression and optionally returns its single-step reduction. The evaluation rules we provide express the single-step reduction syntax-directedly.

Capture-avoiding substitution and alpha-equivlanece require a principled technique to reasoning with binders (like Lambda and Pi terms).
It is possibel to use explicit names. This typically requires defining primitives for generating a fresh variable name given a set of existing variable names, for renaming all free occurrences of a variable to another, for equating terms up to alpha-equivalence. This ad-hoc approach requires careful renaming with fresh variables to avoid variable capture.
One alternative is to use De Bruijn indices, with the advantage that terms can be compared structurally and perhaps the disadvantage that manipulating terms is less intuitive.

### Submitting your assignment  (Due on Thursday, October 17)

To submit your assignment, make a pull request to the [_private_ Github metareflection/plti-studio](https://github.com/metareflection/plti-studio).
If you don't have access, ask Prof. Nada Amin to add you.

In your pull request, add a link to your solution in the README. You can create a personal folder for your solution, or you can link to your own public Github repo.

### Some resources for understanding and implementing dependent types

Note that these tutorials use more advanced techniques than what is necessary for the assignment.

- _A tutorial implementation of a dependently typed lambda calculus_ ([PDF](https://www.andres-loeh.de/LambdaPi/LambdaPi.pdf)) by L&ouml;h, McBride, Swierstra (2001).
- _pi-forall_ ([notes](https://github.com/sweirich/pi-forall/blob/2023/doc/oplss.pdf), [code](https://github.com/sweirich/pi-forall)) by Stephanie Weirich (2023).
- David Christiansen, co-author of [_The Little Typer_](https://thelittletyper.com/) with Daniel P. Friedman, has some [tutorials around programming language implementations](https://davidchristiansen.dk/tutorials/), including _Checking Dependent Types with Bidirectional Type Checking and NbE (Normalization by Evaluation)_ -- [Haskell version PDF (2019)](https://davidchristiansen.dk/tutorials/implementing-types-hs.pdf).
