# any

Vérifie si au moins un élément d'une matrice satisfait une condition.

## Syntaxe

- R = any(M)
- R = any(M, dim)
- R = any(M, 'all')

## Argument d'entrée

- M - une matrice.
- dim - entier : dimension sur laquelle opérer.
- 'all' - teste tous les éléments de M.

## Argument de sortie

- R - matrice logique.

## Description

<p>any renvoie vrai si au moins un élément d'une matrice satisfait une condition.</p>

## Exemple

```matlab
any([33, 22; 11, 0])
any([33, 22; 11, 0], 2)
```

## Voir aussi

[all](../logical/all.md).

## Historique

| Version | Description                    |
| ------- | ------------------------------ |
| 1.0.0   | version initiale               |
| 1.6.0   | gère l'argument d'entrée 'all' |

## Auteur

Allan CORNET
