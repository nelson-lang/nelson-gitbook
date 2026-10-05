#import "nelson_help.typ": *

= parsestring <interpreter:parsestring>

Parse a string.

== Syntax

- #raw("status = parsestring(str)");

== Input argument

/ str: a string: a string to parse.

== Output argument

/ status: a string: 'script', 'function', 'error'.

== Description

#strong[parsestring]; parse a string and returns if it is a valid script, a valid function or an error.


== Example

``````matlab
parsestring('1 + 1')
parsestring('1 +++ 1')
parsestring('1 +*+ 1')
``````


== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
