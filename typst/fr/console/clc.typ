#import "nelson_help.typ": *

= clc <console:clc>

Effacer la fenêtre de commande.

== Syntaxe

- #raw("clc()");

== Description

#strong[clc()]; efface la console et déplace le curseur vers le coin supérieur gauche.


== Exemple

``````matlab
disp('Hello');
clc()

``````


== Voir aussi

#nlink(<display_format:disp>)[disp];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
