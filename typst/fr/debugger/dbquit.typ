#import "nelson_help.typ": *

= dbquit <debugger:dbquit>

Quitter le mode débogage.

== Syntaxe

- #raw("dbquit");
- #raw("dbquit all");

== Argument d'entrée

/ all: mot-clé optionnel pour quitter le mode débogage pour toutes les fonctions en pause.

== Description

#strong[dbquit]; termine le mode débogage. La fenêtre de commande revient à l'invite standard (#raw("\n        >\n        >\n      ");). Le fichier en cours d'exécution n'est pas terminé et aucun argument de sortie n'est renvoyé. Tous les points d'arrêt restent actifs.

 Si le débogueur est actif dans plus d'une fonction, #strong[dbquit]; quitte le mode débogage uniquement pour la fonction active. Les autres fonctions en pause restent en mode débogage jusqu'à ce que #strong[dbquit]; soit appelé à nouveau.

 Si l'exécution est en pause dans une fonction atteinte en entrant dans une autre fonction, #strong[dbquit]; termine le débogage pour les deux fonctions.

 #strong[dbquit all]; termine le débogage pour tous les fichiers simultanément.

 Cette fonction ne peut être appelée que depuis la ligne de commande en mode débogage.


== Exemples

Quitter le mode débogage pour la fonction active.

``````matlab

function z = buggy(x)
  n = length(x);
  z = (1:n) / x';
end

dbstop in buggy
buggy(5)
dbquit

``````

Quitter le mode débogage pour toutes les fonctions en pause.

``````matlab

dbquit all

``````


== Voir aussi

#nlink(<debugger:dbcont>)[dbcont];, #nlink(<debugger:dbclear>)[dbclear];, #nlink(<debugger:dbstack>)[dbstack];, #nlink(<debugger:dbstatus>)[dbstatus];, #nlink(<debugger:dbstop>)[dbstop];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.16.0], [version initiale],
)

// Auteur: Allan CORNET
