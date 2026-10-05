#import "nelson_help.typ": *

= keyboard <interpreter:keyboard>

Arrête l'exécution du script et entre en mode débogage.

== Syntaxe

- #raw("keyboard()");

== Description

#strong[keyboard]; arrête l'exécution du script et entre en mode débogage. L'invite est modifiée et affiche le niveau de débogage.


== Exemple

``````matlab
 keyboard()
``````


== Voir aussi

#nlink(<core:pause>)[pause];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
