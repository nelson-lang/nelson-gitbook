#import "nelson_help.typ": *

= asserts.checkerror <assert_functions:asserts.checkerror>

Verifie qu'une commande leve une erreur attendue.

== Syntaxe

- #raw("asserts.checkerror(command, expectedMessage)");
- #raw("asserts.checkerror(command, expectedMessage, expectedIdentifier)");
- #raw("[res, msg] = asserts.checkerror(command, expectedMessage)");

== Argument d'entrée

/ command: Commande texte evaluee dans le contexte courant.
/ expectedMessage: Message d'erreur complet attendu.
/ expectedIdentifier: Identifiant d'erreur attendu optionnel.

== Argument de sortie

/ res: true si l'assertion reussit, false sinon.
/ msg: message d'echec de l'assertion, vide en cas de succes.

== Description

L'assertion reussit seulement lorsque la commande leve l'erreur attendue.

 Utiliser asserts.throws quand seule une sous-chaine du message doit correspondre.


== Exemples

Check an expected error

``````matlab
asserts.checkerror('cos', _('Wrong number of input arguments.'));
``````

Capture missing error

``````matlab
[res, msg] = asserts.checkerror('1 + 1', _('unused'));
``````


== Voir aussi

#nlink(<assert_functions:asserts.throws>)[asserts.throws];, #nlink(<assert_functions:asserts.noError>)[asserts.noError];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
