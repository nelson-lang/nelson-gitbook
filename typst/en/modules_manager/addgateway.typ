#import "nelson_help.typ": *

= addgateway <modules_manager:addgateway>

Adds dynamically builtin at runtime.

== Syntax

- #raw("addgateway(dyn_lib_path)");
- #raw("addgateway(dyn_lib_path, mode)");
- #raw("addgateway(dyn_lib_path, module_name, mode)");

== Input argument

/ dyn\_lib\_path: a string: path of a dynamic library prepared for Nelson.
/ mode: a string: #strong[auto]; uses the gateway cache and lazy-loading when possible, #strong[loaded]; forces immediate loading.

== Description

#strong[addgateway(dyn\_lib\_path)]; adds dynamically builtin at runtime.

 The dynamic library must provide #strong[GetGatewayDescriptor]; and #strong[AddGateway];.

 By default, #strong[auto]; mode registers lazy builtins from the cache when possible. Use #strong[loaded]; to force the dynamic library to be loaded immediately.

 Gateway descriptors are stored in one cache file, #strong[prefdir()\/gateway\_cache.json];. Nelson rebuilds the cache entry automatically when the dynamic library changes.

 Set #strong[NELSON\_GATEWAY\_TRACE\=1]; to print gateway cache and loading decisions. Set #strong[NELSON\_GATEWAY\_FORCE\_LOADED\=1]; to force immediate loading for all gateways.

 If gateway was already loaded, no error or warning will be raised.


== Example

Add gateway for string module:

``````matlab
addgateway(modulepath('time', 'builtin'), 'loaded')
``````


== See also

#nlink(<modules_manager:removegateway>)[removegateway];, #nlink(<modules_manager:gatewayinfo>)[gatewayinfo];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
