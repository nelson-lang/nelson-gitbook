#import "nelson_help.typ": *

= asserts.warningFree <assert_functions:asserts.warningFree>

Verifie qu'une commande se termine sans avertissement.

== Syntaxe

- #raw("asserts.warningFree(command)");
- #raw("[res, msg] = asserts.warningFree(command)");

== Argument d'entrée

/ command: Commande texte evaluee dans le contexte courant.

== Argument de sortie

/ res: true si l'assertion reussit, false sinon.
/ msg: message d'echec de l'assertion, vide en cas de succes.

== Description

L'assertion reussit lorsque la commande n'emet aucun avertissement et ne leve aucune erreur.

 Les avertissements inattendus sont retournes dans msg lorsque des sorties sont demandees.


== Exemples

Warning-free command

``````matlab
asserts.warningFree('1 + 1');
``````

Capture an unexpected warning

``````matlab
[res, msg] = asserts.warningFree('warning(''Nelson:asserts:example'', ''expected warning'');');
``````


== Voir aussi

#nlink(<assert_functions:asserts.warning>)[asserts.warning];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
