#import "../nelson_help.typ": *

= timer.delete <time:7_timers.timer.delete>

Arreter et invalider des objets timer.

== Syntaxe

- #raw("delete(t)");

== Argument d'entrée

/ t: Objet timer ou tableau d'objets timer.

== Description

#strong[delete]; arrete les objets timer et invalide leurs handles. Apres suppression, #strong[isvalid]; retourne false pour ces handles.

 Supprimez les timers lorsqu'ils ne sont plus necessaires. Un timer supprime ne peut pas etre redemarre.


== Exemples

Supprimer un timer apres la fin de son execution.

``````matlab
t = timer('StartDelay', 0.1, ...
  'TimerFcn', @(src, event) disp('done'));
start(t);
wait(t);
delete(t);
isvalid(t)
``````

Supprimer un timer en cours. Le timer est arrete avant que le handle soit invalide.

``````matlab
t = timer('ExecutionMode', 'fixedSpacing', ...
  'Period', 0.2, ...
  'TimerFcn', @(src, event) disp('tick'));
start(t);
delete(t);
isvalid(t)
``````


== Voir aussi

#nlink(<time:7_timers.timer>)[timer];, #nlink(<time:7_timers.timer.isvalid>)[isvalid];, #nlink(<time:7_timers.stop>)[stop];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
