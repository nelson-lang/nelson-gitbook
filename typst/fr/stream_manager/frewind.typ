#import "nelson_help.typ": *

= frewind <stream_manager:frewind>

Positionne le flux au début du fichier.

== Syntaxe

- #raw("frewind(fid)");

== Argument d'entrée

/ fid: une valeur entière : descripteur de fichier

== Description

#strong[frewind]; positionne le pointeur au début du fichier


== Exemple

``````matlab

fileID = fopen([tempdir(), 'frewind.txt'],'wt');
fprintf(fileID, 'son is beautiful.');
frewind(fileID);
fprintf(fileID, 'sun');
fclose(fileID);
R = fileread([tempdir(), 'frewind.txt'])
``````


== Voir aussi

#nlink(<stream_manager:fclose>)[fclose];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
