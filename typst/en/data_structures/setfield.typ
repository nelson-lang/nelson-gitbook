#import "nelson_help.typ": *

= setfield <data_structures:setfield>

Set structure field contents.

== Syntax

- #raw("stOut = setfield(stIn, fieldname, fieldvalue)");
- #raw("stOut = setfield(stIn, fieldname1, fieldvalue1, ..., fieldnameN, fieldvalueN)");

== Input argument

/ stIn: a structure.
/ fieldname: a string or characters vector.
/ fieldvalue: a variable value.

== Output argument

/ stOut: a structure: result.

== Description

Set the contents of the specified field to the value.

 Alternative syntax: S.(fieldname) \= fieldvalue

 Alternative syntax: S(idx1, idx2).(fieldname) \= fieldvalue


== Example

``````matlab
A = {};
setfield(A, 'vv', 3)
``````


== See also

#nlink(<data_structures:struct>)[struct];, #nlink(<data_structures:getfield>)[getfield];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
