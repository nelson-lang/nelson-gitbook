#import "../nelson_help.typ": *

= clip <elementary_functions:2_elementary_math.clip>

Limiter des valeurs a un intervalle.

== Syntaxe

- #raw("Y = clip(X, lowerBound, upperBound)");

== Argument d'entrée

/ X: un tableau numerique ou logique.
/ lowerBound: un scalaire numerique : borne inferieure de l'intervalle.
/ upperBound: un scalaire numerique : borne superieure de l'intervalle.

== Argument de sortie

/ Y: le tableau limite, de meme taille que X.

== Description

#strong[clip]; limite les valeurs de #strong[X]; a l'intervalle #strong[\[lowerBound, upperBound\]];.

 Les valeurs inferieures a #strong[lowerBound]; sont fixees a #strong[lowerBound]; et les valeurs superieures a #strong[upperBound]; sont fixees a #strong[upperBound];.

 Les valeurs #strong[NaN]; d'une entree en virgule flottante sont preservees.


== Exemple

``````matlab
Y = clip([-2 0 5 10], 0, 8)
``````


== Voir aussi

#nlink(<data_analysis:min>)[min];, #nlink(<data_analysis:max>)[max];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.13.0], [initial version],
)

// Auteur: Allan CORNET
