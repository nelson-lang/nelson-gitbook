# afterEach

Exécuter une fonction après chaque fin d'exécution en arrière-plan.

## Syntaxe

- B = afterEach(F, fcn, n)

## Argument d'entrée

- F - objet Future en entrée (scalaire ou tableau).
- fcn - handle de fonction : fonction à exécuter après chaque future en entrée.
- n - nombre d'arguments de sortie.

## Argument de sortie

- B - objet AfterEachFuture.

## Description

<p>B = afterEach(F, fcn, n) renvoie un objet AfterEachFuture B.</p>

<p>La fonction fcn est automatiquement exécutée après chaque élément du tableau Future F lorsqu'il est terminé.</p>

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

[backgroundPool](../parallel/backgroundPool.md), [fetchOutputs](../parallel/fetchOutputs.md), [afterAll](../parallel/afterAll.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
