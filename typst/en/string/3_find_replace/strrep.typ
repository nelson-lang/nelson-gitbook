#import "../nelson_help.typ": *

= strrep <string:3_find_replace.strrep>

Replaces strings in another.

== Syntax

- #raw("res = strrep(str, old, new)");

== Input argument

/ str: a string, string array or cell of strings.
/ old: a string, string array or cell of strings to find.
/ new: a string, string array or cell of strings.

== Output argument

/ res: a string, string array or cell of strings.

== Description

#strong[replace]; replaces strings in another.

 #strong[replace]; and #strong[strrep]; replace strings but#strong[replace]; is recommended.


== Example

``````matlab
r = strrep('This is a string.', 'is', 'is not')
r = strrep({'cccc','ccbbcca'},{'cc','bb'},{'cc'})
r = strrep("This is a string.", "is", 'is not')
``````


== See also

#nlink(<string:3_find_replace.replace>)[replace];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
