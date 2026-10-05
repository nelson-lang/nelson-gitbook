#import "nelson_help.typ": *

= ftell <stream_manager:ftell>

Retourne le décalage de l'octet courant par rapport au début d'un fichier.

== Syntaxe

- #raw("p = ftell(fid)");

== Argument d'entrée

/ fid: un descripteur de fichier

== Argument de sortie

/ p: une valeur entière : position du pointeur de fichier en nombre de caractères depuis le début du fichier.

== Description

#strong[ftell]; retourne le décalage de l'octet courant par rapport au début du fichier associé au flux nommé fid.


== Exemple

``````matlab
TXT = 'example about ftell.';
fileID = fopen([tempdir(), 'ftell.txt'],'wt');
fprintf(fileID, TXT);
p1 = ftell(fileID)
fseek(fileID, SEEK_CUR, 'bof');
p2 = ftell(fileID)
status = fclose(fileID);
``````


== Voir aussi

#nlink(<stream_manager:fopen>)[fopen];, #nlink(<stream_manager:fread>)[fprintf];, #nlink(<stream_manager:fclose>)[fclose];, #nlink(<stream_manager:fseek>)[fseek];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
