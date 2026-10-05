#import "nelson_help.typ": *

= nelson.lang.correction.AppendArgumentsCorrection <error_manager:nelson.lang.correction.AppendArgumentsCorrection>

Corrige une erreur en ajoutant des arguments manquants.

== Syntaxe

- #raw("correction = nelson.lang.correction.AppendArgumentsCorrection(arguments)");

== Argument d'entrée

/ arguments: arguments suggeres, specifies sous forme de chaine, vecteur de caracteres ou tableau cellulaire de vecteurs de caracteres.

== Argument de sortie

/ correction: un objet nelson.lang.correction.AppendArgumentsCorrection.

== Description

Utilisez les objets #strong[nelson.lang.correction.AppendArgumentsCorrection]; dans les fonctions qui levent un objet MException.

 #strong[correction \= nelson.lang.correction.AppendArgumentsCorrection(arguments)]; cree une correction qui suggere d'ajouter les arguments d'entree #strong[arguments]; a l'appel de fonction qui a leve l'objet MException.

 La propriete en lecture seule #strong[Arguments]; contient les arguments suggeres.


== Exemple

``````matlab
ME = MException('nelson:notEnoughInputs', 'Not enough input arguments.');
correction = nelson.lang.correction.AppendArgumentsCorrection('"world"');
ME = addCorrection(ME, correction)
ME.Correction.Arguments
``````


== Voir aussi

#nlink(<error_manager:addCorrection>)[addCorrection];, #nlink(<error_manager:nelson.lang.correction.ConvertToFunctionNotationCorrection>)[nelson.lang.correction.ConvertToFunctionNotationCorrection];, #nlink(<error_manager:nelson.lang.correction.ReplaceIdentifierCorrection>)[nelson.lang.correction.ReplaceIdentifierCorrection];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
