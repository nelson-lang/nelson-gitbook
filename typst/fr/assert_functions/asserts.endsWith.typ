#import "nelson_help.typ": *

= asserts.endsWith <assert_functions:asserts.endsWith>

Verifie qu'un texte se termine par un suffixe.

== Syntaxe

- #raw("asserts.endsWith(text, suffix)");
- #raw("[res, msg] = asserts.endsWith(text, suffix)");

== Argument d'entrée

/ text: Vecteur de caracteres ou scalaire string a tester.
/ suffix: Suffixe attendu.

== Argument de sortie

/ res: true si l'assertion reussit, false sinon.
/ msg: message d'echec de l'assertion, vide en cas de succes.

== Description

L'assertion reussit lorsque text se termine par suffix.

 Avec sorties, un suffixe manquant est retourne comme echec d'assertion.


== Exemples

Expected suffix

``````matlab
asserts.endsWith('Nelson language', 'language');
``````

Capture a suffix failure

``````matlab
[res, msg] = asserts.endsWith('Nelson language', 'Nelson');
``````


== Voir aussi

#nlink(<assert_functions:asserts.startsWith>)[asserts.startsWith];, #nlink(<assert_functions:asserts.contains>)[asserts.contains];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
