#import "nelson_help.typ": *

= asserts.inRange <assert_functions:asserts.inRange>

Verifie que chaque valeur est dans un intervalle inclusif.

== Syntaxe

- #raw("asserts.inRange(value, minValue, maxValue)");
- #raw("[res, msg] = asserts.inRange(value, minValue, maxValue)");

== Argument d'entrée

/ value: Scalaire ou tableau reel numerique ou logique.
/ minValue: Borne inferieure inclusive. L'expansion scalaire est supportee.
/ maxValue: Borne superieure inclusive. L'expansion scalaire est supportee.

== Argument de sortie

/ res: true si l'assertion reussit, false sinon.
/ msg: message d'echec de l'assertion, vide en cas de succes.

== Description

L'assertion reussit lorsque minValue \<\= value \<\= maxValue pour chaque element compare.

 Les bornes peuvent etre scalaires ou des tableaux de dimensions compatibles avec value.


== Exemples

Inclusive range

``````matlab
asserts.inRange([1 2], 0, 3);
``````

Capture an out-of-range value

``````matlab
[res, msg] = asserts.inRange([1 4], 0, 3);
``````


== Voir aussi

#nlink(<assert_functions:asserts.greaterOrEqual>)[asserts.greaterOrEqual];, #nlink(<assert_functions:asserts.lessOrEqual>)[asserts.lessOrEqual];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
