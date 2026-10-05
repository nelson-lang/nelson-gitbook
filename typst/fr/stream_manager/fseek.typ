#import "nelson_help.typ": *

= fseek <stream_manager:fseek>

Positionne le pointeur de fichier à un emplacement.

== Syntaxe

- #raw("fseek(fid, offset, origin)");
- #raw("status = fseek(fid, offset, origin)");

== Argument d'entrée

/ fid: une valeur entière : descripteur de fichier
/ offset: une valeur entière : nombre d'octets à déplacer depuis l'origine.
/ origin: une valeur entière ou une chaîne : emplacement dans le fichier.

== Argument de sortie

/ status: an integer value: 0 or -1 if there is an error.

== Description

#strong[fseek]; déplace le pointeur de fichier à l'emplacement #strong[offset]; dans le fichier #strong[fid];.

 origin peut prendre comme valeurs :

 'bof' ou -1 : début du fichier.

 'cof' ou 0 : position courante dans le fichier.

 'eof' ou 1 : fin du fichier.

 #strong[offset]; peut être l'une des variables prédéfinies#strong[SEEK\_CUR]; (position courante, ou 0),#strong[SEEK\_SET]; (début, ou -1), ou#strong[SEEK\_END]; (fin du fichier, ou 1).


== Exemple

``````matlab

fileID = fopen([tempdir(), 'fseek.txt'],'wt');
fprintf(fileID, 'son is beautiful.');
fseek(fileID, SEEK_CUR, 'bof');
fprintf(fileID, 'sun');
fclose(fileID);
R = fileread([tempdir(), 'fseek.txt'])
``````


== Voir aussi

#nlink(<stream_manager:frewind>)[frewind];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
