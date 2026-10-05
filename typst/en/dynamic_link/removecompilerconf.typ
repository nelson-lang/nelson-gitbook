#import "nelson_help.typ": *

= removecompilerconf <dynamic_link:removecompilerconf>

Remove used compiler configuration (on Windows).

== Syntax

- #raw("res = removecompilerconf()");

== Output argument

/ res: a logical

== Description

#strong[removecompilerconf]; returns true if compiler was previously configured with#strong[configuremsvc]; or #strong[configuremingw];.

 #strong[removecompilerconf]; returns always true on others platforms.


== See also

#nlink(<dynamic_link:configuremsvc>)[configuremsvc];, #nlink(<dynamic_link:configuremingw>)[configuremingw];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
