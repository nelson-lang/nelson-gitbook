#import "../nelson_help.typ": *

= timerfindall <time:7_timers.timerfindall>

Trouver tous les objets timer qui correspondent a des criteres de proprietes, y compris les timers caches.

== Syntaxe

- #raw("out = timerfindall()");
- #raw("out = timerfindall('PropertyName', PropertyValue, ...)");
- #raw("out = timerfindall(t, 'PropertyName', PropertyValue, ...)");
- #raw("out = timerfindall(values)");

== Argument d'entrée

/ t: Tableau d'objets timer utilise comme source de recherche.
/ PropertyName, PropertyValue: Criteres de proprietes. Les timers retournes doivent correspondre a toutes les valeurs demandees.
/ values: Structure scalaire dont les champs contiennent les criteres de proprietes.

== Argument de sortie

/ out: Tableau d'objets timer correspondants, y compris les objets dont la propriete #strong[ObjectVisibility]; vaut #strong[off];.

== Description

#strong[timerfindall]; retourne les objets timer qui correspondent a tous les criteres de proprietes specifies. Contrairement a #strong[timerfind];, elle inclut les timers caches.

 Elle peut aussi retourner les objets timer dont la variable d'origine est sortie de portee, jusqu'a leur suppression.


== Exemples

Trouver un timer cache par tag.

``````matlab
t = timer('ObjectVisibility', 'off', ...
  'Tag', 'demo-hidden', ...
  'TimerFcn', @(src, event) disp('hidden'));
visibleOnly = timerfind('Tag', 'demo-hidden')
includingHidden = timerfindall('Tag', 'demo-hidden')
delete(t);
``````

Utiliser une structure de criteres.

``````matlab
t = timer('Name', 'criteriaTimer', ...
  'Tag', 'criteria', ...
  'TimerFcn', @(src, event) disp('criteria'));
criteria = struct('Name', 'criteriaTimer', 'Tag', 'criteria');
found = timerfindall(criteria)
delete(t);
``````


== Voir aussi

#nlink(<time:7_timers.timer>)[timer];, #nlink(<time:7_timers.timerfind>)[timerfind];, #nlink(<time:7_timers.timer.get>)[get];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
