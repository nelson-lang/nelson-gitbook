#import "../../nelson_help.typ": *

= uilistbox <graphics:2_graphics_objects.3_ui_controls.uilistbox>

Crée une liste de sélection.

== Syntaxe

- #raw("h = uilistbox()");
- #raw("h = uilistbox(parent)");
- #raw("h = uilistbox(..., propertyName, propertyValue)");

== Argument d'entrée

/ parent: conteneur parent.
/ propertyName, propertyValue: paires nom-valeur.

== Argument de sortie

/ h: objet composant UI.

== Description

#strong[lb \= uilistbox]; crée une liste. #strong[Items];\/#strong[ItemsData]; suivent les règles de la liste déroulante ; #strong[Multiselect]; 'on' autorise la sélection multiple (#strong[Value]; cell). Callback #strong[ValueChangedFcn]; (event : #strong[Value];, #strong[PreviousValue];, #strong[ValueIndex];, #strong[PreviousValueIndex];).


== Exemples

Capture du composant UI pour l'image d'aide.

``````matlab
f = uifigure('Visible', 'off', 'Name', 'List box', 'Position', [100 100 420 260]);
lb = uilistbox(f, 'Items', {'Option 1', 'Option 2', 'Option 3'}, 'Position', [130 65 160 120]);
lb.Value = 'Option 2';
drawnow();
``````


#align(center)[#image("uilistbox_example.svg")]
uilistbox

``````matlab

f = uifigure();
lb = uilistbox(f, 'Items', {'Item 1', 'Item 2', 'Item 3'}, 'Multiselect', 'on');
lb.Value = {'Item 1', 'Item 3'};

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
