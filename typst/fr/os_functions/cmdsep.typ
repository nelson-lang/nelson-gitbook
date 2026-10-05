#import "nelson_help.typ": *

= cmdsep <os_functions:cmdsep>

Séparateur de commande pour le système d'exploitation courant.

== Syntaxe

- #raw("sep = cmdsep()");

== Argument de sortie

/ sep: une chaîne : sous Windows " & & ", sous Linux ";"

== Description

#strong[cmdsep]; retourne le séparateur de commande pour le système d'exploitation courant.

 Cette fonction est utilisée par Nelson pour construire des lignes de commande pour les systèmes Unix et DOS.


== Exemple

``````matlab
unix("cd c:/ " + cmdsep() + " nelson")
``````


== Voir aussi

#nlink(<os_functions:unix>)[unix];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.11.0], [version initiale],
)

// Auteur: Allan CORNET
