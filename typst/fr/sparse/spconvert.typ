#import "nelson_help.typ": *

= spconvert <sparse:spconvert>

Convertit des donnees indexees en matrice sparse.

== Syntaxe

- #raw("S = spconvert(D)");

== Argument d'entrée

/ D: une matrice pleine double m-par-3 ou m-par-4.

== Argument de sortie

/ S: une matrice sparse double ou double complexe.

== Description

#strong[spconvert]; construit une matrice sparse a partir de lignes #strong[\[i j v\]];. Avec quatre colonnes, les lignes sont interpretees comme #strong[\[i j real imag\]];.


== Exemple

``````matlab
D = [1 1 10; 2 3 20; 3 2 30];
S = spconvert(D)
``````


== Voir aussi

#nlink(<sparse:sparse>)[sparse];, #nlink(<sparse:IJV>)[IJV];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
