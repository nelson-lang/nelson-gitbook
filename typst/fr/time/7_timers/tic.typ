#import "../nelson_help.typ": *

= tic <time:7_timers.tic>

Démarre un chronomètre.

== Syntaxe

- #raw("tic()");
- #raw("t = tic()");

== Argument de sortie

/ t: un entier non signé 64 bits : valeur du compteur interne de la fonction tic.

== Description

La séquence de commandes#strong[tic(); commands ; t \= toc()]; renvoie le nombre de secondes nécessaires à l'exécution des commandes.

 Les appels consécutifs à #strong[tic]; écrasent le minuteur interne de tic.


== Exemple

``````matlab
tic()
sleep(10)
toc()

tic()
sleep(10)
t = toc()

``````


== Voir aussi

#nlink(<time:7_timers.toc>)[toc];, #nlink(<time:7_timers.sleep>)[sleep];, #nlink(<time:7_timers.time>)[time];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
