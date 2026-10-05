#import "nelson_help.typ": *

= winopen <os_functions:winopen>

Ouvrir un fichier dans l'application appropriée (Windows seulement).

== Syntaxe

- #raw("winopen(filename)");

== Argument d'entrée

/ command: une chaîne : commande à exécuter dans le shell.

== Description

#strong[winopen(filename)]; ouvre le fichier dans l'application Microsoft Windows appropriée.

 La fonction winopen utilise la commande shell Windows appropriée et effectue la même action que si vous double-cliquiez sur le fichier dans l'Explorateur Windows.

 Si filename n'est pas dans le répertoire courant, spécifiez le chemin absolu.


== Voir aussi

#nlink(<os_functions:system>)[system];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
