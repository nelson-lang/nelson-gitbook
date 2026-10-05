#import "nelson_help.typ": *

= asserts.diff <assert_functions:asserts.diff>

Retourne les diagnostics d'egalite sans lever d'erreur.

== Syntaxe

- #raw("msg = asserts.diff(computed, expected)");
- #raw("[res, msg] = asserts.diff(computed, expected)");

== Argument d'entrée

/ computed: Valeur calculee.
/ expected: Valeur attendue.

== Argument de sortie

/ res: true si l'assertion reussit, false sinon.
/ msg: message d'echec de l'assertion, vide en cas de succes.

== Description

C'est un helper de diagnostic, pas une assertion qui leve une erreur.

 Il retourne le meme style de message que asserts.isequal pour les echecs de comparaison.


== Exemples

Inspect a difference

``````matlab
msg = asserts.diff([1 2], [1 3]);
``````

Check equality status

``````matlab
[res, msg] = asserts.diff([1 2], [1 2]);
``````


== Voir aussi

#nlink(<assert_functions:asserts.isequal>)[asserts.isequal];, #nlink(<assert_functions:asserts.isapprox>)[asserts.isapprox];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
