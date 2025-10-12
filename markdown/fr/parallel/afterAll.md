# afterAll

Exécuter une fonction après que toutes les fonctions en arrière-plan soient terminées.

## Syntaxe

- B = afterAll(F, fcn, n)

## Argument d'entrée

- F - objet Future en entrée (scalaire ou tableau).
- fcn - handle de fonction : fonction à exécuter après toutes les futures en entrée.
- n - nombre d'arguments de sortie.

## Argument de sortie

- B - objet AfterAllFuture.

## Description

<p>B = afterAll(F, fcn, n) renvoie un objet AfterAllFuture B.</p>

<p>La fonction fcn est automatiquement exécutée une fois que tous les éléments du tableau Future F sont terminés.</p>

<p>Si l'un des éléments de F rencontre une erreur, la propriété Error de B contient l'erreur.</p>

## Exemple

```matlab
pool = backgroundPool()
fptrRand = str2func('rand')
fptrMax = str2func('@(r) max(r)')
fptrMin = str2func('@(r) min(r)')
for idx= 1:10
    f(idx) = parfeval(pool, fptrRand, 1, 1000, 1);
end
maxFuture = afterEach(f, fptrMax, 1);
minFuture = afterAll(maxFuture, fptrMin, 1);
fetchOutputs(minFuture)
fetchOutputs(maxFuture)
```

## Voir aussi

[backgroundPool](../parallel/backgroundPool.md), [fetchOutputs](../parallel/fetchOutputs.md), [afterEach](../parallel/afterEach.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
