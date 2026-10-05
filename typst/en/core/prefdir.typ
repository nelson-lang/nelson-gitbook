#import "nelson_help.typ": *

= prefdir <core:prefdir>

Return the preferences directory used by Nelson.

== Syntax

- #raw("pref_path = prefdir");

== Output argument

/ pref\_path: a string: the preferences directory

== Description

#strong[pref\_path \= prefdir()]; returns the preferences directory used by Nelson.


== Example

an example

``````matlab
cd(prefdir)
``````


== See also

#nlink(<files_folders_functions:cd>)[cd];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
