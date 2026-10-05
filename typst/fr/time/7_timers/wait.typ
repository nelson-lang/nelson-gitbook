#import "../nelson_help.typ": *

= wait <time:7_timers.wait>

Attendre l'arret d'objets timer.

== Syntaxe

- #raw("wait(t)");

== Argument d'entrée

/ t: Objet timer ou tableau d'objets timer.

== Description

#strong[wait]; bloque jusqu'a ce que chaque timer de #strong[t]; soit arrete. Pendant l'attente, Nelson continue de traiter les callbacks de timer afin que les callbacks planifies puissent se terminer.

 Utilisez #strong[wait]; dans les scripts et les tests lorsque les commandes suivantes dependent de la fin des callbacks de timer.


== Exemple

Attendre qu'un timer repete termine toutes les taches demandees.

``````matlab
t = timer('ExecutionMode', 'fixedSpacing', ...
  'Period', 0.05, ...
  'TasksToExecute', 3, ...
  'TimerFcn', @(src, event) disp('tick'));
start(t);
wait(t);
get(t, 'Running')
get(t, 'TasksExecuted')
delete(t);
``````


== Voir aussi

#nlink(<time:7_timers.timer>)[timer];, #nlink(<time:7_timers.start>)[start];, #nlink(<time:7_timers.stop>)[stop];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
