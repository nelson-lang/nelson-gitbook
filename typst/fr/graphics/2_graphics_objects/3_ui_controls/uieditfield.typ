#import "../../nelson_help.typ": *

= uieditfield <graphics:2_graphics_objects.3_ui_controls.uieditfield>

Crée un champ d'édition texte ou numérique.

== Syntaxe

- #raw("h = uieditfield()");
- #raw("h = uieditfield(parent)");
- #raw("h = uieditfield(..., propertyName, propertyValue)");

== Argument d'entrée

/ parent: conteneur parent.
/ propertyName, propertyValue: paires nom-valeur.

== Argument de sortie

/ h: objet composant UI.

== Description

#strong[ef \= uieditfield]; crée un champ texte ; #strong[uieditfield(parent, 'numeric')]; crée un champ numérique. Style texte : #strong[Value]; (char), #strong[CharacterLimits];, #strong[InputType];, #strong[ValueChangingFcn];. Style numérique : #strong[Value]; (double), #strong[Limits];, #strong[LowerLimitInclusive];\/#strong[UpperLimitInclusive];, #strong[RoundFractionalValues];, #strong[ValueDisplayFormat];, #strong[AllowEmpty];. Communs : #strong[Editable];, #strong[HorizontalAlignment];, #strong[Placeholder];, #strong[ValueChangedFcn];.


== Exemples

Capture du composant UI pour l'image d'aide.

``````matlab
f = uifigure('Visible', 'off', 'Name', 'Edit fields', 'Position', [100 100 420 260]);
ef = uieditfield(f, 'Position', [95 135 230 24]);
ef.Value = 'Sample text';
nf = uieditfield(f, 'numeric', 'Position', [95 90 120 24]);
nf.Value = 42.5;
drawnow();
``````


#align(center)[#image("uieditfield_example.svg")]
uieditfield

``````matlab

f = uifigure();
ef = uieditfield(f, 'Value', 'bonjour');
nef = uieditfield(f, 'numeric', 'Limits', [0 100], 'Value', 42);

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
