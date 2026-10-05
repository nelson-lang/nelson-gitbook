#import "nelson_help.typ": *

= headcomments <help_tools:headcomments>

Display Nelson function header comments.

== Syntax

- #raw("headcomments(function_name)");
- #raw("ce = headcomments(function_name)");

== Input argument

/ function\_name: a string: function name or a .m filename.

== Output argument

/ ce: a cell of strings

== Description

#strong[head\_comments]; displays the function header comments.

 Comments are read from the associated .m file.

 Nelson predefined functions have no header comments.


== Example

``````matlab
comments = headcomments('cellstr'); md = markdown(comments);inserthtml(md)
``````


#align(center)[#image("headcomments.png")]

== See also

#nlink(<help_tools:doc>)[doc];, #nlink(<help_tools:markdown>)[markdown];, #nlink(<gui:inserthtml>)[inserthtml];, #nlink(<functions_manager:which>)[which];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
