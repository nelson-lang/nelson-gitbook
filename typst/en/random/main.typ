#import "nelson_help.typ": *

= Random

The Random module provides tools for generating random numbers and random sequences in Nelson.

 It supports uniform and normal distributions, random integer generation, permutations, and control over the random number generator state.

 This module is essential for simulations, probabilistic modeling, and stochastic computations.

== Functions

- #nlink(<random:RandStream>)[RandStream]: Random number stream object.
- #nlink(<random:rand>)[rand]: Random Number.
- #nlink(<random:randi>)[randi]: Random Integer.
- #nlink(<random:randn>)[randn]: Normally distributed random number.
- #nlink(<random:randperm>)[randperm]: Random permutation of integers values.
- #nlink(<random:rng>)[rng]: Random Number Generator.


#nested[
#pagebreak(weak: true)
#include "RandStream.typ"
#pagebreak(weak: true)
#include "rand.typ"
#pagebreak(weak: true)
#include "randi.typ"
#pagebreak(weak: true)
#include "randn.typ"
#pagebreak(weak: true)
#include "randperm.typ"
#pagebreak(weak: true)
#include "rng.typ"
]
