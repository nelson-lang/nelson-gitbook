# fftshift

Décaler la composante fréquence nulle au centre du spectre.

## Syntaxe

- Y = fftshift(X)
- Y = fftshift(X, DIM)

## Argument d'entrée

- X - un vecteur, une matrice ou un tableau N-D (double, single, integer).
- DIM - axes sur lesquelles effectuer le décalage.

## Argument de sortie

- Y - tableau décalé.

## Description

<p>fftshift(X) décale la composante fréquence nulle au centre du spectre.</p>

## Exemple

```matlab
M = [ 0.,  10.,  20.; 30.,  40., -40.; -30., -20., -10.]
fftshift(M)
fftshift(M, 1)
```

## Voir aussi

[fft](../fftw/ifft.md), [ifftshift](../fftw/ifftshift.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
