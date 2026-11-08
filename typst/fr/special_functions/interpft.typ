#import "nelson_help.typ": *

= interpft <special_functions:interpft>

Interpolation 1-D par la méthode FFT.

== Syntaxe

- #raw("y = interpft(x, ny)");
- #raw("y = interpft(x, ny, dim)");

== Argument d'entrée

/ x: un vecteur ou une matrice d'échantillons d'une fonction périodique.
/ ny: le nombre d'échantillons de sortie (au moins le nombre d'entrée).
/ dim: la dimension le long de laquelle interpoler.

== Argument de sortie

/ y: les données rééchantillonnées.

== Description

#strong[y \= interpft(x, ny)]; rééchantillonne #strong[x]; sur #strong[ny]; points équidistants à l'aide de la transformée de Fourier, en supposant #strong[x]; périodique.


== Exemple

``````matlab
y = interpft([1 2 3 4], 8)
``````


== Voir aussi

#nlink(<special_functions:interp1>)[interp1];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Auteur: Allan CORNET
