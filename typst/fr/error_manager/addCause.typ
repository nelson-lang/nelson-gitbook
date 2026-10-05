#import "nelson_help.typ": *

= addCause <error_manager:addCause>

Ajoute une cause a MException.

== Syntaxe

- #raw("ME = addCause(ME, causeException)");
- #raw("ME = ME.addCause(causeException)");

== Argument d'entrée

/ ME: un objet MException scalaire.
/ causeException: un objet MException scalaire a ajouter comme cause.

== Argument de sortie

/ ME: un nouvel objet MException contenant la cause supplementaire.

== Description

#strong[addCause]; renvoie un nouvel objet MException avec #strong[causeException]; ajoutee a la propriete #strong[cause];.

 L'objet MException original n'est pas modifie.


== Exemples

``````matlab
errID = 'MYFUN:BadIndex';
msg = 'Unable to index into array.';
baseException = MException(errID, msg);
causeException = MException('MYFUN:BadSubscript', 'Index must be positive.');
newException = baseException.addCause(causeException)
``````

``````matlab
errID = 'MYFUN:BadIndex';
msg = 'Unable to index into array.';
baseException = MException(errID, msg);
newException = addCause(baseException, baseException)
newException.cause{1}
``````


== Voir aussi

#nlink(<error_manager:MException>)[MException];, #nlink(<error_manager:addCorrection>)[addCorrection];, #nlink(<error_manager:getReport>)[getReport];, #nlink(<error_manager:throw>)[throw];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
