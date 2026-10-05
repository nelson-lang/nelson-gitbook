#import "nelson_help.typ": *

= nelson.lang.correction.ConvertToFunctionNotationCorrection <error_manager:nelson.lang.correction.ConvertToFunctionNotationCorrection>

Corrige une erreur en convertissant vers la notation fonction.

== Syntaxe

- #raw("correction = nelson.lang.correction.ConvertToFunctionNotationCorrection(method)");

== Argument d'entrée

/ method: nom de methode qui doit etre appelee avec la notation fonction.

== Argument de sortie

/ correction: un objet nelson.lang.correction.ConvertToFunctionNotationCorrection.

== Description

Utilisez les objets #strong[nelson.lang.correction.ConvertToFunctionNotationCorrection]; dans les classes dont les methodes ne doivent pas etre appelees avec la notation point.

 #strong[correction \= nelson.lang.correction.ConvertToFunctionNotationCorrection(method)]; cree une correction qui suggere de convertir la notation point en notation fonction pour appeler #strong[method];.

 La propriete en lecture seule #strong[Method]; contient le nom de la methode.


== Exemple

``````matlab
ME = MException('nelson:useFunctionForm', 'Use function syntax to call this method.');
correction = nelson.lang.correction.ConvertToFunctionNotationCorrection('isvalid');
ME = addCorrection(ME, correction)
ME.Correction.Method
``````


== Voir aussi

#nlink(<error_manager:addCorrection>)[addCorrection];, #nlink(<error_manager:nelson.lang.correction.AppendArgumentsCorrection>)[nelson.lang.correction.AppendArgumentsCorrection];, #nlink(<error_manager:nelson.lang.correction.ReplaceIdentifierCorrection>)[nelson.lang.correction.ReplaceIdentifierCorrection];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
