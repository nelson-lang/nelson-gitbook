#import "../nelson_help.typ": *

= cputime <time:7_timers.cputime>

Renvoie le temps CPU utilisé par votre session Nelson.

== Syntaxe

- #raw("t = cputime()");

== Argument de sortie

/ t: un double : temps CPU en secondes.

== Description

#strong[cputime()]; renvoie le temps CPU utilisé par la session Nelson.

 Pour mesurer les performances, il est préférable d'utiliser les fonctions tic et toc.


== Exemple

``````matlab
t1 = cputime;
sleep(10);
t2 = cputime;
t2 - t1

% versus tic toc
tic()
sleep(10);
toc()
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
