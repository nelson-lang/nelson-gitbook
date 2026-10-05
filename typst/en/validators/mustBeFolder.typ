#import "nelson_help.typ": *

= mustBeFolder <validators:mustBeFolder>

Checks that input path refers to folder.

== Syntax

- #raw("mustBeFolder(var)");
- #raw("mustBeFolder(var, argPosition)");
- #raw("C++: void mustBeFolder(const ArrayOfVector& args, int argPosition)");

== Input argument

/ var: a variable: a scalar string array or row vector characters array.
/ argPosition: a positive integer value: Position of input argument.

== Description

#strong[mustBeFolder]; checks that input path refers to folder or raise an error.


== Example

``````matlab
mustBeFolder(tempdir())
mustBeFolder('hello_nelson')
``````


== See also

#nlink(<files_folders_functions:isdir>)[isdir];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
