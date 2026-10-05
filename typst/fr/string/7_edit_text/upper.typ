#import "../nelson_help.typ": *

= upper <string:7_edit_text.upper>

Convertir du texte en majuscules.

== Syntaxe

- #raw("res = upper(str)");

== Argument d'entrée

/ str: tableau de caracteres, chaine scalaire, tableau de chaines ou cellule de vecteurs de caracteres.

== Argument de sortie

/ res: texte converti en majuscules avec conservation de la forme d'entree.

== Description

upper convertit les tableaux de caracteres, les chaines et les tableaux de chaines en majuscules.

 La forme du texte d'entree est conservee dans le resultat.


== Exemple

Convertir une chaine en majuscules.

``````matlab
txt = upper("NelSon")
``````


== Voir aussi

#nlink(<string:7_edit_text.lower>)[lower];, #nlink(<string:7_edit_text.toupper>)[toupper];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
