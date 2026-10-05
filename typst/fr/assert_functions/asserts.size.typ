#import "nelson_help.typ": *

= asserts.size <assert_functions:asserts.size>

Verifie qu'une valeur a les dimensions attendues.

== Syntaxe

- #raw("asserts.size(value, expectedSize)");
- #raw("[res, msg] = asserts.size(value, expectedSize)");

== Argument d'entrée

/ value: Valeur a tester.
/ expectedSize: Vecteur numerique de longueurs de dimensions entieres non negatives.

== Argument de sortie

/ res: true si l'assertion reussit, false sinon.
/ msg: message d'echec de l'assertion, vide en cas de succes.

== Description

L'assertion reussit lorsque size(value) correspond exactement a expectedSize.

 Le vecteur de taille attendu doit avoir le meme nombre de dimensions que value.


== Exemples

Expected size

``````matlab
asserts.size(ones(2, 3), [2 3]);
``````

Capture a size failure

``````matlab
[res, msg] = asserts.size(ones(2, 3), [3 2]);
``````


== Voir aussi

#nlink(<assert_functions:asserts.rows>)[asserts.rows];, #nlink(<assert_functions:asserts.columns>)[asserts.columns];, #nlink(<assert_functions:asserts.ndims>)[asserts.ndims];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
