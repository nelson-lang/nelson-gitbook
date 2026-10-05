#import "nelson_help.typ": *

= vectorize <string:vectorize>

Insert element-wise operators in an expression string.

== Syntax

- #raw("s = vectorize(expr)");

== Input argument

/ expr: Expression as text.

== Output argument

/ s: Vectorized expression text.

== Description

#strong[vectorize]; prefixes power, multiplication and division operators with dots when needed.


== Example

``````matlab
s = vectorize('x^2 + y*z')
``````


== See also

#nlink(<function_handle:str2func>)[str2func];, #nlink(<function_handle:func2str>)[func2str];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
