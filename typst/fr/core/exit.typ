#import "nelson_help.typ": *

= exit <core:exit>

Quitte l'environnement Nelson.

== Syntaxe

- #raw("exit");
- #raw("exit(status)");
- #raw("exit('force')");
- #raw("exit('cancel')");
- #raw("exit(status, 'force')");

== Description

Ferme l'environnement Nelson ou termine la session en cours.


== Voir aussi

#nlink(<core:quit>)[quit];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
