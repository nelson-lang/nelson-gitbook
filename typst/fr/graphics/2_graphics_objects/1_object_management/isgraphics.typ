#import "../../nelson_help.typ": *

= isgraphics <graphics:2_graphics_objects.1_object_management.isgraphics>

Vérifie si l'objet est graphique.

== Syntaxe

- #raw("tf = isgraphics(GO)");
- #raw("tf = isgraphics(GO, type)");

== Argument d'entrée

/ GO: Variable ou objet graphique.
/ type: Un vecteur de caractères ou une chaîne scalaire : 'axes', 'line', 'image', 'root', 'text', 'figure'.

== Argument de sortie

/ tf: Un scalaire logique.

== Description

#strong[isgraphics]; vérifie si la variable est un objet graphique.


== Exemple

``````matlab
f = figure()
tf = isgraphics(f)
tf = isgraphics(f, 'figure')
tf = isgraphics(f, 'text')
f = 3
tf = isgraphics(f)
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
