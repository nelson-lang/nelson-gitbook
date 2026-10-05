#import "nelson_help.typ": *

= import <functions_manager:import>

Import names from namespaces.

== Syntax

- #raw("import namespace.name");
- #raw("import namespace.className.staticMethodName");
- #raw("import namespace.*");
- #raw("import(namespace_name)");
- #raw("L = import()");

== Input argument

/ namespace.name: a dotted import name.
/ namespace.\*: a namespace wildcard import.
/ namespace\_name: a string scalar or character vector containing an import name.

== Output argument

/ L: a cell array of character vectors: current imports in insertion order.

== Description

#strong[import]; adds package functions, package class constructors, package static methods, or namespace wildcard imports to the current scope.

 Duplicate import names are ignored. Imports declared in a function or script apply to the whole function or script body. In the base scope, imports remain active until #strong[clear import];.


== Example

``````matlab
import nelson.classdefpkg.Options
L = import()
clear import

``````


== See also

#nlink(<memory_manager:clear>)[clear];, #nlink(<functions_manager:which>)[which];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
