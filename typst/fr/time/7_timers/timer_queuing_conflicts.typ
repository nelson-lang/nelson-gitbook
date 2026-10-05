#import "../nelson_help.typ": *

= Conflits de file de timers <time:7_timers.timer_queuing_conflicts>

Controler le comportement lorsque des callbacks de timer sont encore en file quand un timer a cadence fixe se declenche a nouveau.

== Description

L'execution des callbacks de timer est serialisee par l'evaluateur. Un timer a cadence fixe peut se declencher a nouveau alors qu'un callback #strong[TimerFcn]; precedent est encore en file ou en cours. La propriete #strong[BusyMode]; controle la resolution de ce conflit par Nelson.

 

#table(
  columns: 2,
  [BusyMode], [Comportement], 
  [drop], [Conserve au plus un callback en attente pour le timer. Les declenchements supplementaires sont ignores.], 
  [queue], [Met chaque declenchement en file. Le timer peut continuer a executer des callbacks apres le passage des heures de declenchement prevues.], 
  [error], [Arrete le timer et execute #strong[ErrorFcn];, puis #strong[StopFcn]; si ces callbacks sont definis.], 
)
 #strong[BusyMode]; s'applique a l'execution #strong[fixedRate];. Pour #strong[fixedDelay]; et #strong[fixedSpacing];, le declenchement suivant est planifie apres la fin du callback, donc les callbacks ne s'accumulent pas de la meme maniere.


== Exemples

Utiliser le mode queue lorsque chaque declenchement planifie doit etre conserve.

``````matlab
t = timer('ExecutionMode', 'fixedRate', ...
  'BusyMode', 'queue', ...
  'Period', 0.02, ...
  'TasksToExecute', 3, ...
  'TimerFcn', @(src, event) sleep(0.03));
start(t);
wait(t);
get(t, 'TasksExecuted')
delete(t);
``````

Utiliser le mode error pour arreter le timer lorsque la file de callbacks ne suit pas.

``````matlab
t = timer('ExecutionMode', 'fixedRate', ...
  'BusyMode', 'error', ...
  'Period', 0.02, ...
  'TasksToExecute', 5, ...
  'TimerFcn', @(src, event) sleep(0.03), ...
  'ErrorFcn', @(src, event) disp('timer queue conflict'));
start(t);
wait(t);
get(t, 'Running')
delete(t);
``````


== Voir aussi

#nlink(<time:7_timers.timer>)[timer];, #nlink(<time:7_timers.timer_callback_functions>)[Fonctions de callback de timer];, #nlink(<time:7_timers.timer.set>)[set];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
