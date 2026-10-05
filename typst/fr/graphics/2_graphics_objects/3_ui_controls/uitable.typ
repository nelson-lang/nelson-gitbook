#import "../../nelson_help.typ": *

= uitable <graphics:2_graphics_objects.3_ui_controls.uitable>

Crée un composant table (style App Designer).

== Syntaxe

- #raw("h = uitable()");
- #raw("h = uitable(parent)");
- #raw("h = uitable(..., propertyName, propertyValue)");

== Argument d'entrée

/ parent: parent object.
/ propertyName, propertyValue: name-value pairs.

== Argument de sortie

/ h: UI object.

== Description

#strong[t \= uitable]; crée une table. #strong[Data]; accepte des tableaux numériques, logiques ou cell. Propriétés : #strong[ColumnName]; ('numbered' ou cell), #strong[RowName];, #strong[ColumnWidth];, #strong[ColumnEditable];, #strong[ColumnSortable];, #strong[ColumnFormat];, #strong[RowStriping];, #strong[Selection];\/#strong[SelectionType];\/#strong[Multiselect];, #strong[DisplayData]; (lecture seule). Callbacks : #strong[CellEditCallback]; (event : Indices, EditData, NewData), #strong[SelectionChangedFcn];.


== Exemples

Capture du composant UI pour l'image d'aide.

``````matlab
f = uifigure('Visible', 'off', 'Name', 'Table', 'Position', [100 100 420 260]);
t = uitable(f, 'Data', magic(4), 'ColumnName', {'A', 'B', 'C', 'D'}, 'Position', [55 40 310 180]);
drawnow();
``````


#align(center)[#image("uitable_example.svg")]
uitable

``````matlab

f = uifigure();
t = uitable(f, 'Data', magic(4), 'ColumnName', {'A', 'B', 'C', 'D'}, 'ColumnEditable', true(1, 4));

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
