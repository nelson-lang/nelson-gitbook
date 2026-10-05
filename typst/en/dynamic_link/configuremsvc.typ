#import "nelson_help.typ": *

= configuremsvc <dynamic_link:configuremsvc>

Configure Nelson to use visual studio as default compiler

== Syntax

- #raw("[res, message] = configuremsvc()");

== Output argument

/ res: a logical: true if visual studio was found
/ message: a string: empty if visual studio was found or an error message.

== Description

By default, Nelson has no C\/C++ compiler defined as default on Windows.

 On others platforms, we will suppose that a C\/C++ compiler is always available and it is not required to call this function.

 On Windows, you need to call once #strong[configuremsvc]; if you want to use visual studio as default compiler.

 After each update of Visual studio, it will be required to call again#strong[configuremsvc];.


== Example

``````matlab
configuremsvc()
``````


== See also

#nlink(<dynamic_link:2_supported_compilers>)[Supported C\/C++ compilers];, #nlink(<dynamic_link:havecompiler>)[havecompiler];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
