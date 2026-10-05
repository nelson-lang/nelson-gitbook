#import "../../nelson_help.typ": *

= uislider <graphics:2_graphics_objects.3_ui_controls.uislider>

Crée un curseur (slider) ou un curseur de plage.

== Syntaxe

- #raw("h = uislider()");
- #raw("h = uislider(parent)");
- #raw("h = uislider(..., propertyName, propertyValue)");

== Argument d'entrée

/ parent: parent container.
/ propertyName, propertyValue: name-value pairs.

== Argument de sortie

/ h: UI component object.

== Description

#strong[sld \= uislider]; crée un curseur ; #strong[uislider(parent, 'range')]; crée un curseur de plage dont la #strong[Value]; est un vecteur à deux éléments. Propriétés : #strong[Value];, #strong[Limits];, #strong[Orientation];, #strong[MajorTicks];\/#strong[MinorTicks];\/#strong[MajorTickLabels]; avec modes auto\/manuel, #strong[Step];\/#strong[StepMode];, #strong[ValueChangedFcn];, #strong[ValueChangingFcn];.


== Exemples

Capture du composant UI pour l'image d'aide.

``````matlab
f = uifigure('Visible', 'off', 'Name', 'Slider', 'Position', [100 100 520 300]);
sld = uislider(f, 'Position', [90 165 300 30]);
sld.Value = 42;
rs = uislider(f, 'range');
rs.Position = [90 95 300 30];
rs.Value = [20 70];
drawnow();
``````


#align(center)[#image("uislider_example.svg")]
uislider

``````matlab

f = uifigure();
sld = uislider(f, 'Limits', [0 10], 'Value', 4);
rs = uislider(f, 'range', 'Value', [20 60]);

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
