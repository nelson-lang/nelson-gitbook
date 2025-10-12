# fft2

Transformée de Fourier 2-D rapide.

## Syntaxe

- Y = fft2(X)
- Y = fft2(X, m, n)

## Argument d'entrée

- X - tableau d'entrée.
- m - nombre de lignes pour la transformée.
- n - nombre de colonnes pour la transformée.

## Argument de sortie

- Y - a vector, matrix, N-D array: frequency domain representation.

## Description

<p>Y = fft2(X) renvoie la transformée de Fourier bidimensionnelle de X en utilisant un algorithme FFT.</p>

<p>Les arguments optionnels m et n peuvent être utilisés pour préciser le nombre de lignes et de colonnes de X à utiliser.</p>

<p>Si l'un de ces arguments est plus grand que la taille de X, X est redimensionné et complété par des zéros.</p>

<p>Si X est un tableau multidimensionnel, chaque sous-matrice bidimensionnelle de X est traitée séparément.</p>

## Exemple

```matlab
R = fft2(eye(5, 5), 2, 3)
```

## Voir aussi

[fftn](../fftw/fftn.md), [fft](../fftw/fft.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
