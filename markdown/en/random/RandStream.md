# RandStream

Random number stream object.

## 📝 Syntax

- s = RandStream(type)
- s = RandStream(type, Name, Value)
- x = rand(s, ...)
- x = randn(s, ...)
- x = randi(s, ...)
- p = randperm(s, n)
- [s1, s2, ...] = RandStream.create(type, 'NumStreams', n)

## 📄 Description


<b>RandStream</b> creates a mutable random number stream. Supported stream properties include <b>Type</b>, <b>Seed</b>, <b>NumStreams</b>, <b>StreamIndex</b>, <b>State</b>, <b>Substream</b>, <b>NormalTransform</b>, <b>Antithetic</b>, and <b>FullPrecision</b>. 

<b>Type</b>, <b>Seed</b>, <b>NumStreams</b>, and <b>StreamIndex</b> are read-only after construction. <b>State</b>, <b>Substream</b>, <b>NormalTransform</b>, <b>Antithetic</b>, and <b>FullPrecision</b> can be assigned. 

Supported generator types include <b>mt19937ar</b>, <b>twister64</b>, <b>dsfmt19937</b>, <b>mrg32k3a</b>, <b>mlfg6331\_64</b>, <b>philox4x32\_10</b>, <b>threefry4x64\_20</b>, <b>pcg64dxsm</b> (alias <b>pcg</b>), and <b>xoshiro256pp</b> (alias <b>xoshiro</b>). 

<b>pcg64dxsm</b> is a 64-bit permuted congruential generator with double xor-shift multiply and <b>xoshiro256pp</b> a xor-shift-rotate generator with 256-bit state and double addition. Their default <b>NormalTransform</b> is <b>Inversion</b>. With <b>FullPrecision</b> set to false, they generate each double from 32 random bits instead of 53, which is faster; two streams that differ only by <b>FullPrecision</b> generate different sequences. 

Static methods include <b>create</b>, <b>list</b>, <b>getGlobalStream</b>, and <b>setGlobalStream</b>.

## 💡 Examples



```matlab
s = RandStream('mt19937ar', 'Seed', 4);
x = rand(s, 1, 3);
reset(s);
y = rand(s, 1, 3)
```
pcg64dxsm stream with reduced precision

```matlab
s = RandStream('pcg64dxsm', 'Seed', 1, 'FullPrecision', false);
s.NormalTransform
x = rand(s, 1, 4)
```


## 🔗 See also

[rng](../random/rng.md), [rand](../random/rand.md), [randn](../random/randn.md), [randi](../random/randi.md), [randperm](../random/randperm.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | New generator types: pcg64dxsm and xoshiro256pp |
