#import "nelson_help.typ": *

= getReport <error_manager:getReport>

Obtient le rapport MException.

== Syntaxe

- #raw("report = getReport(ME)");
- #raw("report = getReport(ME, type)");
- #raw("report = ME.getReport(type)");

== Argument d'entrée

/ ME: un objet MException scalaire.
/ type: 'basic' ou 'extended'.

== Argument de sortie

/ report: une chaine : rapport formate de l'exception.

== Description

#strong[getReport]; renvoie un rapport formate pour un objet MException.

 Le rapport #strong[basic]; contient le message de l'exception. Le rapport #strong[extended]; inclut des informations de diagnostic supplementaires lorsqu'elles sont disponibles.


== Exemple

``````matlab
ME = MException('nelson:badIndex', 'Unable to index into array.');
getReport(ME, 'basic')
``````


== Voir aussi

#nlink(<error_manager:MException>)[MException];, #nlink(<error_manager:addCause>)[addCause];, #nlink(<error_manager:throw>)[throw];, #nlink(<error_manager:getLastReport>)[getLastReport];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
