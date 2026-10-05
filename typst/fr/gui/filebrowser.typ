#import "nelson_help.typ": *

= filebrowser <gui:filebrowser>

Explorateur du dossier courant

== Syntaxe

- #raw("filebrowser");

== Description

L'explorateur du dossier courant prend en charge la gestion interactive des fichiers et dossiers dans Nelson. Utilisez-le pour naviguer, créer, ouvrir, déplacer et renommer les fichiers et dossiers du répertoire courant.

 
#align(center)[#image("filebrowser.png")]



== Voir aussi

#nlink(<gui:commandhistory>)[commandhistory];, #nlink(<gui:workspace>)[workspace];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.1.0], [version initiale],
)

// Auteur: Allan CORNET
