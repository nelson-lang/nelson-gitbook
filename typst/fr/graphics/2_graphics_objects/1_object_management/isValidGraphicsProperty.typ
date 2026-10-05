#import "../../nelson_help.typ": *

= isValidGraphicsProperty <graphics:2_graphics_objects.1_object_management.isValidGraphicsProperty>

Vérifie si le nom de propriété est valide.

== Syntaxe

- #raw("tf = isValidGraphicsProperty(typename, propertyname)");

== Argument d'entrée

/ typename: Un vecteur de caractères ou une chaîne scalaire : 'axes', 'line', 'image', 'root', 'text', 'figure'.
/ propertyname: Un vecteur de caractères ou une chaîne scalaire : nom de la propriété à vérifier.

== Argument de sortie

/ tf: Un scalaire logique.

== Description

#strong[isValidGraphicsProperty]; vérifie si le nom de propriété existe pour une classe d'objet graphique.

 Cette fonction est une aide pour vérifier les paramètres d'entrée des fonctions graphiques.


== Exemple

``````matlab
tf = isValidGraphicsProperty('figure', 'Type')
tf = isValidGraphicsProperty('figure', 'TypeType')
``````


== Voir aussi

#nlink(<handle:isprop>)[isprop];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
