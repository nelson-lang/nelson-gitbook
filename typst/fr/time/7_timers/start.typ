#import "../nelson_help.typ": *

= start <time:7_timers.start>

Demarrer un objet timer.

== Syntaxe

- #raw("start(t)");

== Argument d'entrée

/ t: Objet timer ou tableau d'objets timer.

== Description

#strong[start]; demarre le timer en utilisant ses proprietes #strong[StartDelay];, #strong[ExecutionMode];, #strong[Period]; et #strong[TasksToExecute];. Le timer doit avoir une propriete #strong[TimerFcn]; non vide.

 #strong[start]; retourne immediatement apres la planification du timer. Utilisez #strong[wait]; lorsque la sequence de commandes courante doit bloquer jusqu'a la fin du timer.


== Exemples

Demarrer un timer a execution unique.

``````matlab
t = timer('StartDelay', 0.1, ...
  'TimerFcn', @(src, event) disp('started and fired'));
start(t);
wait(t);
delete(t);
``````

Demarrer un timer repete.

``````matlab
t = timer('ExecutionMode', 'fixedSpacing', ...
  'Period', 0.05, ...
  'TasksToExecute', 3, ...
  'TimerFcn', @(src, event) disp('tick'));
start(t);
wait(t);
delete(t);
``````


== Voir aussi

#nlink(<time:7_timers.timer>)[timer];, #nlink(<time:7_timers.startat>)[startat];, #nlink(<time:7_timers.stop>)[stop];, #nlink(<time:7_timers.wait>)[wait];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
