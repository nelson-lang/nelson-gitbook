#import "nelson_help.typ": *

= assert\_checkerror <assert_functions:assert_checkerror>

Nom historique de asserts.checkerror.

== Syntaxe

- #raw("assert_checkerror(command, expectedMessage)");
- #raw("assert_checkerror(command, expectedMessage, expectedIdentifier)");
- #raw("[res, msg] = assert_checkerror(command, expectedMessage)");

== Argument d'entrée

/ command: Commande texte evaluee dans le contexte courant.
/ expectedMessage: Message d'erreur complet attendu.
/ expectedIdentifier: Identifiant d'erreur attendu optionnel.

== Argument de sortie

/ res: true si l'erreur attendue est produite, false sinon.
/ msg: Message d'echec de l'assertion, vide en cas de succes.

== Description

#strong[assert\_checkerror]; est conservee pour compatibilite.

 Pour la documentation complete, utiliser #nlink(<assert_functions:asserts.checkerror>)[asserts.checkerror];.

 Utiliser #nlink(<assert_functions:asserts.throws>)[asserts.throws]; lorsque seule une sous-chaine du message doit correspondre.


== Exemples

Appel historique

``````matlab
assert_checkerror('cos', _('Wrong number of input arguments.'));
``````

Appel canonique

``````matlab
asserts.checkerror('cos', _('Wrong number of input arguments.'));
``````


== Voir aussi

#nlink(<assert_functions:asserts.checkerror>)[asserts.checkerror];, #nlink(<assert_functions:asserts.throws>)[asserts.throws];, #nlink(<assert_functions:asserts.noError>)[asserts.noError];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
  [2.0.0], [documentee comme nom historique de asserts.checkerror],
)

// Auteur: Allan CORNET
