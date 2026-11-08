#import "nelson_help.typ": *

= dbclear <debugger:dbclear>

Supprimer les points d'arrêt lors du débogage.

== Syntaxe

- #raw("dbclear");
- #raw("dbclear all");
- #raw("dbclear in file");
- #raw("dbclear all in file");
- #raw("dbclear in file at location");
- #raw("dbclear if error");
- #raw("dbclear if caught error");

== Argument d'entrée

/ file: Nom du fichier dans lequel les points d'arrêt doivent être supprimés, spécifié en tant que vecteur de caractères ou chaîne de caractères. Un marqueur de fichier (\>) peut être utilisé pour spécifier une fonction locale.
/ location: Numéro de ligne du point d'arrêt à supprimer. La ligne est ajustée comme le fait #strong[dbstop];, si bien que la ligne utilisée avec #strong[dbstop]; supprime le point d'arrêt.

== Description

#strong[dbclear]; supprime les points d'arrêt définis pour le débogage. Vous pouvez supprimer tous les points d'arrêt, les points d'arrêt d'un fichier, un point d'arrêt à un emplacement donné, ou les points d'arrêt sur erreur.

 #strong[dbclear]; et #strong[dbclear all]; suppriment tous les points d'arrêt de tous les fichiers, y compris #strong[dbstop if error]; et #strong[dbstop if caught error];.

 #strong[dbclear in file]; et #strong[dbclear all in file]; suppriment tous les points d'arrêt du fichier spécifié ; les points d'arrêt sur erreur sont conservés.

 #strong[dbclear in file at location]; supprime le point d'arrêt à l'emplacement spécifié dans le fichier.

 #strong[dbclear if error]; et #strong[dbclear if caught error]; suppriment le point d'arrêt sur erreur correspondant.

 Rien n'est signalé quand aucun point d'arrêt ne correspond.


== Exemples

Supprimer tous les points d'arrêt dans un fichier.

``````matlab

dbstop in buggy at 2
dbstop in buggy at 3
dbstatus
dbclear in buggy
dbstatus

``````

Supprimer un point d'arrêt à un emplacement spécifique.

``````matlab

dbstop in buggy at 2
dbstop in buggy at 3
dbclear in buggy at 3
dbstatus

``````

Ne plus s'arrêter sur les erreurs.

``````matlab

dbstop if error
dbstatus
dbclear if error
dbstatus

``````


== Voir aussi

#nlink(<debugger:dbstop>)[dbstop];, #nlink(<debugger:dbstatus>)[dbstatus];, #nlink(<debugger:dbquit>)[dbquit];, #nlink(<debugger:dbstack>)[dbstack];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.16.0], [version initiale],
  [2.0.0], [dbclear all in file, dbclear if error, dbclear if caught error ; ajustement de ligne ; silencieux quand aucun point d'arrêt ne correspond],
)

// Auteur: Allan CORNET
