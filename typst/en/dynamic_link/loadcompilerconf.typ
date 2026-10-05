#import "nelson_help.typ": *

= loadcompilerconf <dynamic_link:loadcompilerconf>

load compiler configuration.

== Syntax

- #raw("res = loadcompilerconf()");
- #raw("[res, compiler] = loadcompilerconf()");

== Output argument

/ res: a logical
/ compiler: a string: 'msvc', 'mingw', 'unix' or ' '

== Description

#strong[loadcompilerconf]; returns true if compiler was previously configured with#strong[configuremsvc]; or #strong[configuremingw];.

 #strong[loadcompilerconf]; returns always false on others platforms and 'unix' as compiler.

 #strong[loadcompilerconf]; is called at Nelson's startup.


== See also

#nlink(<dynamic_link:removecompilerconf>)[removecompilerconf];, #nlink(<dynamic_link:configuremingw>)[configuremingw];, #nlink(<dynamic_link:configuremsvc>)[configuremsvc];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
