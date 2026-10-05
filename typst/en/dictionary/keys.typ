#import "nelson_help.typ": *

= keys <dictionary:keys>

Keys of dictionary.

== Syntax

- #raw("k = keys(d)");
- #raw("k = keys(d, 'cell')");

== Input argument

/ d: scalar: dictionary object.

== Output argument

/ k: keys.

== Description

#strong[k \= keys(d)]; retrieves an array containing the keys of the specified dictionary,#strong[d];.

 #strong[k \= keys(d, 'cell')]; optionally returns the keys as a cell array.


== Example

``````matlab
names = ["Biil" "John" "Yann"];
wheels = [1 2 3];
d = dictionary(wheels, names)
k = keys(d)
k = keys(d, 'cell')

``````


== See also

#nlink(<dictionary:dictionary>)[dictionary];, #nlink(<dictionary:values>)[values];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.5.0], [initial version],
)

// Author: Allan CORNET
