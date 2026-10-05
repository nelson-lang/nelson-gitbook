#import "nelson_help.typ": *

= inserthtml <gui:inserthtml>

InsÃ¨re du HTML dans la console GUI.

== Syntaxe

- #raw("inserthtml(html_txt)");

== Argument d'entrée

/ html\_txt: a string: html text

== Description

#strong[inserthtml]; insÃ¨re du code HTML dans la console GUI.


== Exemple

``````matlab
inserthtml(markdown(fileread([nelsonroot(),'/CHANGELOG.md'])))
``````


== Voir aussi

#nlink(<help_tools:markdown>)[markdown];, #nlink(<stream_manager:fileread>)[fileread];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
