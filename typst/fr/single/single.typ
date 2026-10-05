#import "nelson_help.typ": *

= single <single:single>

Convertit une variable en type simple précision.

== Syntaxe

- #raw("S = single(V)");

== Argument d'entrée

/ V: une variable.

== Argument de sortie

/ S: une variable simple précision.

== Description

#strong[single(V)]; convertit vers le type simple précision.


== Exemples

``````matlab
single('Nelson')
``````

``````matlab
A = single(pi)
``````


== Voir aussi

#nlink(<string:1_create_convert_text.char>)[char];, #nlink(<double:double>)[double];, #nlink(<interpreter:numeric_types>)[types numériques];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
