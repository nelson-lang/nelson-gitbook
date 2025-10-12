# allfinite

Vérifie si tous les éléments du tableau sont finis.

## Syntaxe

- tf = allfinite(M)

## Argument d'entrée

- M - une variable

## Argument de sortie

- tf - logique : résultat de 'allfinite'.

## Description

<p>
            allfinite renvoie un scalaire logique valant vrai si tous les éléments de M sont des valeurs finies.</p>

## Exemple

```matlab
X = sparse([1 2 NaN 3 0 Inf 0 4]);
R = allfinite(X)
R2 = isfinite(X)
```

## Voir aussi

[isfinite](../elementary_functions/isfinite.md), [isnan](../elementary_functions/isnan.md), [all](../elementary_functions/all.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.6.0   | version initiale |

## Auteur

Allan CORNET
