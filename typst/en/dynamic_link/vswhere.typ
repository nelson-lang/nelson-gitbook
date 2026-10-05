#import "nelson_help.typ": *

= vswhere <dynamic_link:vswhere>

Locate Visual Studio 2017, 2019 and newer installations

== Syntax

- #raw("res = vswhere()");

== Output argument

/ res: a struct with information about Visual studio

== Description

#strong[vswhere]; locates Visual Studio installations.

 #strong[vswhere]; is currently only implemented on Windows platform.


== Bibliography

https:\/\/github.com\/Microsoft\/vswhere

== Example

``````matlab
vswhere()
``````


== See also

#nlink(<dynamic_link:havecompiler>)[havecompiler];, #nlink(<dynamic_link:2_supported_compilers>)[Supported C\/C++ compilers];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
