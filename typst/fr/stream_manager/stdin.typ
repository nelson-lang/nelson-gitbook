#import "nelson_help.typ": *

= stdin <stream_manager:stdin>

Identifiant du flux d'entrée standard.

== Syntaxe

- #raw("fd = stdin()");

== Argument de sortie

/ fd: la valeur #strong[0];.

== Description

#strong[fd \= stdin()]; renvoie #strong[0];, l'identifiant du flux d'entrée standard.


== Exemple

``````matlab
fd = stdin()
``````


== Voir aussi

#nlink(<stream_manager:stdout>)[stdout];, #nlink(<stream_manager:stderr>)[stderr];, #nlink(<stream_manager:fprintf>)[fprintf];, #nlink(<stream_manager:fopen>)[fopen];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Auteur: Allan CORNET
