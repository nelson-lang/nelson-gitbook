#import "nelson_help.typ": *

= asserts.warning <assert_functions:asserts.warning>

Verifie qu'une commande emet l'avertissement attendu.

== Syntaxe

- #raw("asserts.warning(command, expectedWarning)");
- #raw("asserts.warning(command, expectedMessage, expectedIdentifier)");
- #raw("[res, msg] = asserts.warning(command, expectedWarning)");

== Argument d'entrée

/ command: Commande texte evaluee dans le contexte courant.
/ expectedWarning: Sous-chaine de message ou identifiant d'avertissement attendu.
/ expectedMessage: Message d'avertissement attendu.
/ expectedIdentifier: Identifiant d'avertissement attendu.

== Argument de sortie

/ res: true si l'assertion reussit, false sinon.
/ msg: message d'echec de l'assertion, vide en cas de succes.

== Description

L'assertion reussit lorsque la commande emet un avertissement correspondant.

 La forme a deux arguments accepte le texte du message ou l'identifiant de l'avertissement.


== Exemples

Expected warning text

``````matlab
asserts.warning('warning(''Nelson:asserts:example'', ''expected warning'');', 'expected warning');
``````

Capture a missing warning

``````matlab
[res, msg] = asserts.warning('1 + 1', 'expected warning');
``````


== Voir aussi

#nlink(<assert_functions:asserts.warningFree>)[asserts.warningFree];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
