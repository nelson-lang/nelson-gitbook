#import "../../nelson_help.typ": *

= uicheckbox <graphics:2_graphics_objects.3_ui_controls.uicheckbox>

Crée une case à cocher.

== Syntaxe

- #raw("h = uicheckbox()");
- #raw("h = uicheckbox(parent)");
- #raw("h = uicheckbox(..., propertyName, propertyValue)");

== Argument d'entrée

/ parent: conteneur parent.
/ propertyName, propertyValue: paires nom-valeur.

== Argument de sortie

/ h: objet composant UI.

== Description

#strong[cbx \= uicheckbox]; crée une case à cocher avec une #strong[Value]; logique, un libellé #strong[Text];, #strong[WordWrap];, les polices et un callback #strong[ValueChangedFcn]; (event : #strong[Value];, #strong[PreviousValue];).


== Exemples

Capture du composant UI pour l'image d'aide.

``````matlab
f = uifigure('Visible', 'off', 'Name', 'Check box', 'Position', [100 100 420 260]);
cb = uicheckbox(f, 'Text', 'Enable alerts', 'Value', true, 'Position', [130 120 170 24]);
drawnow();
``````


#align(center)[#image("uicheckbox_example.svg")]
uicheckbox

``````matlab

f = uifigure();
cbx = uicheckbox(f, 'Text', 'Accepter', 'Value', true, 'ValueChangedFcn', @(s, e) disp(e.Value));

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
