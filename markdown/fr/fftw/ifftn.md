# ifftn

Transformée de Fourier inverse multidimensionnelle.

## Syntaxe

- Y = ifftn(X)
- Y = ifftn(X, sz)

## Argument d'entrée

- X - un vecteur, une matrice ou un tableau N-D (double, single, integer, logical).
- sz - un tableau multidimensionnel.

## Argument de sortie

- Y - un vecteur, une matrice ou un tableau N-D : représentation dans le domaine fréquentiel.

## Description

<p>Y = ifftn(X, sz) complète X par des zéros ou tronque X pour créer un tableau multidimensionnel de taille sz avant d'effectuer la transformée.</p>

<p>La taille du résultat Y est sz.</p>

<p>Y = ifftn(X) effectue la transformée de Fourier inverse N-dimensionnelle.</p>

<p>Le résultat Y a la même taille que X.</p>

## Exemple

```matlab
f = zeros(5, 5);
f(1:5,4:5) = 1;
Y = ifftn(fftn(f));
```

## Voir aussi

[fftn](../fftw/fftn.md), [fft](../fftw/fft.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
