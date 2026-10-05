#import "nelson_help.typ": *

= asserts.containsAll <assert_functions:asserts.containsAll>

Verifie qu'un texte contient tous les motifs attendus.

== Syntaxe

- #raw("asserts.containsAll(text, patterns)");
- #raw("[res, msg] = asserts.containsAll(text, patterns)");

== Argument d'entrée

/ text: Vecteur de caracteres ou scalaire string a tester.
/ patterns: Vecteur de caracteres, scalaire string, tableau de strings ou cellule de vecteurs de caracteres. Chaque motif doit etre present.

== Argument de sortie

/ res: true si l'assertion reussit, false sinon.
/ msg: message d'echec de l'assertion, vide en cas de succes.

== Description

L'assertion reussit lorsque chaque motif est trouve dans text.

 Utiliser asserts.containsAny lorsqu'un seul motif correspondant suffit.


== Exemples

All patterns present

``````matlab
asserts.containsAll('Nelson language', {'Nelson', 'language'});
``````

Capture a missing pattern

``````matlab
[res, msg] = asserts.containsAll('Nelson language', {'Nelson', 'toolbox'});
``````


== Voir aussi

#nlink(<assert_functions:asserts.containsAny>)[asserts.containsAny];, #nlink(<assert_functions:asserts.contains>)[asserts.contains];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
