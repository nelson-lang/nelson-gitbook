#import "../../nelson_help.typ": *

= uiknob <graphics:2_graphics_objects.3_ui_controls.uiknob>

Crée un bouton rotatif (knob), continu ou discret.

== Syntaxe

- #raw("h = uiknob()");
- #raw("h = uiknob(parent)");
- #raw("h = uiknob(..., propertyName, propertyValue)");

== Argument d'entrée

/ parent: parent container.
/ propertyName, propertyValue: name-value pairs.

== Argument de sortie

/ h: UI component object.

== Description

#strong[kb \= uiknob]; crée un bouton rotatif continu (#strong[Value];\/#strong[Limits];\/graduations\/#strong[ValueChangingFcn];) ; #strong[uiknob(parent, 'discrete')]; crée un bouton rotatif discret basé sur #strong[Items];\/#strong[ItemsData];\/#strong[ValueIndex];.


== Exemples

Capture du composant UI pour l'image d'aide.

``````matlab
f = uifigure('Visible', 'off', 'Name', 'Knobs', 'Position', [100 100 620 360]);
kb = uiknob(f);
kb.Position = [70 90 170 170];
kb.Value = 55;
dk = uiknob(f, 'discrete');
dk.Position = [310 70 260 220];
dk.Value = 'Medium';
drawnow();
``````


#align(center)[#image("uiknob_example.svg")]
uiknob

``````matlab

f = uifigure();
kb = uiknob(f, 'Value', 30);
dk = uiknob(f, 'discrete', 'Items', {'Bas', 'Haut'});

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
