#import "../../nelson_help.typ": *

= uilamp <graphics:2_graphics_objects.3_ui_controls.uilamp>

Crée un témoin lumineux (lamp).

== Syntaxe

- #raw("h = uilamp()");
- #raw("h = uilamp(parent)");
- #raw("h = uilamp(..., propertyName, propertyValue)");

== Argument d'entrée

/ parent: parent container.
/ propertyName, propertyValue: name-value pairs.

== Argument de sortie

/ h: UI component object.

== Description

#strong[lmp \= uilamp]; crée un témoin circulaire d'affichage dont la #strong[Color]; reflète un état.


== Exemples

Capture du composant UI pour l'image d'aide.

``````matlab
f = uifigure('Visible', 'off', 'Name', 'Lamp', 'Position', [100 100 420 260]);
lbl = uilabel(f, 'Text', 'Ready', 'Position', [150 120 80 24]);
lmp = uilamp(f, 'Position', [235 122 20 20]);
lmp.Color = 'green';
drawnow();
``````


#align(center)[#image("uilamp_example.svg")]
uilamp

``````matlab

f = uifigure();
lmp = uilamp(f, 'Color', 'red');

``````


== Voir aussi

#nlink(<gui:uifigure>)[uifigure];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Auteur: Allan CORNET
