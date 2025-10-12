# fftn

Transformée de Fourier rapide N-dimensionnelle.

## Syntaxe

- Y = fftn(X)
- Y = fftn(X, sz)

## Argument d'entrée

- X - un vecteur, une matrice ou un tableau N-D (double, single, integer, logical).
- sz - un tableau multidimensionnel.

## Argument de sortie

- Y - un vecteur, une matrice ou un tableau N-D : représentation dans le domaine fréquentiel.

## Description

<p>Y = fftn(X, sz) complète X par des zéros ou tronque X pour créer un tableau multidimensionnel de taille sz avant d'effectuer la transformée.</p>

<p>La taille du résultat Y est sz.</p>

<p>Y = fftn(X) effectue la transformée de Fourier rapide N-dimensionnelle.</p>

<p>Le résultat Y a la même taille que X.</p>

## Exemple

```matlab
f = zeros(5, 5);
f(1:5,4:5) = 1;
Y = ifftn(fftn(f));
```

## Voir aussi

[ifftn](../fftw/ifftn.md), [fft](../fftw/fft.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
