#import "nelson_help.typ": *

= dbstatus <debugger:dbstatus>

Lister tous les points d'arrêt lors du débogage.

== Syntaxe

- #raw("dbstatus");
- #raw("b = dbstatus()");

== Argument de sortie

/ b: Tableau de structures listant les points d'arrêt actuellement en vigueur.

== Description

#strong[dbstatus]; liste tous les points d'arrêt actuellement définis.

 L'affectation de la sortie à une variable #strong[b]; vous permet de sauvegarder et de restaurer les points d'arrêt ultérieurement en utilisant #strong[dbstop(b)];.

 Chaque élément de la structure #strong[b]; contient les champs suivants :

- #strong[name];: Nom de la fonction
- #strong[file];: Chemin complet vers le fichier contenant les points d'arrêt
- #strong[line];: Vecteur des numéros de ligne des points d'arrêt


== Exemples

Lister tous les points d'arrêt en vigueur.

``````matlab

dbstop in myfile
dbstatus

``````

Sauvegarder les points d'arrêt actuels et les restaurer ultérieurement.

``````matlab

b = dbstatus();
save saved_breakpoints b
dbclear all
load saved_breakpoints
dbstop(b)

``````


== Voir aussi

#nlink(<debugger:dbstop>)[dbstop];, #nlink(<debugger:dbclear>)[dbclear];, #nlink(<debugger:dbquit>)[dbquit];, #nlink(<debugger:dbstack>)[dbstack];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.16.0], [version initiale],
)

// Auteur: Allan CORNET
