# fetchOutputs

Récupérer les résultats d'une fonction s'exécutant dans le pool d'arrière-plan.

## Syntaxe

- [y1, ... , ym] = fetchOutputs(f)

## Argument d'entrée

- f - objet FevalFuture

## Argument de sortie

- y1, ... , ym - sorties

## Description

<p>[y1, ... , ym] = fetchOutputs(f) récupère m résultats d'un tableau de Future f.</p>

<p></p>

<p>fetchOutputs attend que la fonction associée à f se termine avant de récupérer les résultats.</p>

<p>Si fetchOutputs est appelé, la propriété Read de chaque élément de f est définie sur true.</p>

## Exemples

Sequential version

```matlab

tic()
R1 = magic(5000);
R2 = magic(5000);
toc()
size(R1)

```

Parallel version

```matlab

b = backgroundPool()
tic()
fptr = str2func('magic');
f1 = parfeval(b, fptr, 1, 5000);
f2 = parfeval(b, fptr, 1, 5000);
b
r1 = fetchOutputs(f1);
r2 = fetchOutputs(f2);
toc()
size(r1)
f1
f2
```

## Voir aussi

[parfeval](../parallel/parfeval.md), [backgroundPool](../parallel/backgroundPool.md), [fetchNext](../parallel/fetchNext.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
