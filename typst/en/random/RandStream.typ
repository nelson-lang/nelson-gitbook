#import "nelson_help.typ": *

= RandStream <random:RandStream>

Random number stream object.

== Syntax

- #raw("s = RandStream(type)");
- #raw("s = RandStream(type, Name, Value)");
- #raw("x = rand(s, ...)");
- #raw("x = randn(s, ...)");
- #raw("x = randi(s, ...)");
- #raw("p = randperm(s, n)");
- #raw("[s1, s2, ...] = RandStream.create(type, 'NumStreams', n)");

== Description

#strong[RandStream]; creates a mutable random number stream. Supported stream properties include #strong[Type];, #strong[Seed];, #strong[NumStreams];, #strong[StreamIndex];, #strong[State];, #strong[Substream];, #strong[NormalTransform];, #strong[Antithetic];, and #strong[FullPrecision];.

 #strong[Type];, #strong[Seed];, #strong[NumStreams];, and #strong[StreamIndex]; are read-only after construction. #strong[State];, #strong[Substream];, #strong[NormalTransform];, #strong[Antithetic];, and #strong[FullPrecision]; can be assigned.

 Supported generator types include #strong[mt19937ar];, #strong[twister64];, #strong[dsfmt19937];, #strong[mrg32k3a];, #strong[mlfg6331\_64];, #strong[philox4x32\_10];, #strong[threefry4x64\_20];, #strong[pcg64dxsm]; (alias #strong[pcg];), and #strong[xoshiro256pp]; (alias #strong[xoshiro];).

 #strong[pcg64dxsm]; is a 64-bit permuted congruential generator with double xor-shift multiply and #strong[xoshiro256pp]; a xor-shift-rotate generator with 256-bit state and double addition. Their default #strong[NormalTransform]; is #strong[Inversion];. With #strong[FullPrecision]; set to false, they generate each double from 32 random bits instead of 53, which is faster; two streams that differ only by #strong[FullPrecision]; generate different sequences.

 Static methods include #strong[create];, #strong[list];, #strong[getGlobalStream];, and #strong[setGlobalStream];.


== Examples

``````matlab
s = RandStream('mt19937ar', 'Seed', 4);
x = rand(s, 1, 3);
reset(s);
y = rand(s, 1, 3)
``````

pcg64dxsm stream with reduced precision

``````matlab
s = RandStream('pcg64dxsm', 'Seed', 1, 'FullPrecision', false);
s.NormalTransform
x = rand(s, 1, 4)
``````


== See also

#nlink(<random:rng>)[rng];, #nlink(<random:rand>)[rand];, #nlink(<random:randn>)[randn];, #nlink(<random:randi>)[randi];, #nlink(<random:randperm>)[randperm];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [New generator types: pcg64dxsm and xoshiro256pp],
)
