#import "../nelson_help.typ": *

= sleep <time:7_timers.sleep>

Met en pause l'exécution du code.

== Syntaxe

- #raw("sleep(sec)");

== Argument d'entrée

/ n: un double : durée de la pause en secondes (nombre décimal).

== Description

#strong[sleep]; met en pause l'exécution de Nelson pendant un nombre spécifié de secondes.

 Une interruption CTRL-C arrête la fonction #strong[sleep];.


== Exemple

``````matlab
tic();sleep(1);toc()
tic();sleep(0.1);toc()
tic();sleep(0.01);toc()
``````


== Voir aussi

#nlink(<time:7_timers.tic>)[tic];, #nlink(<time:7_timers.toc>)[toc];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
