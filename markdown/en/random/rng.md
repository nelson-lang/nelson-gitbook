# rng

Random Number Generator.

## 📝 Syntax

- lst = rng('enginelist')
- rng('default')
- s = rng('default')
- rng('shuffle')
- s = rng('shuffle')
- rng(seed)
- s = rng(seed)
- rng(seed, generator)
- s = rng(seed, generator)
- rng('shuffle', generator)
- s = rng('shuffle', generator)
- s = rng
- s = rng(generator)
- rng(s)
- rng(stream)

## 📥 Input argument

- seed - an integer value: new seed for random generator
- generator - a string: 'twister', 'twister64', 'simdTwister', 'combRecursive', 'philox', 'threefry', 'laggedfibonacci607', 'pcg', 'xoshiro'. The keywords 'pcg64dxsm' and 'xoshiro256pp' are also accepted.
- s - a struct or RandStream object

## 📤 Output argument

- lst - a cell of strings.
- s - a struct

## 📄 Description

<b>lst = rng('enginelist')</b> returns the list of available random number generator.

<b>rng('default')</b> puts the settings of the random number generator to default values.

<b>s = rng('default')</b> puts the settings of the random number generator to default values.

<b>rng('shuffle')</b> puts the settings of the random number generator to default values and returns previous generator as an struct.

<b>s = rng('shuffle')</b> seeds the random number generator based on the current time.

<b>rng(seed)</b> seeds the random number generator using the nonnegative integer.

<b>s = rng(seed)</b> seeds the random number generator using the nonnegative integer and returns previous generator as an struct.

<b>rng(seed, generator)</b> seeds the random number generator using the nonnegative integer and specify also the type of generator used.

<b>s = rng(seed, generator)</b> seeds the random number generator using the nonnegative integer and specify also the type of generator used and returns previous generator as an struct.

<b>rng('shuffle', generator)</b> seeds the random number generator based on the current time and specify also the type of generator used.

<b>s = rng('shuffle', generator)</b> seeds the random number generator based on the current time,specify also the type of generator used and returns previous generator as an struct.

<b>s = rng</b> returns current generator as an struct.

<b>rng(s)</b> restores the settings of the random number generator using a previous struct returned by<b>s = rng</b>. <b>rng(stream)</b> restores the generator from a <b>RandStream</b> object.

Available generators are:

| Value           | Generator Name                                                        | Generator Keyword |
| --------------- | --------------------------------------------------------------------- | ----------------- |
| "twister"       | Mersenne Twister                                                      | mt19937ar         |
| "simdTwister"   | SIMD-Oriented Fast Mersenne Twister                                   | dsfmt19937        |
| "combRecursive" | Combined Multiple Recursive                                           | mrg32k3a          |
| "multFibonacci" | Multiplicative Lagged Fibonacci                                       | mlfg6331_64       |
| "philox"        | Philox 4x32 generator with 10 rounds                                  | philox4x32_10     |
| "pcg"           | 64-bit permuted congruential generator with double xor-shift multiply | pcg64dxsm         |
| "xoshiro"       | Xor-shift-rotate generator with 256-bit state and double addition     | xoshiro256pp      |

The "pcg" and "xoshiro" generators produce 64-bit outputs: each double uses 53 random bits and <b>randn</b> uses the inversion method (inverse normal cumulative distribution of a uniform value). Their state (<b>s.State</b>) is a uint64 column vector: the engine words (128-bit state and increment for "pcg", 256-bit state for "xoshiro"), the precision mode (0: full precision, 1: reduced precision set by the <b>FullPrecision</b> property of <b>RandStream</b>) and a cached 32-bit half output used by the reduced precision mode. The seed is expanded into the engine state with the SplitMix64 generator.

Default generator is "twister".

## 💡 Examples

```matlab
rng('default');
r = rng()
lst = rng('enginelist')
```

Reproducible numbers with the xoshiro256++ generator

```matlab
rng(42, 'xoshiro');
s = rng();
a = rand(1, 3);
rng(s);
b = rand(1, 3);
isequal(a, b)
s.Type
```

## 🔗 See also

[rand](../random/rand.md), [randn](../random/randn.md), [randi](../random/randi.md), [RandStream](../random/RandStream.md).

## 🕔 History

| Version | 📄 Description                                                           |
| ------- | ------------------------------------------------------------------------ |
| 1.0.0   | initial version                                                          |
| 1.15.0  | New random number generator: simdTwister, combRecursive, philox          |
| 2.0.0   | New random number generators: pcg (pcg64dxsm) and xoshiro (xoshiro256pp) |

<!--
## 👤 Author

Allan CORNET
-->
