#import "nelson_help.typ": *

= fopen <stream_manager:fopen>

Ouvrir un fichier dans Nelson.

== Syntaxe

- #raw("fid = fopen(filename)");
- #raw("fid = fopen(filename, permission)");
- #raw("[fid, msg] = fopen(filename)");
- #raw("[fid, msg] = fopen(filename, permission)");
- #raw("[fid, msg] = fopen(filename, permission, machinefmt, encoding)");
- #raw("[filename, permission, machinefmt, encoding] = fopen(fid)");
- #raw("fids = fopen('all')");

== Argument d'entrée

/ filename: a string: filename to open
/ permission: a string: permission applied on file: 'r', 'w', 'a', 'r+', 'a+'
/ machinefmt: a string: machine format applied on file: 'n' or 'native', 'b' or 'ieee-be', 'l' or 'ieee-le', 's' or 'ieee-be.l64', 'a' or 'ieee-le.l64'
/ encoding: a string: ccharacter encoding applied on file: 'UTF-8', 'ISO-8859-1', 'windows-1251', 'windows-1252', ...

== Argument de sortie

/ fid: an integer value: a file descriptor or -1 if there is an error.
/ msg: a string: error message returned by fopen or ' '.
/ fids: a vector of integer values: list of files descriptor opened in Nelson.

== Description

#strong[fopen]; ouvre un fichier dans Nelson.

 Les fonctions #strong[fprintf];, #strong[fgetl];, #strong[fgets];,#strong[fread]; et#strong[fwrite]; utilisent l'encodage des caractères défini pour les opérations de lecture\/écriture suivantes.


== Exemples

``````matlab

fid = fopen([tempdir(), filesep(), 'fopen_tst'], 'wt');
[filename, permission] = fopen(fid)
fids = fopen('all')
status = fclose(fd)
[filename, permission] = fopen(stdin)
[filename, permission] = fopen(stdout)
[filename, permission] = fopen(stderr)

``````

encodage des caractères

``````matlab

TEXT_REF = 'Виртуальная';
filename = [tempdir(), 'fwrite_example_Windows-1251.txt'];
F = fopen(filename, 'wt', 'n', 'windows-1251');
W = fwrite(F, TEXT_REF, 'char')
fclose(F);
F = fopen(filename, 'rt', 'n', 'windows-1251');
TXT_READ = fread(F, '*char')
fclose(F);
``````


== Voir aussi

#nlink(<stream_manager:fclose>)[fclose];, #nlink(<stream_manager:feof>)[feof];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
