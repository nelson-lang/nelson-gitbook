#import "nelson_help.typ": *

= numEntries <dictionary:numEntries>

Number of key-value pairs in dictionary.

== Syntax

- #raw("n = numEntries(d)");

== Input argument

/ d: scalar: dictionary object.

== Output argument

/ n: scalar: number of entries.

== Description

#strong[n \= numEntries(d)]; retrieves the number of key-value pairs stored in the dictionary.

 If d is an unconfigured dictionary, then numEntries returns 0.


== Example

``````matlab
names = ["Biil" "John" "Yann"];
wheels = [1 2 3];
d = dictionary(wheels, names)
n = numEntries(d)

``````


== See also

#nlink(<dictionary:dictionary>)[dictionary];, #nlink(<dictionary:entries>)[entries];, #nlink(<dictionary:keys>)[keys];, #nlink(<dictionary:values>)[values];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.5.0], [initial version],
)

// Author: Allan CORNET
