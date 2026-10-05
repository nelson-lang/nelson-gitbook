#import "nelson_help.typ": *

= asserts.noError <assert_functions:asserts.noError>

Verifie qu'une commande se termine sans erreur.

== Syntaxe

- #raw("asserts.noError(command)");
- #raw("[res, msg] = asserts.noError(command)");

== Argument d'entrée

/ command: Commande texte evaluee dans le contexte courant.

== Argument de sortie

/ res: true si l'assertion reussit, false sinon.
/ msg: message d'echec de l'assertion, vide en cas de succes.

== Description

L'assertion reussit lorsque l'evaluation de la commande ne leve pas d'erreur.

 Avec sorties, les erreurs inattendues sont retournees comme echecs d'assertion au lieu d'etre levees directement.


== Exemples

Command without error

``````matlab
asserts.noError('1 + 1');
``````

Capture an unexpected error

``````matlab
[res, msg] = asserts.noError('cos');
``````


== Voir aussi

#nlink(<assert_functions:asserts.throws>)[asserts.throws];, #nlink(<assert_functions:asserts.checkerror>)[asserts.checkerror];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
