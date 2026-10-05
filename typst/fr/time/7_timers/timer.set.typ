#import "../nelson_help.typ": *

= timer.set <time:7_timers.timer.set>

Definir les valeurs des proprietes de timer.

== Syntaxe

- #raw("set(t, 'PropertyName', PropertyValue, ...)");
- #raw("set(t, values)");
- #raw("t.PropertyName = PropertyValue");

== Argument d'entrée

/ t: Objet timer ou tableau d'objets timer.
/ PropertyName: Nom d'une propriete de timer modifiable.
/ PropertyValue: Nouvelle valeur de la propriete.
/ values: Structure scalaire dont les champs sont des noms de proprietes de timer. Les champs en lecture seule sont ignores.

== Description

#strong[set]; modifie les proprietes de timer accessibles en ecriture. Ces proprietes incluent #strong[BusyMode];, #strong[ErrorFcn];, #strong[ExecutionMode];, #strong[Name];, #strong[ObjectVisibility];, #strong[Period];, #strong[StartDelay];, #strong[StartFcn];, #strong[StopFcn];, #strong[Tag];, #strong[TasksToExecute];, #strong[TimerFcn]; et #strong[UserData];.

 Ne modifiez pas les proprietes de planification comme #strong[BusyMode];, #strong[ExecutionMode];, #strong[Period]; ou #strong[StartDelay]; pendant qu'un timer est en cours d'execution.


== Exemples

Configurer un timer avec des paires nom de propriete et valeur.

``````matlab
t = timer();
set(t, 'Name', 'setExample', ...
  'ExecutionMode', 'fixedSpacing', ...
  'Period', 0.05, ...
  'TasksToExecute', 2, ...
  'TimerFcn', @(src, event) disp(get(src, 'Name')));
start(t);
wait(t);
delete(t);
``````

Definir plusieurs proprietes depuis une structure.

``````matlab
t = timer('TimerFcn', @(src, event) disp('done'));
values = struct();
values.Tag = 'batch';
values.StartDelay = 0.1;
set(t, values);
get(t, 'Tag')
delete(t);
``````


== Voir aussi

#nlink(<time:7_timers.timer>)[timer];, #nlink(<time:7_timers.timer.get>)[get];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
