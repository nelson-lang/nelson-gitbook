#import "nelson_help.typ": *

= configuremingw <dynamic_link:configuremingw>

Configure Nelson to use MinGW as default C compiler

== Syntax

- #raw("[res, message] = configuremingw(mingw_path)");

== Input argument

/ mingw\_path: a string: mingw root path.

== Output argument

/ res: a logical: true if MinGW was found
/ message: a string: empty if MinGW was found or an error message.

== Description

By default, Nelson has no C\/C++ compiler defined as default on Windows.

 On others platforms, we will suppose that a C\/C++ compiler is always available and it is not required to call this function.

 On Windows, you need to call once #strong[configuremingw]; if you want to use MinGW as default C compiler.


== Example

``````matlab
configuremingw('c:/mingw')
``````


== See also

#nlink(<dynamic_link:2_supported_compilers>)[Supported C\/C++ compilers];, #nlink(<dynamic_link:havecompiler>)[havecompiler];, #nlink(<dynamic_link:configuremsvc>)[configuremsvc];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
