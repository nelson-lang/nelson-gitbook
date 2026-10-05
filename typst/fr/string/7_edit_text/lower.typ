#import "../nelson_help.typ": *

= lower <string:7_edit_text.lower>

Convertir du texte en minuscules.

== Syntaxe

- #raw("res = lower(str)");

== Argument d'entrée

/ str: tableau de caracteres, chaine scalaire, tableau de chaines ou cellule de vecteurs de caracteres.

== Argument de sortie

/ res: texte converti en minuscules avec conservation de la forme d'entree.

== Description

lower convertit les tableaux de caracteres, les chaines et les tableaux de chaines en minuscules.

 La forme du texte d'entree est conservee dans le resultat.


== Exemple

Convertir une chaine en minuscules.

``````matlab
txt = lower("NelSon")
``````


== Voir aussi

#nlink(<string:7_edit_text.upper>)[upper];, #nlink(<string:7_edit_text.tolower>)[tolower];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
