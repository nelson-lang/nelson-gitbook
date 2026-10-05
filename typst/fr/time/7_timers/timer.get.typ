#import "../nelson_help.typ": *

= timer.get <time:7_timers.timer.get>

Obtenir les valeurs des proprietes de timer.

== Syntaxe

- #raw("value = get(t, 'PropertyName')");
- #raw("values = get(t)");

== Argument d'entrée

/ t: Objet timer. Utilisez un timer scalaire pour demander toutes les proprietes.
/ PropertyName: Nom de la propriete a interroger.

== Argument de sortie

/ value: Valeur de propriete demandee.
/ values: Structure scalaire contenant les valeurs des proprietes du timer.

== Description

#strong[get]; retourne la valeur d'une propriete de timer nommee. L'appel de #strong[get]; avec seulement un timer scalaire retourne une structure contenant toutes les proprietes du timer, y compris les proprietes en lecture seule comme #strong[Running];, #strong[TasksExecuted];, #strong[AveragePeriod]; et #strong[InstantPeriod];.


== Exemples

Interroger une propriete puis toutes les proprietes.

``````matlab
t = timer('Name', 'getExample', ...
  'StartDelay', 0.2, ...
  'TimerFcn', @(src, event) disp('done'));
delay = get(t, 'StartDelay')
props = get(t)
delete(t);
``````

Lire le nombre de taches terminees apres la fin d'un timer repete.

``````matlab
t = timer('ExecutionMode', 'fixedSpacing', ...
  'Period', 0.05, ...
  'TasksToExecute', 2, ...
  'TimerFcn', @(src, event) disp('tick'));
start(t);
wait(t);
executed = get(t, 'TasksExecuted')
delete(t);
``````


== Voir aussi

#nlink(<time:7_timers.timer>)[timer];, #nlink(<time:7_timers.timer.set>)[set];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
