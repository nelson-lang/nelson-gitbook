#import "nelson_help.typ": *

= subsasgn <operators:subsasgn>

Redefine subscripted assignment.

== Syntax

- #raw("B = subsasgn(A, S, B)");

== Input argument

/ A: Object used in indexing operation
/ S: Structure with two fields: 'type' and 'subs'.
/ B: The assigned value, located on the right side of the assignment statement.

== Output argument

/ R: The outcome of the assignment statement is the object that has been modified, and this modified object is provided as the first argument.

== Description

#strong[B \= subsasgn(A, S, B)]; assigns a value to an element of a cell or matrix.


== Example

Parentheses Indexing

``````matlab
R1 = {1, 'GoodBye', [1, 2;3, 4]};
S = substruct('{}', {1, 3});
R2 = subsasgn(R1, S, 'Hello')
``````


== See also

#nlink(<elementary_functions:7_indexing_dimensions.substruct>)[substruct];, #nlink(<operators:subsref>)[subsref];, #nlink(<operators:subsindex>)[subsindex];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
