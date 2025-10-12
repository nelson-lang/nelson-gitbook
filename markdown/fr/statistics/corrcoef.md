# corrcoef

Coefficients de corrélation

## Syntaxe

- R = corrcoef(M)

## Argument d'entrée

- M - un vecteur ou une matrice

## Argument de sortie

- R - Coefficients de corrélation de M.

## Description

<p>
                        R = corrcoef(M) renvoie la matrice des coefficients de corrélation pour M, où les colonnes de M représentent des variables aléatoires et les lignes représentent des observations.</p>

## Exemple

```matlab
M = [4 -7 3; 1 4 -2; 10 7 9];
R = corrcoef(M)
```

## Voir aussi

[cov](../statistics/cov.md), [mean](../statistics/mean.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
