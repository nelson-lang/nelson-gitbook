#import "nelson_help.typ": *

= isstr <core:isstr>

Determine whether input is a character array (deprecated).

== Syntax

- #raw("tf = isstr(x)");

== Input argument

/ x: a value, any type.

== Output argument

/ tf: a logical: #strong[true]; if #strong[x]; is a character array, #strong[false]; otherwise.

== Description

#strong[isstr]; is a deprecated alias for #strong[ischar];. It returns #strong[true]; when #strong[x]; is a character array and #strong[false]; otherwise.

 A string array (created with double quotes) is not a character array, so #strong[isstr]; returns #strong[false]; for it.

 #strong[isstr]; is kept for compatibility with legacy code. Use #strong[ischar]; instead in new code.


== Examples

A character array:

``````matlab
tf = isstr('hello')
``````

A numeric value is not a character array:

``````matlab
tf = isstr(42)
``````

A string is not a character array:

``````matlab
tf = isstr("hello")
``````


== See also

#nlink(<types:ischar>)[ischar];, #nlink(<types:isstring>)[isstring];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
