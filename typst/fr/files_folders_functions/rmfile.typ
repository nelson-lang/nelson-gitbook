#import "nelson_help.typ": *

= rmfile <files_folders_functions:rmfile>

Supprime un fichier.

== Syntaxe

- #raw("rmfile(filename)");
- #raw("res = rmfile(filename)");
- #raw("[res, msg] = rmfile(filename)");
- #raw("[res, msg] = rmfile(filename)");

== Argument d'entrée

/ filename: a string: nom du fichier.

== Argument de sortie

/ res: un booléen: true ou false.
/ msg: a string: message d'erreur ou ' '.

== Description

#strong[res \= rmfile(filename)]; supprime le fichier #strong[filename];.


== Exemple

``````matlab
fd = fopen([tempdir(), 'test_rmfile.txt'], 'wt')
fclose(fd)
isfile([tempdir(), 'test_rmfile.txt'])
rmfile([tempdir(), 'test_rmfile.txt'])
isfile([tempdir(), 'test_rmfile.txt'])

``````


== Voir aussi

#nlink(<files_folders_functions:isfile>)[isfile];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
