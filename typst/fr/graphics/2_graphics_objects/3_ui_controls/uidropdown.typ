#import "../../nelson_help.typ": *

= uidropdown <graphics:2_graphics_objects.3_ui_controls.uidropdown>

Crée une liste déroulante.

== Syntaxe

- #raw("h = uidropdown()");
- #raw("h = uidropdown(parent)");
- #raw("h = uidropdown(..., propertyName, propertyValue)");

== Argument d'entrée

/ parent: conteneur parent.
/ propertyName, propertyValue: paires nom-valeur.

== Argument de sortie

/ h: objet composant UI.

== Description

#strong[dd \= uidropdown]; crée une liste déroulante. #strong[Items]; contient les entrées affichées ; #strong[ItemsData]; associe optionnellement une valeur de données retournée par #strong[Value];. #strong[ValueIndex]; est l'indice (base 1) de la sélection. #strong[Editable]; 'on' permet la saisie libre. Callback #strong[ValueChangedFcn]; (event : #strong[Value];, #strong[PreviousValue];, #strong[Edited];, #strong[ValueIndex];, #strong[PreviousValueIndex];).


== Exemples

Capture du composant UI pour l'image d'aide.

``````matlab
f = uifigure('Visible', 'off', 'Name', 'Drop down', 'Position', [100 100 420 260]);
dd = uidropdown(f, 'Items', {'Small', 'Medium', 'Large'}, 'Position', [125 115 170 24]);
dd.Value = 'Medium';
drawnow();
``````


#align(center)[#image("uidropdown_example.svg")]
uidropdown

``````matlab

f = uifigure();
dd = uidropdown(f, 'Items', {'Rouge', 'Vert', 'Bleu'}, 'ItemsData', [1 2 3]);
dd.Value = 2;

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
