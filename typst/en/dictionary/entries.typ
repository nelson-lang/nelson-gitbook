#import "nelson_help.typ": *

= entries <dictionary:entries>

Key-value pairs of dictionary.

== Syntax

- #raw("E = entries(d)");
- #raw("E = entries(d, format)");

== Input argument

/ d: scalar: dictionary object.
/ format: format: string scalar or character vector: 'table' (default), 'struct' or 'cell'.

== Output argument

/ E: table, struct or cell.

== Description

#strong[E \= entries(d)]; retrieves a table containing the key-value pairs from the given dictionary,#strong[d];.

 #strong[E \= entries(d)]; is equivalent to #strong[E \= entries(d, 'table')];: the default output format is a table.

 #strong[E \= entries(d, format)]; specifies the output format as a table, a structure or a cell. For instance, entries(d, "struct") returns a structure containing the key-value pairs of d. This option is useful for data types that are not compatible with tables.


== Example

``````matlab
names = ["Biil" "John" "Yann"];
wheels = [1 2 3];
d = dictionary(wheels, names)
E = entries(d, 'struct')
E = entries(d, 'cell')

``````


== See also

#nlink(<dictionary:dictionary>)[dictionary];, #nlink(<dictionary:lookup>)[lookup];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.5.0], [initial version],
)

// Author: Allan CORNET
