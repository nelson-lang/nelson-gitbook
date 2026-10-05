#import "nelson_help.typ": *

= configureDictionary <dictionary:configureDictionary>

Generate a dictionary with defined key and value types.

== Syntax

- #raw("d = configureDictionary(keyType, valueType)");

== Input argument

/ keyType: Key data type: string scalar or character vector.
/ valueType: Value data type: string scalar or character vector.

== Output argument

/ d: scalar: a dictionary object.

== Description

#strong[d \= configureDictionary(keyType, valueType)]; initializes an empty dictionary that enforces keys of type #strong[keyType]; and values of type #strong[valueType];.


== Example

``````matlab
d1 = configureDictionary("string", "single")
d2 = configureDictionary("cell", "struct")
``````


== See also

#nlink(<dictionary:dictionary>)[dictionary];, #nlink(<dictionary:isConfigured>)[isConfigured];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.5.0], [initial version],
)

// Author: Allan CORNET
