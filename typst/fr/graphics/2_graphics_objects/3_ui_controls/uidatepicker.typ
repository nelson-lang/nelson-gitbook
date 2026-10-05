#import "../../nelson_help.typ": *

= uidatepicker <graphics:2_graphics_objects.3_ui_controls.uidatepicker>

Crée un sélecteur de date.

== Syntaxe

- #raw("h = uidatepicker()");
- #raw("h = uidatepicker(parent)");
- #raw("h = uidatepicker(..., propertyName, propertyValue)");

== Argument d'entrée

/ parent: parent container.
/ propertyName, propertyValue: name-value pairs.

== Argument de sortie

/ h: UI component object.

== Description

#strong[d \= uidatepicker]; crée un sélecteur de date dont la #strong[Value]; est un datetime scalaire (NaT si vide). Propriétés : #strong[DisplayFormat]; (LDML), #strong[Limits];, #strong[DisabledDates];, #strong[DisabledDaysOfWeek];, #strong[Editable];, #strong[ValueChangedFcn];.


== Exemples

Capture du composant UI pour l'image d'aide.

``````matlab
f = uifigure('Visible', 'off', 'Name', 'Date picker', 'Position', [100 100 420 260]);
dp = uidatepicker(f, 'Position', [120 115 180 24]);
dp.Value = datetime(2026, 7, 19);
drawnow();
``````


#align(center)[#image("uidatepicker_example.svg")]
uidatepicker

``````matlab

f = uifigure();
d = uidatepicker(f, 'Value', datetime(2026, 7, 18));

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
