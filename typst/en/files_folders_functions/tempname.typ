#import "nelson_help.typ": *

= tempname <files_folders_functions:tempname>

Returns an unique temporary filename.

== Syntax

- #raw("f = tempname()");
- #raw("f = tempname(path)");

== Input argument

/ path: a string: an existing directory used instead of tempdir().

== Output argument

/ f: a string: an unique temporary filename.

== Description

Returns the name of an unique temporary filename.


== Example

``````matlab
r = tempname()
``````


== See also

#nlink(<files_folders_functions:mkdir>)[mkdir];, #nlink(<files_folders_functions:tempdir>)[tempdir];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
