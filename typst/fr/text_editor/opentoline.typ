#import "nelson_help.typ": *

= opentoline <text_editor:opentoline>

ouvre un fichier dans l'éditeur à une ligne donnée.

== Syntaxe

- #raw("opentoline(filename, linenumber)");
- #raw("opentoline(filename, linenumber, columnnumber)");

== Argument d'entrée

/ filename: une chaîne : chemin du fichier à ouvrir.
/ linenumber: un nombre : ligne où placer le curseur (1 ou plus).
/ columnnumber: un nombre : colonne de cette ligne (1 ou plus) ; la fin d'une ligne courte fait limite.

== Description

#strong[opentoline]; ouvre #strong[filename]; dans l'éditeur de texte et place le curseur à la ligne #strong[linenumber];, en début de ligne ou à la colonne #strong[columnnumber];.

 Les numéros de ligne imprimés par le débogueur à un arrêt, et les positions des messages d'erreur, sont des liens qui déclenchent le même comportement dans les bureaux Qt et web.


== Exemple

``````matlab
opentoline(which('opentoline'), 10, 3)
``````


== Voir aussi

#nlink(<text_editor:editor>)[editor];, #nlink(<text_editor:edit>)[edit];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Auteur: Allan CORNET
