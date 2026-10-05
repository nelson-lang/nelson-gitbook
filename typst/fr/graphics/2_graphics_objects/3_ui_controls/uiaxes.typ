#import "../../nelson_help.typ": *

= uiaxes <graphics:2_graphics_objects.3_ui_controls.uiaxes>

Crée des axes pour les applications de style App Designer.

== Syntaxe

- #raw("ax = uiaxes()");
- #raw("ax = uiaxes(parent)");
- #raw("ax = uiaxes(..., propertyName, propertyValue)");

== Argument d'entrée

/ parent: parent container.
/ propertyName, propertyValue: name-value pairs.

== Argument de sortie

/ ax: axes object.

== Description

#strong[ax \= uiaxes]; crée des axes adaptés aux applications basées sur uifigure et retourne l'objet axes. Se comporte comme #strong[axes]; avec les défauts UIAxes : #strong[Units]; \= 'pixels', #strong[Position]; \= \[10 10 400 300\], #strong[NextPlot]; \= 'replacechildren', #strong[FontUnits]; \= 'pixels'. Passez les axes aux fonctions de tracé : #strong[plot(ax, ...)];.


== Exemples

Capture du composant UI pour l'image d'aide.

``````matlab
f = uifigure('Visible', 'off', 'Name', 'Axes UI', 'Position', [100 100 420 260]);
f.HandleVisibility = 'on';
ax = uiaxes(f, 'Position', [45 45 330 175]);
x = 0:0.1:2*pi;
plot(ax, x, sin(x), 'LineWidth', 1.5);
title(ax, 'Sine');
drawnow();
``````


#align(center)[#image("uiaxes_example.svg")]
uiaxes

``````matlab

f = uifigure();
ax = uiaxes(f, 'Position', [30 30 400 300]);
plot(ax, 1:10, (1:10).^2);

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
