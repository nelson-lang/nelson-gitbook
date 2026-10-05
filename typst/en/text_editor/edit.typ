#import "nelson_help.typ": *

= edit <text_editor:edit>

function editor.

== Syntax

- #raw("edit()");
- #raw("edit filename");
- #raw("edit function_name");

== Input argument

/ filename: a string: filename to open.
/ function\_name: a string: function name

== Description

#strong[edit]; opens a new file called untitled.m in the nelson's editor.

 If #strong[function\_name]; is the name of a defined nelson function #strong[edit(function\_name)]; try to open the associated file function\_name.m .

 #strong[edit(dirname)]; opens all .m available in #strong[dirname];.


== Example

``````matlab
edit('edit')
``````


== See also

#nlink(<interpreter:smartindent>)[smartindent];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
  [1.5.0], [edit(dirname) added],
)

// Author: Allan CORNET
