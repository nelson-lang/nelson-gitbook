#import "nelson_help.typ": *

= asserts.sameSize <assert_functions:asserts.sameSize>

Verifie que deux valeurs ont la meme taille.

== Syntaxe

- #raw("asserts.sameSize(left, right)");
- #raw("[res, msg] = asserts.sameSize(left, right)");

== Argument d'entrée

/ left: premiere valeur.
/ right: seconde valeur.

== Argument de sortie

/ res: true si les deux valeurs ont la meme taille.
/ msg: message d'echec de l'assertion.

== Description

#strong[asserts.sameSize]; compare les dimensions.


== Fonction(s) utilisée(s)

size

== Exemple

Verifier des tailles identiques :

``````matlab
asserts.sameSize(ones(2, 3), zeros(2, 3));
``````


== Voir aussi

#nlink(<assert_functions:asserts.size>)[asserts.size];, #nlink(<assert_functions:asserts.numel>)[asserts.numel];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
