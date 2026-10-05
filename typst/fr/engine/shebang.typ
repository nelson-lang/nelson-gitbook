#import "nelson_help.typ": *

= \#! shebang <engine:shebang>

Sur Unix\/Linux, analyse la première ligne du script comme directive d'interpréteur.

== Description

Sur Unix, Linux et MacOS, le shebang permet d'exécuter directement un script NelSon.


== Exemple

``````matlab
#!nelson-adv-cli -q -f
argv()
disp('shebang example line 1')
disp('shebang example line 2')
exit()

``````


== Voir aussi

#nlink(<engine:executable>)[executable];, #nlink(<engine:argv>)[argv];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
