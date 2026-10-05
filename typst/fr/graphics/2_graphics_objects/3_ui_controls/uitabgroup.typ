#import "../../nelson_help.typ": *

= uitabgroup <graphics:2_graphics_objects.3_ui_controls.uitabgroup>

Crée un groupe d'onglets.

== Syntaxe

- #raw("h = uitabgroup()");
- #raw("h = uitabgroup(parent)");
- #raw("h = uitabgroup(..., propertyName, propertyValue)");

== Argument d'entrée

/ parent: conteneur parent (uifigure, figure, uipanel, uitab, uibuttongroup, uigridlayout).
/ propertyName, propertyValue: paires nom-valeur.

== Argument de sortie

/ h: objet conteneur.

== Description

#strong[tg \= uitabgroup]; crée un groupe d'onglets. Les enfants sont des objets uitab. Propriétés principales : #strong[TabLocation]; ('top', 'bottom', 'left', 'right'), #strong[SelectedTab];, #strong[SelectionChangedFcn]; (event avec #strong[OldValue]; et #strong[NewValue];).


== Exemples

Capture du composant UI pour l'image d'aide.

``````matlab
f = uifigure('Visible', 'off', 'Name', 'Tab group', 'Position', [100 100 420 260]);
tg = uitabgroup(f, 'Position', [55 40 310 180]);
t1 = uitab(tg, 'Title', 'First');
t2 = uitab(tg, 'Title', 'Second');
tg.SelectedTab = t2;
uilabel(t2, 'Text', 'Second tab', 'Position', [35 70 120 24]);
drawnow();
``````


#align(center)[#image("uitabgroup_example.svg")]
uitabgroup

``````matlab

f = uifigure();
tg = uitabgroup(f, 'Position', [20 20 250 210]);
t1 = uitab(tg, 'Title', 'Premier');
t2 = uitab(tg, 'Title', 'Second');
tg.SelectedTab = t2;

``````


== Voir aussi

#nlink(<gui:uifigure>)[uifigure];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
