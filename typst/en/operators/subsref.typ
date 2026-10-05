#import "nelson_help.typ": *

= subsref <operators:subsref>

Subscripted reference.

== Syntax

- #raw("B = subsref(A, S)");

== Input argument

/ A: Indexed object array
/ B: Indexing structure

== Output argument

/ B: Result of indexing expression

== Description

#strong[B \= subsref(A, S)]; is invoked when using the syntax#strong[A(i)];, #strong[A{i}];, or #strong[A.i]; with an object #strong[A];.


== Examples

Parentheses Indexing

``````matlab
A = magic(5);
S.type='()';
S.subs={1:2,':'};
R = subsref(A, S)
``````

Brace Indexing

``````matlab
C = {"one", 2, 'three'};
S = [];
S.type = '{}';
S.subs = {[1 2]};
[R1, R2] = subsref(C, S);
``````

Dot Indexing

``````matlab
A = struct('number', 10);
S = [];
S.type = '.';
S.subs = 'number';
R = subsref(A, S)
``````


== See also

#nlink(<operators:subsasgn>)[subsasgn];, #nlink(<operators:subsindex>)[subsindex];, #nlink(<operators:colon>)[colon];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
