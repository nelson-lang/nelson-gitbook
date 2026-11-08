#import "nelson_help.typ": *

= stdout <stream_manager:stdout>

Identifiant du flux de sortie standard.

== Syntaxe

- #raw("fd = stdout()");

== Argument de sortie

/ fd: la valeur #strong[1];.

== Description

#strong[fd \= stdout()]; renvoie #strong[1];, l'identifiant du flux de sortie standard.


== Exemple

``````matlab
fprintf(stdout(), 'Hello\n');
``````


== Voir aussi

#nlink(<stream_manager:stdin>)[stdin];, #nlink(<stream_manager:stderr>)[stderr];, #nlink(<stream_manager:fprintf>)[fprintf];, #nlink(<stream_manager:fopen>)[fopen];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Auteur: Allan CORNET
