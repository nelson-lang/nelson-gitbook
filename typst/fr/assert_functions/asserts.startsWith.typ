#import "nelson_help.typ": *

= asserts.startsWith <assert_functions:asserts.startsWith>

Verifie qu'un texte commence par un prefixe.

== Syntaxe

- #raw("asserts.startsWith(text, prefix)");
- #raw("[res, msg] = asserts.startsWith(text, prefix)");

== Argument d'entrée

/ text: Vecteur de caracteres ou scalaire string a tester.
/ prefix: Prefixe attendu.

== Argument de sortie

/ res: true si l'assertion reussit, false sinon.
/ msg: message d'echec de l'assertion, vide en cas de succes.

== Description

L'assertion reussit lorsque text commence par prefix.

 Avec sorties, un prefixe manquant est retourne comme echec d'assertion.


== Exemples

Expected prefix

``````matlab
asserts.startsWith('Nelson language', 'Nelson');
``````

Capture a prefix failure

``````matlab
[res, msg] = asserts.startsWith('Nelson language', 'language');
``````


== Voir aussi

#nlink(<assert_functions:asserts.endsWith>)[asserts.endsWith];, #nlink(<assert_functions:asserts.contains>)[asserts.contains];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
