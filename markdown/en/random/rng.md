# rng

Random Number Generator.

## Syntax

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

## Input argument

- seed - an integer value: new seed for random generator
- generator - a string: 'twister', 'twister64', 'simdTwister', 'combRecursive', 'philox', 'laggedfibonacci607'
- s - a struct

## Output argument

- lst - a cell of strings.
- s - a struct

## Description

<p>
            <b>lst = rng('enginelist')</b> returns the list of available random number generator.</p>
<p>
                <b>rng('default')</b> puts the settings of the random number generator to default values.</p>
<p>
                    <b>s = rng('default')</b> puts the settings of the random number generator to default values.</p>
<p>
                        <b>rng('shuffle')</b> puts the settings of the random number generator to default values and returns previous generator as an struct.</p>
<p>
                            <b>s = rng('shuffle')</b> seeds the random number generator based on the current time.</p>
<p>
                                <b>rng(seed)</b> seeds the random number generator using the nonnegative integer.</p>
<p>
                                    <b>s = rng(seed)</b> seeds the random number generator using the nonnegative integer and returns previous generator as an struct.</p>
<p>
                                        <b>rng(seed, generator)</b> seeds the random number generator using the nonnegative integer and specify also the type of generator used.</p>
<p>
                                            <b>s = rng(seed, generator)</b> seeds the random number generator using the nonnegative integer and specify also the type of generator used and returns previous generator as an struct.</p>
<p>
                                                <b>rng('shuffle', generator)</b> seeds the random number generator based on the current time and specify also the type of generator used.</p>
<p>
                                                    <b>s = rng('shuffle', generator)</b> seeds the random number generator based on the current time,specify also the type of generator used and returns previous generator as an struct.</p>
<p>
                                                        <b>s = rng</b> returns current generator as an struct.</p>
<p>
                                                            <b>rng(s)</b> restores the settings of the random number generator using a previous struct returned by <b>s = rng</b>.</p>
<p></p>
<p>Available generators are:</p>
Value Generator Name Generator Keyword "twister" Mersenne Twister mt19937ar "simdTwister" SIMD-Oriented Fast Mersenne Twister dsfmt19937 "combRecursive" Combined Multiple Recursive mrg32k3a "multFibonacci" Multiplicative Lagged Fibonacci mlfg6331_64 "philox" Philox 4x32 generator with 10 rounds philox4x32_10<p>Default generator is "twister".</p>

## Example

```matlab
rng('default');
r = rng()
lst = rng('enginelist')
```

## See also

[rand](../random/rand.md), [randn](../random/randn.md), [randi](../random/randi.md).

## History

| Version | Description                                                     |
| ------- | --------------------------------------------------------------- |
| 1.0.0   | initial version                                                 |
| 1.15.0  | New random number generator: simdTwister, combRecursive, philox |

## Author

Allan CORNET
