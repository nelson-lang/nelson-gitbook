#import "nelson_help.typ": *

= mustBeInRange <validators:mustBeInRange>

Checks that value is in the specified range.

== Syntax

- #raw("mustBeInRange(value, lower, upper)");
- #raw("mustBeInRange(value, lower, upper, argPosition)");
- #raw("mustBeInRange(value, lower, upper, boundflag1)");
- #raw("mustBeInRange(value, lower, upper, boundflag1, argPosition)");
- #raw("mustBeInRange(value, lower, upper, boundflag1, boundflag2)");
- #raw("mustBeInRange(value, lower, upper, boundflag1, boundflag2, argPosition)");
- #raw("C++: void mustBeInRange(const ArrayOfVector& args, const ArrayOf& lower, const ArrayOf& upper, const std::wstring& boundflag1, const std::wstring& boundflag2, int argPosition)");

== Input argument

/ value: a numeric value: scalar or matrix
/ lower: a scalar numeric or logical value.
/ upper: a scalar numeric or logical value.
/ boundflag1: 'inclusive', 'exclusice', 'exclude-lower' or 'exclude-upper'.
/ boundflag2: 'inclusive', 'exclusice', 'exclude-lower' or 'exclude-upper'.
/ argPosition: a positive integer value: Position of input argument.

== Description

#strong[mustBeInRange]; checks that value is in the specified range or raise an error.

 The only valid combination of the flags is#strong[exclude-lower]; with #strong[exclude-upper];.


== Example

``````matlab
mustBeInRange(3, 2, 4)
``````


== See also

#nlink(<validators:mustBeMember>)[mustBeMember];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
