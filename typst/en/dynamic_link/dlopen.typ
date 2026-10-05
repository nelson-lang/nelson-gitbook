#import "nelson_help.typ": *

= dlopen <dynamic_link:dlopen>

Loads an dynamic library.

== Syntax

- #raw("lib = dlopen(libraryname)");

== Input argument

/ libraryname: a string: dynamic library name.

== Output argument

/ lib: a dllib handle.

== Description

#strong[dlopen]; loads an dynamic library.

 #strong[dlopen]; returns a #strong[dllib]; handle with#strong[Path]; property.

 #strong[get];, #strong[ismethod];, #strong[isprop];, #strong[disp];,#strong[delete];, #strong[isvalid];, #strong[used];, #strong[eq];, #strong[ne];,#strong[isequal];, #strong[horzcat];, #strong[vertcat]; are overloaded for#strong[dllib]; type.

 library is searched first in NELSON\_LIBRARY\_PATH and after in PATH on windows or LD\_LIBRARY\_PATH or DYLD\_LIBRARY\_PATH on linux or Macos.

 NELSON\_LIBRARY\_PATH can modified with #strong[setenv];.


== Example

``````matlab
path_1 = modulepath('dynamic_link', 'builtin');
lib1 = dlopen(path_1)
isvalid(lib1)
dlclose(lib1)
isvalid(lib1)
clear lib1
``````


== See also

#nlink(<dynamic_link:dlclose>)[dlclose];, #nlink(<dynamic_link:dllibisloaded>)[dllibisloaded];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
