#import "nelson_help.typ": *

= fsize <stream_manager:fsize>

Retourne la taille d'un fichier ouvert.

== Syntaxe

- #raw("s = fsize(fid)");

== Argument d'entrée

/ fid: un descripteur de fichier

== Argument de sortie

/ s: une valeur entière : taille d'un fichier.

== Description

#strong[fsize]; retourne la taille d'un fichier ouvert par #strong[fopen];.


== Exemple

``````matlab
TXT = 'example about fsize.';
fileID = fopen([tempdir(), 'fsize.txt'],'wt');
fprintf(fileID, TXT);
fsize(fileID)
length(TXT)
status = fclose(fileID);
``````


== Voir aussi

#nlink(<stream_manager:fopen>)[fopen];, #nlink(<stream_manager:fread>)[fprintf];, #nlink(<stream_manager:fclose>)[fclose];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
