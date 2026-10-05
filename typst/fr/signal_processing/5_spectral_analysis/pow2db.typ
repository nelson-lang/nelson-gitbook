#import "../nelson_help.typ": *

= pow2db <signal_processing:5_spectral_analysis.pow2db>

Convertit une puissance en décibels.

== Syntaxe

- #raw("db = pow2db(pow)");

== Argument d'entrée

/ pow: tableau d'entrée : scalaire, vecteur ou matrice.

== Argument de sortie

/ db: valeurs correspondantes en décibels

== Description

#strong[db \= pow2db(pow)]; renvoie les valeurs correspondantes en décibels.


== Exemple

``````matlab
DB = pow2db([1, 0.01])
``````


== Voir aussi

#nlink(<signal_processing:5_spectral_analysis.db2pow>)[db2pow];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
