#import "../../nelson_help.typ": *

= uigauge <graphics:2_graphics_objects.3_ui_controls.uigauge>

Crée une jauge (circular, linear, ninetydegree, semicircular).

== Syntaxe

- #raw("h = uigauge()");
- #raw("h = uigauge(parent)");
- #raw("h = uigauge(..., propertyName, propertyValue)");

== Argument d'entrée

/ parent: parent container.
/ propertyName, propertyValue: name-value pairs.

== Argument de sortie

/ h: UI component object.

== Description

#strong[g \= uigauge(parent, style)]; crée une jauge d'affichage : styles #strong['circular']; (défaut), #strong['linear'];, #strong['ninetydegree'];, #strong['semicircular'];. Propriétés : #strong[Value];, #strong[Limits];, #strong[ScaleColors];\/#strong[ScaleColorLimits];, graduations, #strong[Orientation]; ou #strong[ScaleDirection]; selon le style.


== Exemples

Capture du composant UI pour l'image d'aide.

``````matlab
f = uifigure('Visible', 'off', 'Name', 'Gauges', 'Position', [100 100 520 320]);
g = uigauge(f);
g.Position = [90 70 180 180];
g.Value = 75;
lg = uigauge(f, 'linear');
lg.Position = [310 145 150 40];
lg.Value = 45;
drawnow();
``````


#align(center)[#image("uigauge_example.svg")]
uigauge

``````matlab

f = uifigure();
g = uigauge(f, 'Value', 75);
lg = uigauge(f, 'linear', 'Orientation', 'vertical');

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
