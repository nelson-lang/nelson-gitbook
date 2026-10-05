#import "nelson_help.typ": *

= gatewayinfo <modules_manager:gatewayinfo>

Returns information about an gateway.

== Syntax

- #raw("[gateway_name, builtin_list] = gatewayinfo(dyn_lib_path)");
- #raw("[gateway_name, builtin_list, state] = gatewayinfo(dyn_lib_path)");

== Input argument

/ dyn\_lib\_path: a string: path of a dynamic library prepared for Nelson.

== Output argument

/ gateway\_name: a string: gateway name
/ builtin\_list: a cell of strings: list of builtin in this gateway
/ state: a string: current gateway state, #strong[loaded];, #strong[lazy]; or #strong[not\_loaded];

== Description

#strong[\[gateway\_name, builtin\_list\] \= gatewayinfo(dyn\_lib\_path)]; get information about an gateway.

 The dynamic library must have a C entry point named #strong[GetGatewayDescriptor];.

 The optional third output reports whether the gateway is currently loaded, registered lazily, or not registered.

 Descriptor metadata can be reused from the unique cache file #strong[prefdir()\/gateway\_cache.json];; the cache entry is rebuilt automatically when the dynamic library changes.

 If file does not exist an error is raised.


== Example

``````matlab
[gateway_name, builtin_list, state] = gatewayinfo(modulepath('time', 'builtin'))

``````


== See also

#nlink(<modules_manager:addgateway>)[addgateway];, #nlink(<modules_manager:removegateway>)[removegateway];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
