#import "../nelson_help.typ": *

= db2pow <signal_processing:5_spectral_analysis.db2pow>

Convertit un gain en décibels (dB) en puissance.

== Syntaxe

- #raw("pow = db2pow(db)");

== Argument d'entrée

/ db: tableau d'entrée : scalaire, vecteur ou matrice.

== Argument de sortie

/ pow: puissance correspondante

== Description

#strong[pow \= db2pow(db)]; renvoie la puissance correspondante.


== Exemple

``````matlab
pow = db2pow([0, -20])
``````


== Voir aussi

#nlink(<signal_processing:5_spectral_analysis.pow2db>)[pow2db];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
