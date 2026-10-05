#import "nelson_help.typ": *

= rng <random:rng>

Random Number Generator.

== Syntax

- #raw("lst = rng('enginelist')");
- #raw("rng('default')");
- #raw("s = rng('default')");
- #raw("rng('shuffle')");
- #raw("s = rng('shuffle')");
- #raw("rng(seed)");
- #raw("s = rng(seed)");
- #raw("rng(seed, generator)");
- #raw("s = rng(seed, generator)");
- #raw("rng('shuffle', generator)");
- #raw("s = rng('shuffle', generator)");
- #raw("s = rng");
- #raw("s = rng(generator)");
- #raw("rng(s)");
- #raw("rng(stream)");

== Input argument

/ seed: an integer value: new seed for random generator
/ generator: a string: 'twister', 'twister64', 'simdTwister', 'combRecursive', 'philox', 'threefry', 'laggedfibonacci607', 'pcg', 'xoshiro'. The keywords 'pcg64dxsm' and 'xoshiro256pp' are also accepted.
/ s: a struct or RandStream object

== Output argument

/ lst: a cell of strings.
/ s: a struct

== Description

#strong[lst \= rng('enginelist')]; returns the list of available random number generator.

 #strong[rng('default')]; puts the settings of the random number generator to default values.

 #strong[s \= rng('default')]; puts the settings of the random number generator to default values.

 #strong[rng('shuffle')]; puts the settings of the random number generator to default values and returns previous generator as an struct.

 #strong[s \= rng('shuffle')]; seeds the random number generator based on the current time.

 #strong[rng(seed)]; seeds the random number generator using the nonnegative integer.

 #strong[s \= rng(seed)]; seeds the random number generator using the nonnegative integer and returns previous generator as an struct.

 #strong[rng(seed, generator)]; seeds the random number generator using the nonnegative integer and specify also the type of generator used.

 #strong[s \= rng(seed, generator)]; seeds the random number generator using the nonnegative integer and specify also the type of generator used and returns previous generator as an struct.

 #strong[rng('shuffle', generator)]; seeds the random number generator based on the current time and specify also the type of generator used.

 #strong[s \= rng('shuffle', generator)]; seeds the random number generator based on the current time,specify also the type of generator used and returns previous generator as an struct.

 #strong[s \= rng]; returns current generator as an struct.

 #strong[rng(s)]; restores the settings of the random number generator using a previous struct returned by#strong[s \= rng];. #strong[rng(stream)]; restores the generator from a #strong[RandStream]; object.

 

 Available generators are:

 

#table(
  columns: 3,
  [Value], [Generator Name], [Generator Keyword], 
  ["twister"], [Mersenne Twister], [mt19937ar], 
  ["simdTwister"], [SIMD-Oriented Fast Mersenne Twister], [dsfmt19937], 
  ["combRecursive"], [Combined Multiple Recursive], [mrg32k3a], 
  ["multFibonacci"], [Multiplicative Lagged Fibonacci], [mlfg6331\_64], 
  ["philox"], [Philox 4x32 generator with 10 rounds], [philox4x32\_10], 
  ["pcg"], [64-bit permuted congruential generator with double xor-shift multiply], [pcg64dxsm], 
  ["xoshiro"], [Xor-shift-rotate generator with 256-bit state and double addition], [xoshiro256pp], 
)
 The "pcg" and "xoshiro" generators produce 64-bit outputs: each double uses 53 random bits and #strong[randn]; uses the inversion method (inverse normal cumulative distribution of a uniform value). Their state (#strong[s.State];) is a uint64 column vector: the engine words (128-bit state and increment for "pcg", 256-bit state for "xoshiro"), the precision mode (0: full precision, 1: reduced precision set by the #strong[FullPrecision]; property of #strong[RandStream];) and a cached 32-bit half output used by the reduced precision mode. The seed is expanded into the engine state with the SplitMix64 generator.

 Default generator is "twister".


== Examples

``````matlab
rng('default');
r = rng()
lst = rng('enginelist')
``````

Reproducible numbers with the xoshiro256++ generator

``````matlab
rng(42, 'xoshiro');
s = rng();
a = rand(1, 3);
rng(s);
b = rand(1, 3);
isequal(a, b)
s.Type
``````


== See also

#nlink(<random:rand>)[rand];, #nlink(<random:randn>)[randn];, #nlink(<random:randi>)[randi];, #nlink(<random:RandStream>)[RandStream];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
  [1.15.0], [New random number generator: simdTwister, combRecursive, philox],
  [2.0.0], [New random number generators: pcg (pcg64dxsm) and xoshiro (xoshiro256pp)],
)

// Author: Allan CORNET
