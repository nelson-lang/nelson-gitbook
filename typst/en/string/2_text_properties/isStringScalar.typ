#import "../nelson_help.typ": *

= isStringScalar <string:2_text_properties.isStringScalar>

checks if input is string array with one element.

== Syntax

- #raw("r = isStringScalar(str)");

== Input argument

/ str: a string, string array or cell of strings.

== Output argument

/ r: a logical, true if res is string type and scalar.

== Description

#strong[isStringScalar]; checks if input is string array with one element.


== Example

``````matlab
r = isStringScalar('hello')
r = isStringScalar("hello")
r = isStringScalar(["hello", "world"])
``````


== See also

#nlink(<types:ischar>)[ischar];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
