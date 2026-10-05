#import "nelson_help.typ": *

= addCorrection <error_manager:addCorrection>

Ajoute une correction a MException.

== Syntaxe

- #raw("ME = addCorrection(ME, correction)");
- #raw("ME = ME.addCorrection(correction)");

== Argument d'entrée

/ ME: un objet MException scalaire.
/ correction: un objet nelson.lang.correction.AppendArgumentsCorrection, nelson.lang.correction.ConvertToFunctionNotationCorrection ou nelson.lang.correction.ReplaceIdentifierCorrection.

== Argument de sortie

/ ME: un nouvel objet MException contenant la correction.

== Description

#strong[addCorrection]; renvoie un nouvel objet MException avec la propriete #strong[Correction]; definie a #strong[correction];.

 Les objets de correction Nelson sont #strong[nelson.lang.correction.AppendArgumentsCorrection];, #strong[nelson.lang.correction.ConvertToFunctionNotationCorrection]; et #strong[nelson.lang.correction.ReplaceIdentifierCorrection];.


== Exemple

``````matlab
ME = MException('nelson:missingArgument', 'Missing argument.');
correction = nelson.lang.correction.AppendArgumentsCorrection('value');
ME = addCorrection(ME, correction)
ME.Correction
``````


== Voir aussi

#nlink(<error_manager:MException>)[MException];, #nlink(<error_manager:addCause>)[addCause];, #nlink(<error_manager:getReport>)[getReport];, #nlink(<error_manager:nelson.lang.correction.AppendArgumentsCorrection>)[nelson.lang.correction.AppendArgumentsCorrection];, #nlink(<error_manager:nelson.lang.correction.ConvertToFunctionNotationCorrection>)[nelson.lang.correction.ConvertToFunctionNotationCorrection];, #nlink(<error_manager:nelson.lang.correction.ReplaceIdentifierCorrection>)[nelson.lang.correction.ReplaceIdentifierCorrection];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
