#import "nelson_help.typ": *

= rmpath <functions_manager:rmpath>

Remove directory from search path.

== Syntax

- #raw("rmpath(dirname)");
- #raw("previouspaths = rmpath(dirname)");

== Input argument

/ dirname: name of directory to remove

== Output argument

/ previouspaths: a string: path prior to removing the specified paths

== Description

#strong[rmpath]; removes directory from search path.


== Example

``````matlab
path
addpath(tempdir())
path
rmpath(tempdir())
path
``````


== See also

#nlink(<functions_manager:path>)[path];, #nlink(<functions_manager:addpath>)[addpath];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
