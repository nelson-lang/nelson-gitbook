#import "../nelson_help.typ": *

= rmprop <table:4_sort_filter_rearrange.rmprop>

Remove custom table property.

== Syntax

- #raw("TB = rmprop(TA, name)");

== Input argument

/ TA: Input table.
/ name: Custom property name.

== Output argument

/ TB: Table with custom property removed.

== Description

#strong[rmprop]; removes a custom property from #strong[T.Properties.CustomProperties];.


== Example

Remove a custom property

``````matlab
T = table([1; 2], 'VariableNames', {'A'});
T = addprop(T, 'Source', 'table');
T.Properties.CustomProperties.Source = 'demo';
T = rmprop(T, 'Source')
``````


== See also

#nlink(<table:4_sort_filter_rearrange.addprop>)[addprop];, #nlink(<table:1_create_convert_tables.table>)[table];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
