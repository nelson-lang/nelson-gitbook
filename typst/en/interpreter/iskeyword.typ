#import "nelson_help.typ": *

= iskeyword <interpreter:iskeyword>

Returns all Nelson keywords.

== Syntax

- #raw("state = iskeyword(name)");
- #raw("ce = iskeyword()");

== Input argument

/ name: a string.

== Output argument

/ state: a logical: true if is an Nelson keyword.
/ ce: a cell of strings: list of Nelson's keywords.

== Description

#strong[iskeyword]; returns a list of all Nelson keywords.


== Example

``````matlab
iskeyword('for')
ce = iskeyword()
``````


== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
