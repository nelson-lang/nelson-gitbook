#import "../nelson_help.typ": *

= wilkinson <elementary_functions:6_matrix_generation.wilkinson>

Matrice de test de valeurs propres de Wilkinson

== Syntaxe

- #raw("W = wilkinson(n)");
- #raw("W = wilkinson(n, classname)");

== Argument d'entrée

/ n: valeur entière scalaire : ordre.
/ classname: vecteur de caractères ligne ou chaîne scalaire : nom de classe souhaité ('double' par défaut).

== Argument de sortie

/ W: matrice de test de valeurs propres de Wilkinson.

== Description

#strong[W \= wilkinson(n)]; renvoie la matrice de Wilkinson d'ordre#strong[n];.


== Bibliographie

https:\/\/en.wikipedia.org\/wiki\/Wilkinson\_matrix

== Exemple

``````matlab
W = wilkinson(4)
``````


== Voir aussi

#nlink(<constructors_functions:diag>)[diag];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
