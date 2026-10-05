#import "nelson_help.typ": *

= getdynlibext <dynamic_link:getdynlibext>

Returns the extension of dynamic libraries.

== Syntax

- #raw("ext = getdynlibext()");

== Output argument

/ ext: a string: dynamic library extension

== Description

#strong[getdynlibext()]; returns the extension of dynamic libraries.


== Example

``````matlab
getdynlibext()
``````


== See also

#nlink(<modules_manager:addgateway>)[addgateway];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
