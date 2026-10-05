#import "nelson_help.typ": *

= dlgenerategateway <dynamic_link:dlgenerategateway>

Generates C++ gateway.

== Syntax

- #raw("dlgenerategateway(destinationdir, module_name, builtin_table)");

== Input argument

/ destinationdir: a string: destination directory where is generated the gateway file.
/ module\_name: a string: module name exposed in Nelson.
/ builtin\_table: a cell composed of cell with {name exposed in Nelson, nb output arguments, nb input arguments}

== Description

#strong[dlgenerategateway]; generates a C++ gateway used by#strong[addmodule];.


== Example

See module skeleton for example

``````matlab
dlgenerategateway(tempdir(), 'module_skeleton', {{'cpp_sum', 1, 2}; {'cpp_sub', 2, 3}});
text = fileread([tempdir(), 'Gateway.cpp'])
``````


== See also

#nlink(<modules_manager:addmodule>)[addmodule];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
