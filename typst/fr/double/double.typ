#import "nelson_help.typ": *

= double <double:double>

Convertit une variable au type double précision.

== Syntaxe

- #raw("D = double(V)");

== Argument d'entrée

/ V: une variable.

== Argument de sortie

/ D: un double.

== Description

#strong[double(V)]; convertit en type double précision.


== Exemples

``````matlab
double('Nelson')
``````

``````matlab
A = single(pi)
B = double(A)
B - A
``````

``````matlab
A = ["3.134", "NaN"; "Inf", "-5"];
B = double(A)
``````


== Voir aussi

#nlink(<string:1_create_convert_text.char>)[char];, #nlink(<single:single>)[single];, #nlink(<interpreter:numeric_types>)[numeric types];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
