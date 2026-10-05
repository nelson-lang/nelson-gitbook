#import "nelson_help.typ": *

= asserts.numel <assert_functions:asserts.numel>

Verifie le nombre d'elements d'une valeur.

== Syntaxe

- #raw("asserts.numel(value, n)");
- #raw("[res, msg] = asserts.numel(value, n)");

== Argument d'entrée

/ value: valeur a tester.
/ n: nombre d'elements attendu.

== Argument de sortie

/ res: true si la valeur contient n elements.
/ msg: message d'echec de l'assertion.

== Description

#strong[asserts.numel]; verifie le nombre d'elements.


== Fonction(s) utilisée(s)

numel

== Exemple

Verifier le nombre d'elements :

``````matlab
asserts.numel(ones(2, 3), 6);
``````


== Voir aussi

#nlink(<assert_functions:asserts.size>)[asserts.size];, #nlink(<assert_functions:asserts.sameSize>)[asserts.sameSize];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
