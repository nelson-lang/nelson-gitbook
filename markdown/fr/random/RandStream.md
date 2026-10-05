# RandStream

Objet de flux de nombres aléatoires.

## 📝 Syntaxe

- s = RandStream(type)
- s = RandStream(type, Name, Value)
- x = rand(s, ...)
- x = randn(s, ...)
- x = randi(s, ...)
- p = randperm(s, n)
- [s1, s2, ...] = RandStream.create(type, 'NumStreams', n)

## 📄 Description


<b>RandStream</b> crée un flux aléatoire mutable. Les propriétés prises en charge incluent <b>Type</b>, <b>Seed</b>, <b>NumStreams</b>, <b>StreamIndex</b>, <b>State</b>, <b>Substream</b>, <b>NormalTransform</b>, <b>Antithetic</b> et <b>FullPrecision</b>. 

<b>Type</b>, <b>Seed</b>, <b>NumStreams</b> et <b>StreamIndex</b> sont en lecture seule après construction. <b>State</b>, <b>Substream</b>, <b>NormalTransform</b>, <b>Antithetic</b> et <b>FullPrecision</b> peuvent être assignés. 

Les types de générateurs pris en charge incluent <b>mt19937ar</b>, <b>twister64</b>, <b>dsfmt19937</b>, <b>mrg32k3a</b>, <b>mlfg6331\_64</b>, <b>philox4x32\_10</b>, <b>threefry4x64\_20</b>, <b>pcg64dxsm</b> (alias <b>pcg</b>) et <b>xoshiro256pp</b> (alias <b>xoshiro</b>). 

<b>pcg64dxsm</b> est un générateur congruentiel permuté 64 bits avec double xor-shift et multiplication, et <b>xoshiro256pp</b> un générateur xor-shift-rotate avec état de 256 bits et double addition. Leur <b>NormalTransform</b> par défaut est <b>Inversion</b>. Avec <b>FullPrecision</b> à false, ils génèrent chaque double à partir de 32 bits aléatoires au lieu de 53, ce qui est plus rapide ; deux flux qui ne diffèrent que par <b>FullPrecision</b> génèrent des séquences différentes. 

Les méthodes statiques incluent <b>create</b>, <b>list</b>, <b>getGlobalStream</b> et <b>setGlobalStream</b>.

## 💡 Exemples



```matlab
s = RandStream('mt19937ar', 'Seed', 4);
x = rand(s, 1, 3);
reset(s);
y = rand(s, 1, 3)
```
Flux pcg64dxsm en précision réduite

```matlab
s = RandStream('pcg64dxsm', 'Seed', 1, 'FullPrecision', false);
s.NormalTransform
x = rand(s, 1, 4)
```


## 🔗 Voir aussi

[rng](../random/rng.md), [rand](../random/rand.md), [randn](../random/randn.md), [randi](../random/randi.md), [randperm](../random/randperm.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | Nouveaux types de générateurs : pcg64dxsm et xoshiro256pp |
