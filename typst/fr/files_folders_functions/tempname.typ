#import "nelson_help.typ": *

= tempname <files_folders_functions:tempname>

Renvoie un nom de fichier temporaire unique.

== Syntaxe

- #raw("f = tempname()");
- #raw("f = tempname(path)");

== Argument d'entrée

/ path: a string: répertoire existant utilisé à la place de tempdir().

== Argument de sortie

/ f: a string: nom de fichier temporaire unique.

== Description

Renvoie le nom d'un fichier temporaire unique.


== Exemple

``````matlab
r = tempname()
``````


== Voir aussi

#nlink(<files_folders_functions:mkdir>)[mkdir];, #nlink(<files_folders_functions:tempdir>)[tempdir];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
