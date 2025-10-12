# sum

Somme des éléments d'un tableau.

## Syntaxe

- R = sum(M)
- R = sum(M, d)
- R = sum(M, d)
- R = sum(M, d, t)
- R = sum(M, d, t, f)

## Argument d'entrée

- M - un tableau de double, single, entiers, ...
- d - dimension le long de laquelle opérer : entier positif scalaire.
- t - une chaîne : 'default', 'double' ou 'native'.
- f - une chaîne : 'includenan' ou 'omitnan'.

## Argument de sortie

- R - Somme des éléments du tableau.

## Description

<p>
            R = sum(M) renvoie la somme des éléments du tableau M.</p>

## Exemple

```matlab
M = uint8([10:30:70;20:30:80;30:30:90]);
R = sum(M, 'native')
```

## Voir aussi

[ndims](../data_analysis/ndims.md), [prod](../data_analysis/prod.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
