#import "nelson_help.typ": *

= asserts.isequal <assert_functions:asserts.isequal>

Verifie que les valeurs calculee et attendue sont egales.

== Syntaxe

- #raw("asserts.isequal(computed, expected)");
- #raw("asserts.isequal(computed, expected, message)");
- #raw("[res, msg] = asserts.isequal(computed, expected)");

== Argument d'entrée

/ computed: Valeur calculee.
/ expected: Valeur attendue.
/ message: Message d'echec personnalise optionnel.

== Argument de sortie

/ res: true si l'assertion reussit, false sinon.
/ msg: message d'echec de l'assertion, vide en cas de succes.

== Description

Forme methode de assert\_isequal.

 Les diagnostics d'echec incluent classe, dimensions et, pour les tableaux denses numeriques ou logiques de meme taille, le premier index different.


== Exemples

Equal arrays

``````matlab
asserts.isequal([1 2], [1 2]);
``````

Capture a diagnostic

``````matlab
[res, msg] = asserts.isequal([1 2], [1 3]);
``````


== Voir aussi

#nlink(<assert_functions:assert_isapprox>)[assert\_isapprox];, #nlink(<assert_functions:asserts.notEqual>)[asserts.notEqual];, #nlink(<assert_functions:asserts.diff>)[asserts.diff];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
