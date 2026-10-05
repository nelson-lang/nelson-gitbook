#import "nelson_help.typ": *

= mustBeFile <validators:mustBeFile>

Checks that input path refers to file.

== Syntax

- #raw("mustBeFile(var)");
- #raw("mustBeFile(var, argPosition)");
- #raw("C++: void mustBeFile(const ArrayOfVector& args, int argPosition)");

== Input argument

/ var: a variable: a scalar string array or row vector characters array.
/ argPosition: a positive integer value: Position of input argument.

== Description

#strong[mustBeFile]; checks that input path refers to file or raise an error.


== Example

``````matlab
mustBeFile(tempdir())
 mustBeFile([nelsonroot(), '/etc/startup.m'])
``````


== See also

#nlink(<files_folders_functions:isfile>)[isfile];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
