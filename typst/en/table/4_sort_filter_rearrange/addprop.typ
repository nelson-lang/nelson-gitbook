#import "../nelson_help.typ": *

= addprop <table:4_sort_filter_rearrange.addprop>

Add custom table property.

== Syntax

- #raw("TB = addprop(TA, name, type)");

== Input argument

/ TA: Input table.
/ name: Custom property name.
/ type: Custom property type: #strong['table']; or #strong['variable'];.

== Output argument

/ TB: Table with custom property added.

== Description

#strong[addprop]; adds a custom property under #strong[T.Properties.CustomProperties];. The custom property type follows table custom properties: #strong['table']; or #strong['variable'];.


== Example

Add a custom property

``````matlab
T = table([1; 2], 'VariableNames', {'A'});
T = addprop(T, 'Source', 'table');
T.Properties.CustomProperties.Source = 'demo';
T.Properties.CustomProperties.Source
``````


== See also

#nlink(<table:4_sort_filter_rearrange.rmprop>)[rmprop];, #nlink(<table:1_create_convert_tables.table>)[table];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
