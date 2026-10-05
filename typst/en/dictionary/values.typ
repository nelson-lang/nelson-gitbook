#import "nelson_help.typ": *

= values <dictionary:values>

Values of dictionary.

== Syntax

- #raw("v = values(d)");
- #raw("v = values(d, 'cell')");

== Input argument

/ d: scalar: dictionary object.

== Output argument

/ v: values.

== Description

#strong[v \= values(d)]; retrieves an array containing the values of the specified dictionary,#strong[d];.

 #strong[v \= values(d, 'cell')]; optionally returns the values as a cell array.


== Example

``````matlab
names = ["Biil" "John" "Yann"];
wheels = [1 2 3];
d = dictionary(wheels, names)
v = values(d)
v = values(d, 'cell')

``````


== See also

#nlink(<dictionary:dictionary>)[dictionary];, #nlink(<dictionary:keys>)[keys];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.5.0], [initial version],
)

// Author: Allan CORNET
