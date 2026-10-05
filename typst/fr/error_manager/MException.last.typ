#import "nelson_help.typ": *

= MException.last <error_manager:MException.last>

Renvoie ou efface la derniere MException non interceptee.

== Syntaxe

- #raw("exception = MException.last");
- #raw("MException.last('reset')");

== Argument de sortie

/ exception: un objet MException.

== Description

#strong[MException.last]; renvoie la derniere exception non interceptee enregistree par l'evaluateur. Les exceptions traitees par un bloc catch ne la modifient pas.

 #strong[MException.last('reset')]; efface l'exception enregistree.


== Exemple

``````matlab
MException.last('reset');
exception = MException.last
``````


== Voir aussi

#nlink(<error_manager:MException>)[MException];, #nlink(<error_manager:lasterror>)[lasterror];, #nlink(<error_manager:getLastReport>)[getLastReport];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
