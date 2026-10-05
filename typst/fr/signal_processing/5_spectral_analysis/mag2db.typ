#import "../nelson_help.typ": *

= mag2db <signal_processing:5_spectral_analysis.mag2db>

Convertit une magnitude en décibels (dB).

== Syntaxe

- #raw("db = mag2db(mag)");

== Argument d'entrée

/ mag: tableau d'entrée : scalaire, vecteur ou matrice.

== Argument de sortie

/ db: valeurs correspondantes en décibels

== Description

#strong[db \= mag2db(mag)]; convertit les valeurs de magnitude en décibels (dB).

 La formule de conversion est :

 #latex("\\text{dB} = 20 \\log_{10}(\\text{magnitude})"); Cette conversion est couramment utilisée en traitement du signal, acoustique et électronique pour exprimer les rapports sur une échelle logarithmique.


== Exemple

``````matlab
DB = mag2db([1, 0.01])
``````


== Voir aussi

#nlink(<signal_processing:5_spectral_analysis.db2mag>)[db2mag];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
