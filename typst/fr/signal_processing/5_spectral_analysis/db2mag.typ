#import "../nelson_help.typ": *

= db2mag <signal_processing:5_spectral_analysis.db2mag>

Convertit un gain en décibels (dB) en magnitude.

== Syntaxe

- #raw("mag = db2mag(db)");

== Argument d'entrée

/ db: tableau d'entrée : scalaire, vecteur ou matrice.

== Argument de sortie

/ mag: magnitude correspondante

== Description

#strong[mag \= db2mag(db)]; renvoie la magnitude correspondante.


== Exemple

``````matlab
mag = db2mag([0, -20])
``````


== Voir aussi

#nlink(<signal_processing:5_spectral_analysis.mag2db>)[mag2db];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
