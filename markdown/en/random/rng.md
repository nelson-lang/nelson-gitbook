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
- rng(s)

## Input argument

- seed - an integer value: new seed for random generator
- generator - a string: 'twister', 'twister64', 'laggedfibonacci607'
- s - a struct

## Output argument

- lst - a cell of strings.
- s - a struct

## Description

  <p><b>lst = rng('enginelist')</b> returns the list of available random number generator.</p>
  <p><b>rng('default')</b> puts the settings of the random number generator to default values.</p>
  <p><b>s = rng('default')</b> puts the settings of the random number generator to default values.</p>
  <p><b>rng('shuffle')</b> puts the settings of the random number generator to default values and returns previous generator as an struct.</p>
  <p><b>s = rng('shuffle')</b> seeds the random number generator based on the current time.</p>
  <p><b>rng(seed)</b> seeds the random number generator using the nonnegative integer.</p>
  <p><b>s = rng(seed)</b> seeds the random number generator using the nonnegative integer and returns previous generator as an struct.</p>
  <p><b>rng(seed, generator)</b> seeds the random number generator using the nonnegative integer and specify also the type of generator used.</p>
  <p><b>s = rng(seed, generator)</b> seeds the random number generator using the nonnegative integer and specify also the type of generator used and returns previous generator as an struct.</p>
  <p><b>rng('shuffle', generator)</b> seeds the random number generator based on the current time and specify also the type of generator used.</p>
  <p><b>s = rng('shuffle', generator)</b> seeds the random number generator based on the current time,specify also the type of generator used and returns previous generator as an struct.</p>
  <p><b>s = rng</b> returns current generator as an struct.</p>
  <p><b>rng(s)</b> restores the settings of the random number generator using a previous struct returned by <b>s = rng</b>.</p>

## Example

```matlab
rng('default');
r = rng()
lst = rng('enginelist')
```

## See also

[rand](rand.md), [randn](randn.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
