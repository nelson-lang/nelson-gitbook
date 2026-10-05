#import "nelson_help.typ": *

= RandStream <random:RandStream>

Objet de flux de nombres aléatoires.

== Syntaxe

- #raw("s = RandStream(type)");
- #raw("s = RandStream(type, Name, Value)");
- #raw("x = rand(s, ...)");
- #raw("x = randn(s, ...)");
- #raw("x = randi(s, ...)");
- #raw("p = randperm(s, n)");
- #raw("[s1, s2, ...] = RandStream.create(type, 'NumStreams', n)");

== Description

#strong[RandStream]; crée un flux aléatoire mutable. Les propriétés prises en charge incluent #strong[Type];, #strong[Seed];, #strong[NumStreams];, #strong[StreamIndex];, #strong[State];, #strong[Substream];, #strong[NormalTransform];, #strong[Antithetic]; et #strong[FullPrecision];.

 #strong[Type];, #strong[Seed];, #strong[NumStreams]; et #strong[StreamIndex]; sont en lecture seule après construction. #strong[State];, #strong[Substream];, #strong[NormalTransform];, #strong[Antithetic]; et #strong[FullPrecision]; peuvent être assignés.

 Les types de générateurs pris en charge incluent #strong[mt19937ar];, #strong[twister64];, #strong[dsfmt19937];, #strong[mrg32k3a];, #strong[mlfg6331\_64];, #strong[philox4x32\_10];, #strong[threefry4x64\_20];, #strong[pcg64dxsm]; (alias #strong[pcg];) et #strong[xoshiro256pp]; (alias #strong[xoshiro];).

 #strong[pcg64dxsm]; est un générateur congruentiel permuté 64 bits avec double xor-shift et multiplication, et #strong[xoshiro256pp]; un générateur xor-shift-rotate avec état de 256 bits et double addition. Leur #strong[NormalTransform]; par défaut est #strong[Inversion];. Avec #strong[FullPrecision]; à false, ils génèrent chaque double à partir de 32 bits aléatoires au lieu de 53, ce qui est plus rapide ; deux flux qui ne diffèrent que par #strong[FullPrecision]; génèrent des séquences différentes.

 Les méthodes statiques incluent #strong[create];, #strong[list];, #strong[getGlobalStream]; et #strong[setGlobalStream];.


== Exemples

``````matlab
s = RandStream('mt19937ar', 'Seed', 4);
x = rand(s, 1, 3);
reset(s);
y = rand(s, 1, 3)
``````

Flux pcg64dxsm en précision réduite

``````matlab
s = RandStream('pcg64dxsm', 'Seed', 1, 'FullPrecision', false);
s.NormalTransform
x = rand(s, 1, 4)
``````


== Voir aussi

#nlink(<random:rng>)[rng];, #nlink(<random:rand>)[rand];, #nlink(<random:randn>)[randn];, #nlink(<random:randi>)[randi];, #nlink(<random:randperm>)[randperm];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [Nouveaux types de générateurs : pcg64dxsm et xoshiro256pp],
)
