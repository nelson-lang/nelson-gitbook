#import "../nelson_help.typ": *

= stop <time:7_timers.stop>

Arreter un objet timer en cours d'execution.

== Syntaxe

- #raw("stop(t)");

== Argument d'entrée

/ t: Objet timer ou tableau d'objets timer.

== Description

#strong[stop]; arrete les timers en cours d'execution. Si un timer a une propriete #strong[StopFcn];, Nelson l'execute lorsque le timer passe de l'etat en cours a l'etat arrete.

 L'appel de #strong[stop]; sur un timer deja arrete laisse le timer arrete.


== Exemple

Arreter un timer repete avant qu'il atteigne sa limite de taches.

``````matlab
t = timer('ExecutionMode', 'fixedSpacing', ...
  'Period', 0.2, ...
  'TasksToExecute', Inf, ...
  'TimerFcn', @(src, event) disp('tick'), ...
  'StopFcn', @(src, event) disp('stopped'));
start(t);
sleep(0.35);
stop(t);
delete(t);
``````


== Voir aussi

#nlink(<time:7_timers.timer>)[timer];, #nlink(<time:7_timers.start>)[start];, #nlink(<time:7_timers.wait>)[wait];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
