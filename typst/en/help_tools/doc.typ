#import "nelson_help.typ": *

= doc <help_tools:doc>

Displays documentation.

== Syntax

- #raw("doc");
- #raw("doc function_name");
- #raw("doc('function_name')");

== Input argument

/ function\_name: a string: function name

== Description

#strong[doc]; launches help browser.

 #strong[doc('function\_name')]; displays the help about function designed by 'function\_name'.


== Examples

``````matlab
doc()
``````

``````matlab
doc sin
``````

``````matlab
doc is
``````


== See also

#nlink(<help_tools:help>)[help];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
