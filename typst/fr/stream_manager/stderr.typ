#import "nelson_help.typ": *

= stderr <stream_manager:stderr>

Identifiant du flux d'erreur standard.

== Syntaxe

- #raw("fd = stderr()");

== Argument de sortie

/ fd: la valeur #strong[2];.

== Description

#strong[fd \= stderr()]; renvoie #strong[2];, l'identifiant du flux d'erreur standard.


== Exemple

``````matlab
fprintf(stderr(), 'Hello\n');
``````


== Voir aussi

#nlink(<stream_manager:stdin>)[stdin];, #nlink(<stream_manager:stdout>)[stdout];, #nlink(<stream_manager:fprintf>)[fprintf];, #nlink(<stream_manager:fopen>)[fopen];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Auteur: Allan CORNET
