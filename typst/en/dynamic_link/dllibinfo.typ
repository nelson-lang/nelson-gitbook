#import "nelson_help.typ": *

= dllibinfo <dynamic_link:dllibinfo>

Returns list of available symbols in an shared library.

== Syntax

- #raw("c = dllibinfo(lib)");

== Input argument

/ lib: a dllib handle: library already loaded.

== Output argument

/ c: a cell of strings.

== Description

#strong[dllibinfo]; returns list of available symbols in an shared library.


== Example

``````matlab
lib = dlopen(modulepath('dynamic_link', 'builtin'))
c = dllibinfo(lib)
``````


== See also

#nlink(<dynamic_link:dlopen>)[dlopen];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
