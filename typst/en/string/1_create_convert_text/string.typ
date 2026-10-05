#import "../nelson_help.typ": *

= string <string:1_create_convert_text.string>

string array constructor.

== Syntax

- #raw("res = string(var)");

== Input argument

/ var: characters, a cell of characters, or an logical or numeric array.

== Output argument

/ res: a string array

== Description

#strong[string]; converts input into string array.


== Examples

``````matlab
R = string({'these', 'are'; 'test', 'strings'})
R2 = ["these", "are"; "test", "strings"];
``````

``````matlab
M = [ 104   101   108   108   111;
20320   22909 32    32    32];
R = string(M)
D = double(R)
``````


== See also

#nlink(<string:1_create_convert_text.strings>)[strings];, #nlink(<double:double>)[double];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
