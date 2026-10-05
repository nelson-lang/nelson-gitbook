#import "nelson_help.typ": *

= ifftn <fftw:ifftn>

Transformée de Fourier inverse multidimensionnelle.

== Syntaxe

- #raw("Y = ifftn(X)");
- #raw("Y = ifftn(X, sz)");

== Argument d'entrée

/ X: un vecteur, une matrice ou un tableau N-D (double, single, integer, logical).
/ sz: un tableau multidimensionnel.

== Argument de sortie

/ Y: un vecteur, une matrice ou un tableau N-D : représentation dans le domaine fréquentiel.

== Description

#strong[Y \= ifftn(X, sz)]; complète #strong[X]; par des zéros ou tronque #strong[X]; pour créer un tableau multidimensionnel de taille #strong[sz]; avant d'effectuer la transformée.

 La taille du résultat #strong[Y]; est #strong[sz];.

 #strong[Y \= ifftn(X)]; effectue la transformée de Fourier inverse N-dimensionnelle.

 Le résultat #strong[Y]; a la même taille que #strong[X];.


== Exemple

``````matlab
f = zeros(5, 5);
f(1:5,4:5) = 1;
Y = ifftn(fftn(f));
``````


== Voir aussi

#nlink(<fftw:fftn>)[fftn];, #nlink(<fftw:fft>)[fft];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
