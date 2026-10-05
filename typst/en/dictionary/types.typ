#import "nelson_help.typ": *

= types <dictionary:types>

Types of dictionary keys and values.

== Syntax

- #raw("[keyType, valueType] = types(d)");
- #raw("keyType = types(d)");

== Input argument

/ d: scalar: dictionary object.

== Output argument

/ keyType: string scalar: Data type of dictionary keys.
/ valueType: string scalar: Data type of dictionary values.

== Description

#strong[keyType \= types(d)]; returns the data type of the keys in the dictionary.

 #strong[\[keyType, valueType\] \= types(d)]; returns the data types of the keys and values in the specified dictionary. If the dictionary d is not configured, types returns a string scalar indicating#strong[missing];.


== Example

``````matlab
names = ["Biil" "John" "Yann"];
wheels = [1 2 3];
d = dictionary(wheels, names)
[keyType, valueType] = types(d)

``````


== See also

#nlink(<dictionary:dictionary>)[dictionary];, #nlink(<dictionary:keys>)[keys];, #nlink(<dictionary:values>)[values];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.5.0], [initial version],
)

// Author: Allan CORNET
