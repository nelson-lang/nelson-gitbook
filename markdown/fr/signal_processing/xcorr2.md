# xcorr2

Corrélation croisée 2-D.

## Syntaxe

- C = xcorr2(A)
- C = xcorr2(A, B)

## Argument d'entrée

- A - matrices
- B - matrices

## Argument de sortie

- C - matrice de corrélation croisée 2-D ou d'autocorrélation

## Description

<p>
        xcorr2(A, B) calcule la corrélation croisée entre deux matrices, A et B, en deux dimensions, sans mise à l'échelle.</p>

## Exemple

```matlab
X = ones(2, 3);
H = [1 2; 3 4; 5 6];
C = xcorr2(H, X)
```

## Voir aussi

[filter2](../signal_processing/filter2.md), [conv2](../data_analysis/conv2.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.3.0   | version initiale |

## Auteur

Allan CORNET
