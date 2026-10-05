#import "../nelson_help.typ": *

= substruct <elementary_functions:7_indexing_dimensions.substruct>

Create structure argument for subsasgn or subsref

== Syntax

- #raw("S = substruct(type1, subs1, type2, subs2, ...)");

== Description

#strong[S \= substruct(type1, subs1, type2, subs2, ...)]; generates a structure containing fields necessary for an overloaded#strong[subsref]; or #strong[subsasgn]; method.

 Each type char vector is limited to '.', '()', or '{}'.

 The associated subs argument should be a field name (for the '.' type) or a cell array containing index vectors (for the '()' or '{}' types).


== Example

``````matlab
S = struct('field1', 10, 'field2', 'Hello', 'field3', [1, 2, 3]);
% Create a substruct for accessing the 'field2'
s = substruct('.', 'field2');
% Use subsref to get the value of 'field2'
value = subsref(S, s);
``````


== See also

#nlink(<operators:subsref>)[subsref];, #nlink(<operators:subsasgn>)[subsasgn];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
