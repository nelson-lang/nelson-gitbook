#import "nelson_help.typ": *

= movefile <files_folders_functions:movefile>

Deplace un fichier ou un dossier.

== Syntaxe

- #raw("movefile(source, destination)");
- #raw("[status, msg] = movefile(source, destination)");
- #raw("movefile(source, destination, 'f')");

== Argument d'entrée

/ source: Fichier, dossier ou liste source.
/ destination: Chemin de destination.

== Argument de sortie

/ status: Indicateur logique de succes.
/ msg: Message d'erreur lorsque l'operation echoue.

== Description

#strong[movefile]; copie la source vers la destination puis supprime la source lorsque la copie reussit.


== Exemple

``````matlab
[status, msg] = movefile('source.txt', 'destination.txt')
``````


== Voir aussi

#nlink(<files_folders_functions:copyfile>)[copyfile];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Auteur: Allan CORNET
