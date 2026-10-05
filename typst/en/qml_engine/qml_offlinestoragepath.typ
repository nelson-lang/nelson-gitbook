#import "nelson_help.typ": *

= qml\_offlinestoragepath <qml_engine:qml_offlinestoragepath>

Get the Property contains the directory to store offline user data.

== Syntax

- #raw("p = qml_offlinestoragepath()");

== Input argument

/ path\_data: a string

== Output argument

/ p: a string: path.

== Description

Get the Property contains the directory to store offline user data.


== Example

``````matlab
qml_offlinestoragepath()
qml_setofflinestoragepath(tmpdir())
qml_offlinestoragepath()
``````


== See also

#nlink(<qml_engine:qml_setofflinestoragepath>)[qml\_setofflinestoragepath];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
