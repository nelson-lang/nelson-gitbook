#import "nelson_help.typ": *

= qt\_verbose <gui:qt_verbose>

show\/hide Qt debug message.

== Syntax

- #raw("r = qt_verbose()");
- #raw("p = qt_verbose(logical)");

== Input argument

/ logical: a logical: true to show messages, false to hide.

== Output argument

/ r: logical: current value
/ p: logical: previous value

== Description

#strong[qt\_verbose]; how\/hide Qt debug message.

 This function is useful to debug Qt and Qml.


== Example

``````matlab
h = qt_verbose()
``````


== See also

#nlink(<qml_engine:qml_loadfile>)[qml\_loadfile];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
