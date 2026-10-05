#import "nelson_help.typ": *

= fclose <stream_manager:fclose>

Ferme un fichier ouvert.

== Syntaxe

- #raw("fclose(fid)");
- #raw("fclose('all')");
- #raw("status = fclose(fid)");
- #raw("status = fclose('all')");

== Argument d'entrée

/ fid: un descripteur de fichier

== Argument de sortie

/ status: une valeur entière : 0 si le fichier est fermé ou -1 sinon.

== Description

#strong[fclose]; doit être utilisé pour fermer un fichier ouvert par#strong[fopen];.

 #strong[fclose('all')]; ferme tous les fichiers ouverts par#strong[fopen];.


== Exemple

``````matlab


fd = fopen([tempdir(), filesep(), 'fclose_tst'],'wt');
status = fclose(fd)
status = fclose(fd)


``````


== Voir aussi

#nlink(<stream_manager:fopen>)[fopen];, #nlink(<stream_manager:fread>)[fread];, #nlink(<stream_manager:feof>)[feof];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
