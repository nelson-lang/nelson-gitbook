# fetchNext

Récupérer les prochaines sorties non lues d'un tableau FevalFuture.

## Syntaxe

- [idx, y1, ... , ym] = fetchNext(f)
- [idx, y1, ... , ym] = fetchNext(f, timeout)

## Argument d'entrée

- f - objet FevalFuture
- timeout - durée en secondes : attend au maximum timeout secondes qu'un résultat dans f devienne disponible.

## Argument de sortie

- idx - Indice dans le tableau FevalFuture, renvoyé comme scalaire entier.
- y1, ... , ym - sorties

## Description

<p>[idx, y1, ... , ym] = fetchNext(f) récupère l'indice idx du nouvel objet FevalFuture lisible dans le tableau f qui est terminé, ainsi que m résultats de ce FevalFuture en tant que Y1, ... , Ym.</p>

<p></p>

## Exemple

```matlab

tic()
N = 100;
for idx = N:-1:1
    F(idx) = parfeval(backgroundPool,str2func('rank'),1,magic(idx));
end
results = zeros(1,N);
for idx = 1:N
    [finishedIdx, result] = fetchNext(F);
    results(finishedIdx) = result;
    disp(sprintf('Result: %d', result));
end
toc()

```

## Voir aussi

[parfeval](../parallel/parfeval.md), [fetchOutputs](../parallel/fetchOutputs.md), [backgroundPool](../parallel/backgroundPool.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
