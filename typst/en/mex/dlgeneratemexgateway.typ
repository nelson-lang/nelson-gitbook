#import "nelson_help.typ": *

= dlgeneratemexgateway <mex:dlgeneratemexgateway>

Generates C MEX gateway (internal function).

== Syntax

- #raw("dlgeneratemexgateway(destinationdir, function_name)");

== Input argument

/ destinationdir: a string: destination directory where is generated the gateway file.
/ function\_name: a string: function name exposed in Nelson.
/ interleavedcomplex: a logical: use interleaved complex representation.

== Description

#strong[dlgeneratemexgateway]; generates a C MEX gateway used by#strong[mex]; (internal function).


== See also

#nlink(<mex:mex>)[mex];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
