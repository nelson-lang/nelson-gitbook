#import "../../nelson_help.typ": *

= uitable <graphics:2_graphics_objects.3_ui_controls.uitable>

Create table UI component (App Designer style).

== Syntax

- #raw("h = uitable()");
- #raw("h = uitable(parent)");
- #raw("h = uitable(..., propertyName, propertyValue)");

== Input argument

/ parent: parent object.
/ propertyName, propertyValue: name-value pairs.

== Output argument

/ h: UI object.

== Description

#strong[t \= uitable]; creates a table component. #strong[Data]; accepts numeric, logical, or cell arrays. Properties: #strong[ColumnName]; ('numbered' or cell), #strong[RowName];, #strong[ColumnWidth];, #strong[ColumnEditable];, #strong[ColumnSortable];, #strong[ColumnFormat];, #strong[RowStriping];, #strong[Selection];\/#strong[SelectionType];\/#strong[Multiselect];, #strong[DisplayData]; (read-only). Callbacks: #strong[CellEditCallback]; (event: Indices, EditData, NewData), #strong[SelectionChangedFcn];.


== Examples

Captured UI component for the help image.

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


== See also

#nlink(<gui:uifigure>)[uifigure];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
