#import "nelson_help.typ": *

= relativepath <files_folders_functions:relativepath>

Returns the relative path from an actual path to the target path.

== Syntax

- #raw("r = relativepath(path_1, path_2)");

== Input argument

/ path\_1: a string: file or directory.
/ path\_2: a string: file or directory.

== Output argument

/ r: a string: relative path.

== Description

Returns the relative path from an actual path to the target path.


== Example

``````matlab
relativepath(nelsonroot(), [nelsonroot(), '/lgpl-3.0.md'])
relativepath(nelsonroot(), [nelsonroot(), '/etc/finish.m'])
relativepath([nelsonroot(),'/bin'], [nelsonroot(), '/lgpl-3.0.md'])
relativepath('.', '.')
relativepath('.', '..')
relativepath('..', '.')
``````


== See also

#nlink(<files_folders_functions:cd>)[cd];, #nlink(<files_folders_functions:dir>)[dir];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
