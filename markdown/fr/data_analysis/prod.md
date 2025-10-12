# prod

Produit des éléments d'un tableau.

## Syntaxe

- R = prod(M)
- R = prod(M, d)
- R = prod(M, d)
- R = prod(M, d, t)
- R = prod(M, d, t, f)

## Argument d'entrée

- M - un tableau de double, single, entiers, ...
- d - dimension le long de laquelle opérer : entier positif scalaire.
- t - une chaîne : 'default', 'double' ou 'native'.
- f - une chaîne : 'includenan' ou 'omitnan'.

## Argument de sortie

- R - Produit des éléments du tableau.

## Description

<p>
                        R = prod(M) renvoie le produit des éléments du tableau M.</p>

## Exemple

```matlab
M = uint8([10:30:70;20:30:80;30:30:90]);
R = prod(M, 'native')
```

## Voir aussi

[ndims](../data_analysis/ndims.md), [sum](../data_analysis/sum.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
