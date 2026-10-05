#import "../nelson_help.typ": *

= strfind <string:3_find_replace.strfind>

Find a string in another.

== Syntax

- #raw("occ = strfind(str, pattern)");
- #raw("occ = strfind(str, pattern,'ForceCellOutput', output)");

== Input argument

/ str: a string or cell of strings.
/ pattern: a string to find.
/ output: a logical.

== Output argument

/ occ: a cell or matrix of integer values: occurrences position.

== Description

#strong[strfind]; finds a string in another.


== Example

``````matlab

str = 'To make a mountain out of a molehill';
k = strfind (str, 'in')
k= strfind(str, ' ')
k = strfind ({'abababada', 'beabebe', 'ab'}, 'aba')

A = {'Nel', 'son'; 'Toolboxes', 'Modules'}
k = strfind(A, 'o')

str = 'No pain no gain.';
k = strfind(str,'in','ForceCellOutput',true)
k = strfind(str,'in','ForceCellOutput',false)

``````


== See also

#nlink(<string:8_compare_text.strcmp>)[strcmp];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
