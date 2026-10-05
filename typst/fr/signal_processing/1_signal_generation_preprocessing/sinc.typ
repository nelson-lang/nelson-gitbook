#import "../nelson_help.typ": *

= sinc <signal_processing:1_signal_generation_preprocessing.sinc>

Fonction sinc.

== Syntaxe

- #raw("c = sinc(m)");

== Argument d'entrée

/ m: tableau d'entrée : scalaire, vecteur ou matrice.

== Argument de sortie

/ c: sinc de l'entrée

== Description

#strong[c \= sinc(m)]; renvoie un tableau#strong[c]; dont les éléments sont le sinc des éléments de l'entrée : #strong[m];.


== Exemple

``````matlab
c = sinc(pi)
``````


== Voir aussi

#nlink(<trigonometric_functions:sin>)[sin];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
