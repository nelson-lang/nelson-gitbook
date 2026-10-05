#import "nelson_help.typ": *

= path <functions_manager:path>

Modify or display Nelson’s load path.

== Syntax

- #raw("path()");
- #raw("p = path()");
- #raw("path(dirname)");
- #raw("path(path(), dirname)");
- #raw("path(dirname, path())");

== Input argument

/ dirname: a directory name or an suite of directory names using pathsep()

== Output argument

/ p: string: the specified paths

== Description

#strong[path]; modifies or displays Nelson’s load path.


== Example

``````matlab
path
p = path()
path(p, tempdir())
path
path(p)

``````


== See also

#nlink(<functions_manager:rmpath>)[rmpath];, #nlink(<functions_manager:addpath>)[addpath];, #nlink(<functions_manager:rehash>)[rehash];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
