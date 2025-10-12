# parfeval

Exécuter une fonction en arrière-plan.

## Syntaxe

- f = parfeval(bPool, fptr, n, x1, ..., xm)

## Argument d'entrée

- bPool - objet backgroundPool renvoyé par backgroundPool().
- fptr - handle de fonction : fonction à exécuter.
- n - Nombre d'arguments de sortie.
- x1, ..., xm - Arguments d'entrée, spécifiés comme une liste séparée par des virgules de variables ou d'expressions.

## Argument de sortie

- f - objet FevalFuture.

## Description

<p>f = parfeval(bPool, fptr, n, x1, ..., xm) lance la fonction fptr pour s'exécuter en arrière-plan.</p>

<p>backgroundPool dispose de NumWorkers workers disponibles. Si davantage de fonctions sont programmées, les fonctions attendent qu'une entrée soit disponible dans le pool.</p>

<p>parfeval exécute la fonction fptr sur un worker en arrière-plan.</p>

## Exemple

```matlab
b = backgroundPool()
fptr = str2func('cos');
f = parfeval(b, fptr, 1, 5);
r = fetchOutputs(f)
```

## Voir aussi

[backgroundPool](../parallel/backgroundPool.md), [fetchOutputs](../parallel/fetchOutputs.md), [feval](../functions_manager/feval.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
