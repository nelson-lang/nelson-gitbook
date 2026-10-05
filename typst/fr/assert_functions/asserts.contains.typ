#import "nelson_help.typ": *

= asserts.contains <assert_functions:asserts.contains>

Verifie qu'un texte contient un motif.

== Syntaxe

- #raw("asserts.contains(text, pattern)");
- #raw("[res, msg] = asserts.contains(text, pattern)");

== Argument d'entrée

/ text: Vecteur de caracteres ou scalaire string a tester.
/ pattern: Motif texte attendu.

== Argument de sortie

/ res: true si l'assertion reussit, false sinon.
/ msg: message d'echec de l'assertion, vide en cas de succes.

== Description

L'assertion reussit lorsque pattern est trouve dans text.

 Utiliser asserts.containsAll ou asserts.containsAny pour une liste de motifs.


== Exemples

Pattern present

``````matlab
asserts.contains('Nelson language', 'language');
``````

Capture a missing pattern

``````matlab
[res, msg] = asserts.contains('Nelson language', 'toolbox');
``````


== Voir aussi

#nlink(<assert_functions:asserts.containsAll>)[asserts.containsAll];, #nlink(<assert_functions:asserts.containsAny>)[asserts.containsAny];, #nlink(<assert_functions:asserts.match>)[asserts.match];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
