#import "nelson_help.typ": *

= quit <core:quit>

Ferme l'application Nelson.

== Syntaxe

- #raw("quit");
- #raw("quit(status)");
- #raw("quit('force')");
- #raw("quit('cancel')");
- #raw("quit(status, 'force')");

== Description

Ferme l'application Nelson et termine la session en cours (équivalent de \`exit\`).


== Exemple

Attention cet exemple fermera Nelson

``````matlab
quit
``````


== Voir aussi

#nlink(<core:exit>)[exit];, #nlink(<engine:finish>)[finish.m];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
