#import "nelson_help.typ": *

= namelengthmax <core:namelengthmax>

Return the maximum variable name length.

== Syntax

- #raw("R = namelengthmax");

== Output argument

/ R: a double: the maximum variable name length

== Description

#strong[namelengthmax];: Nelson allows 4096 as maximum length for variables and structures field names.


== Examples

Working: identifier length 4096 characters

``````matlab
ID = ['A', char(double('0') * ones(1, namelengthmax -1 ))];
length(ID)
STR = [ID, ' = 3'];
execstr(STR)

``````

Not Working: identifier length 4097 characters

``````matlab
ID = ['A', char(double('0') * ones(1, namelengthmax))];
length(ID)
STR = [ID, ' = 3'];
execstr(STR)

``````


== See also

#nlink(<core:execstr>)[execstr];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
