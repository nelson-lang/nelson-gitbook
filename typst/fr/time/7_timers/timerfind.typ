#import "../nelson_help.typ": *

= timerfind <time:7_timers.timerfind>

Trouver les objets timer visibles qui correspondent a des criteres de proprietes.

== Syntaxe

- #raw("out = timerfind()");
- #raw("out = timerfind('PropertyName', PropertyValue, ...)");
- #raw("out = timerfind(t, 'PropertyName', PropertyValue, ...)");
- #raw("out = timerfind(values)");

== Argument d'entrée

/ t: Tableau d'objets timer utilise comme source de recherche.
/ PropertyName, PropertyValue: Criteres de proprietes. Les timers retournes doivent correspondre a toutes les valeurs demandees.
/ values: Structure scalaire dont les champs contiennent les criteres de proprietes.

== Argument de sortie

/ out: Tableau d'objets timer correspondants dont la propriete #strong[ObjectVisibility]; vaut #strong[on];.

== Description

#strong[timerfind]; retourne les objets timer visibles qui correspondent a tous les criteres de proprietes specifies. Sans critere, elle retourne tous les timers visibles.

 Utilisez #strong[timerfindall]; pour inclure les timers dont la propriete #strong[ObjectVisibility]; vaut #strong[off];.


== Exemples

Trouver un timer visible par tag.

``````matlab
t = timer('Name', 'visibleTimer', ...
  'Tag', 'demo-visible', ...
  'TimerFcn', @(src, event) disp('visible'));
found = timerfind('Tag', 'demo-visible')
delete(t);
``````

Rechercher dans un tableau de timers fourni.

``````matlab
t1 = timer('Tag', 'groupA', 'TimerFcn', @(src, event) disp('a'));
t2 = timer('Tag', 'groupB', 'TimerFcn', @(src, event) disp('b'));
found = timerfind([t1 t2], 'Tag', 'groupB')
delete([t1 t2]);
``````


== Voir aussi

#nlink(<time:7_timers.timer>)[timer];, #nlink(<time:7_timers.timerfindall>)[timerfindall];, #nlink(<time:7_timers.timer.get>)[get];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
