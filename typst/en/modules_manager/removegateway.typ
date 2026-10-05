#import "nelson_help.typ": *

= removegateway <modules_manager:removegateway>

Removes dynamically builtin at runtime.

== Syntax

- #raw("removegateway(dyn_lib_path)");

== Input argument

/ dyn\_lib\_path: a string: path of a dynamic library prepared for Nelson.

== Description

#strong[removegateway(dyn\_lib\_path)]; removes dynamically builtin at runtime.

 The dynamic library loaded must have at least an C entry point#strong[RemoveGateway];.

 If gateway was not loaded, no error or warning will be raised. If file does not exist an error is raised.


== Example

removes time builtin

``````matlab
calendar
removegateway(modulepath('time', 'builtin'))
calendar
``````


== See also

#nlink(<modules_manager:addgateway>)[addgateway];, #nlink(<modules_manager:gatewayinfo>)[gatewayinfo];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
