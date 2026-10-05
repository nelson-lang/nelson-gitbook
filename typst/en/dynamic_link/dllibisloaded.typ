#import "nelson_help.typ": *

= dllibisloaded <dynamic_link:dllibisloaded>

Checks if shared library is loaded.

== Syntax

- #raw("tf = dllibisloaded(libraryname)");
- #raw("[tf, lib] = dllibisloaded(libraryname)");

== Input argument

/ libraryname: a string: dynamic library name.

== Output argument

/ tf: a logical: true if library is already loaded.
/ lib: a dllib handle: library already loaded.

== Description

#strong[dllibisloaded]; returns if share library is already loaded.


== Example

``````matlab

		path_1 = modulepath('dynamic_link', 'builtin');
r = dllibisloaded(path_1)
lib1 = dlopen(path_1);
[r, lib2] = dllibisloaded(path_1)
isequal(lib1, lib2)
		
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
