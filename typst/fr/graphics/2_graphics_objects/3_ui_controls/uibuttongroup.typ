#import "../../nelson_help.typ": *

= uibuttongroup <graphics:2_graphics_objects.3_ui_controls.uibuttongroup>

Crée un groupe de boutons.

== Syntaxe

- #raw("h = uibuttongroup()");
- #raw("h = uibuttongroup(parent)");
- #raw("h = uibuttongroup(..., propertyName, propertyValue)");

== Argument d'entrée

/ parent: conteneur parent (uifigure, figure, uipanel, uitab, uibuttongroup, uigridlayout).
/ propertyName, propertyValue: paires nom-valeur.

== Argument de sortie

/ h: objet conteneur.

== Description

#strong[bg \= uibuttongroup]; crée un conteneur gérant la sélection exclusive de boutons radio et boutons bascule. Propriétés principales : #strong[Title];, #strong[TitlePosition];, #strong[SelectedObject];, #strong[Buttons]; (lecture seule), #strong[SelectionChangedFcn]; (event avec #strong[OldValue]; et #strong[NewValue];), plus les propriétés de bordure et police du panneau.


== Exemples

Capture du composant UI pour l'image d'aide.

``````matlab
f = uifigure('Visible', 'off', 'Name', 'Button group', 'Position', [100 100 420 260]);
bg = uibuttongroup(f, 'Position', [90 55 240 150]);
r1 = uiradiobutton(bg, 'Text', 'Low', 'Position', [20 95 120 22]);
r2 = uiradiobutton(bg, 'Text', 'High', 'Position', [20 55 120 22]);
r2.Value = true;
drawnow();
``````


#align(center)[#image("uibuttongroup_example.svg")]
uibuttongroup

``````matlab

f = uifigure();
bg = uibuttongroup(f, 'Title', 'Choix', 'Position', [20 20 260 210]);

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
