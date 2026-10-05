#import "../../nelson_help.typ": *

= uiradiobutton <graphics:2_graphics_objects.3_ui_controls.uiradiobutton>

Crée un bouton radio dans un groupe de boutons.

== Syntaxe

- #raw("h = uiradiobutton()");
- #raw("h = uiradiobutton(parent)");
- #raw("h = uiradiobutton(..., propertyName, propertyValue)");

== Argument d'entrée

/ parent: conteneur parent.
/ propertyName, propertyValue: paires nom-valeur.

== Argument de sortie

/ h: objet composant UI.

== Description

#strong[rb \= uiradiobutton(bg)]; crée un bouton radio dans un uibuttongroup. Le premier bouton ajouté est sélectionné. La sélection est exclusive ; les changements sont signalés par le #strong[SelectionChangedFcn]; du groupe. Propriétés : #strong[Value]; (logique), #strong[Text];, #strong[WordWrap];, polices.


== Exemples

Capture du composant UI pour l'image d'aide.

``````matlab
f = uifigure('Visible', 'off', 'Name', 'Radio buttons', 'Position', [100 100 420 260]);
bg = uibuttongroup(f, 'Position', [95 55 230 150]);
r1 = uiradiobutton(bg, 'Text', 'Metric', 'Position', [25 95 120 22]);
r2 = uiradiobutton(bg, 'Text', 'Imperial', 'Position', [25 55 120 22]);
r1.Value = true;
drawnow();
``````


#align(center)[#image("uiradiobutton_example.svg")]
uiradiobutton

``````matlab

f = uifigure();
bg = uibuttongroup(f, 'Title', 'Options');
rb1 = uiradiobutton(bg, 'Text', 'Premier');
rb2 = uiradiobutton(bg, 'Text', 'Second');
rb2.Value = true;

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
