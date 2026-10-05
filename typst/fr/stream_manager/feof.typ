#import "nelson_help.typ": *

= feof <stream_manager:feof>

Teste la fin de fichier.

== Syntaxe

- #raw("status = feof(fid)");

== Argument d'entrée

/ fid: un descripteur de fichier

== Argument de sortie

/ status: une valeur entière : 1 si la fin de fichier est atteinte, 0 sinon.

== Description

#strong[feof]; vérifie si la fin du fichier a été atteinte.


== Exemple

``````matlab
fid = fopen([nelsonroot(), '/etc/startup.m'], 'rt');
feof(fid)
while ~feof(fid)
  tline = fgetl(fid);
  disp(tline);
end
feof(fid)
fclose(fid);
``````


== Voir aussi

#nlink(<stream_manager:fopen>)[fopen];, #nlink(<stream_manager:fgetl>)[fgetl];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
