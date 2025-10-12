# cancel

Arrêter une fonction s'exécutant en arrière-plan.

## Syntaxe

- cancel(f)

## Argument d'entrée

- f - objet FevalFuture : scalaire ou tableau.

## Description

<p>cancel(f) arrêtera chaque élément en cours d'exécution ou en file d'attente du tableau de Future f.</p>

<p>Un Future annulé marque une erreur dans sa propriété d'état.</p>

<p>Certaines fonctions ne peuvent pas être interrompues avec Ctrl+C ou cancel, comme la fonction save.</p>

## Exemple

```matlab
fptr = str2func('pause');
for i = 1:100
 f(i) = parfeval(backgroundPool, fptr, 0, 5);
end
f(70)
cancel(f(70))
f(70)
```

## Voir aussi

[pause](../core/pause.md), [parfeval](../parallel/parfeval.md), [wait](../parallel/wait.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
