# cumprod

Produit cumulatif des éléments d'un tableau.

## Syntaxe

- R = cumprod(M)
- R = cumprod(M, d)
- R = cumprod(M, d, direction)
- R = cumprod(M, d, direction, nanflag)

## Argument d'entrée

- M - un tableau de double, single, entiers, ...
- d - dimension le long de laquelle opérer : entier positif scalaire.
- direction - une chaîne : 'reverse', 'forward' (par défaut).
- nanflag - une chaîne : 'includenan' (par défaut) ou 'omitnan'.

## Argument de sortie

- R - Produit cumulatif des éléments du tableau.

## Description

<p>
                        R = cumprod(M) renvoie le produit cumulatif des éléments du tableau M.</p>

## Exemple

```matlab
M = uint8([10:30:70;20:30:80;30:30:90]);
R = cumprod(M)
R = cumprod(M, 'reverse')
```

## Voir aussi

[ndims](../data_analysis/ndims.md), [prod](../data_analysis/prod.md), [cumsum](../data_analysis/cumsum.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
