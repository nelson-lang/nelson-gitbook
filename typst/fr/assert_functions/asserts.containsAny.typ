#import "nelson_help.typ": *

= asserts.containsAny <assert_functions:asserts.containsAny>

Verifie qu'un texte contient au moins un motif attendu.

== Syntaxe

- #raw("asserts.containsAny(text, patterns)");
- #raw("[res, msg] = asserts.containsAny(text, patterns)");

== Argument d'entrée

/ text: Vecteur de caracteres ou scalaire string a tester.
/ patterns: Vecteur de caracteres, scalaire string, tableau de strings ou cellule de vecteurs de caracteres. Au moins un motif doit etre present.

== Argument de sortie

/ res: true si l'assertion reussit, false sinon.
/ msg: message d'echec de l'assertion, vide en cas de succes.

== Description

L'assertion reussit lorsqu'au moins un motif est trouve dans text.

 Utiliser asserts.containsAll lorsque chaque motif doit correspondre.


== Exemples

One pattern present

``````matlab
asserts.containsAny('Nelson language', {'toolbox', 'Nelson'});
``````

Capture missing patterns

``````matlab
[res, msg] = asserts.containsAny('Nelson language', {'toolbox', 'module'});
``````


== Voir aussi

#nlink(<assert_functions:asserts.containsAll>)[asserts.containsAll];, #nlink(<assert_functions:asserts.contains>)[asserts.contains];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
