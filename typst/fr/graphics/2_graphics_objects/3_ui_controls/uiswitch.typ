#import "../../nelson_help.typ": *

= uiswitch <graphics:2_graphics_objects.3_ui_controls.uiswitch>

Crée un interrupteur (slider, rocker, toggle).

== Syntaxe

- #raw("h = uiswitch()");
- #raw("h = uiswitch(parent)");
- #raw("h = uiswitch(..., propertyName, propertyValue)");

== Argument d'entrée

/ parent: parent container.
/ propertyName, propertyValue: name-value pairs.

== Argument de sortie

/ h: UI component object.

== Description

#strong[sw \= uiswitch(parent, style)]; crée un interrupteur à deux états : styles #strong['slider']; (défaut), #strong['rocker'];, #strong['toggle'];. #strong[Items]; contient les deux libellés ; #strong[Value];\/#strong[ValueIndex];\/#strong[ItemsData]; suivent les règles habituelles ; #strong[ValueChangedFcn]; signale les changements.


== Exemples

Capture du composant UI pour l'image d'aide.

``````matlab
f = uifigure('Visible', 'off', 'Name', 'Switches', 'Position', [100 100 520 300]);
sw = uiswitch(f, 'Position', [120 135 90 32]);
sw.Value = 'On';
rsw = uiswitch(f, 'rocker');
rsw.Position = [300 90 48 100];
rsw.Value = 'On';
drawnow();
``````


#align(center)[#image("uiswitch_example.svg")]
uiswitch

``````matlab

f = uifigure();
sw = uiswitch(f, 'Items', {'Stop', 'Go'});
sw.Value = 'Go';

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
