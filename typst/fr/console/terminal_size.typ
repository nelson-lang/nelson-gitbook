#import "nelson_help.typ": *

= terminal\_size <console:terminal_size>

Interroger la taille de la fenêtre du terminal.

== Syntaxe

- #raw("[r, c] = terminal_size()");

== Argument de sortie

/ \[r, c\]: un vecteur : lignes et colonnes

== Description

#strong[terminal\_size()]; retourne un vecteur avec la taille de la fenêtre du terminal en caractères (lignes et colonnes).


== Exemple

``````matlab
terminal_size()
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
