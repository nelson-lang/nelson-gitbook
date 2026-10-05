#import "../../nelson_help.typ": *

= uispinner <graphics:2_graphics_objects.3_ui_controls.uispinner>

Crée un compteur numérique (spinner).

== Syntaxe

- #raw("h = uispinner()");
- #raw("h = uispinner(parent)");
- #raw("h = uispinner(..., propertyName, propertyValue)");

== Argument d'entrée

/ parent: conteneur parent.
/ propertyName, propertyValue: paires nom-valeur.

== Argument de sortie

/ h: objet composant UI.

== Description

#strong[spn \= uispinner]; crée un compteur numérique. Propriétés : #strong[Value];, #strong[Step];, #strong[Limits];, #strong[LowerLimitInclusive];\/#strong[UpperLimitInclusive];, #strong[RoundFractionalValues];, #strong[ValueDisplayFormat];, #strong[AllowEmpty];, #strong[Editable];, #strong[ValueChangedFcn];, #strong[ValueChangingFcn];.


== Exemples

Capture du composant UI pour l'image d'aide.

``````matlab
f = uifigure('Visible', 'off', 'Name', 'Spinners', 'Position', [100 100 460 280]);
uilabel(f, 'Text', 'Quantite', 'FontWeight', 'bold', 'Position', [80 185 100 24]);
qty = uispinner(f, 'Value', 8, 'Step', 1, 'Limits', [0 20], 'Position', [210 180 130 30]);
uilabel(f, 'Text', 'Ratio', 'FontWeight', 'bold', 'Position', [80 130 100 24]);
ratio = uispinner(f, 'Value', 0.75, 'Step', 0.05, 'Limits', [0 1], 'Position', [210 125 130 30]);
drawnow();
``````


#align(center)[#image("uispinner_example.svg")]
uispinner

``````matlab

f = uifigure();
spn = uispinner(f, 'Value', 5, 'Step', 0.5, 'Limits', [0 10]);

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
