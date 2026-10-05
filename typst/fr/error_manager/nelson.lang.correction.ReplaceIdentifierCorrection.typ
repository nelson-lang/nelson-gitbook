#import "nelson_help.typ": *

= nelson.lang.correction.ReplaceIdentifierCorrection <error_manager:nelson.lang.correction.ReplaceIdentifierCorrection>

Corrige une erreur en remplacant un identifiant dans un appel de fonction.

== Syntaxe

- #raw("correction = nelson.lang.correction.ReplaceIdentifierCorrection(identifier, replacement)");

== Argument d'entrée

/ identifier: identifiant incorrect dans l'appel de fonction.
/ replacement: identifiant de remplacement.

== Argument de sortie

/ correction: un objet nelson.lang.correction.ReplaceIdentifierCorrection.

== Description

Utilisez les objets #strong[nelson.lang.correction.ReplaceIdentifierCorrection]; dans les fonctions qui levent un objet MException.

 #strong[correction \= nelson.lang.correction.ReplaceIdentifierCorrection(identifier, replacement)]; cree une correction qui suggere de remplacer #strong[identifier]; par #strong[replacement]; dans l'appel de fonction qui a leve l'objet MException.

 Les proprietes en lecture seule #strong[Identifier]; et #strong[Replacement]; contiennent l'identifiant incorrect et l'identifiant de remplacement.


== Exemple

``````matlab
ME = MException('nelson:unknownName', 'Unknown identifier.');
correction = nelson.lang.correction.ReplaceIdentifierCorrection('oldName', 'newName');
ME = addCorrection(ME, correction)
ME.Correction.Replacement
``````


== Voir aussi

#nlink(<error_manager:addCorrection>)[addCorrection];, #nlink(<error_manager:nelson.lang.correction.AppendArgumentsCorrection>)[nelson.lang.correction.AppendArgumentsCorrection];, #nlink(<error_manager:nelson.lang.correction.ConvertToFunctionNotationCorrection>)[nelson.lang.correction.ConvertToFunctionNotationCorrection];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
