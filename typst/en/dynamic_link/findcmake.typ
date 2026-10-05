#import "nelson_help.typ": *

= findcmake <dynamic_link:findcmake>

find CMake path.

== Syntax

- #raw("[status, cmake_path] = findcmake()");

== Output argument

/ status: a logical.
/ cmake\_path: a string: path of CMake or ' '.

== Description

find CMake path.

 CMake is used internally to generate makefiles used to build dynamic libraries on fly.


== Example

``````matlab
[status, cmake_path] = findcmake()
``````


== See also

#nlink(<dynamic_link:cmake>)[cmake];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
