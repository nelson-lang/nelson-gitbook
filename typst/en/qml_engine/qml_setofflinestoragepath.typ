#import "nelson_help.typ": *

= qml\_setofflinestoragepath <qml_engine:qml_setofflinestoragepath>

Set the Property contains the directory to store offline user data.

== Syntax

- #raw("qml_setofflinestoragepath(path_data)");

== Input argument

/ path\_data: a string

== Description

Set the Property contains the directory to store offline user data.


== Example

``````matlab
qml_setofflinestoragepath(tmpdir())
 
``````


== See also

#nlink(<qml_engine:qml_offlinestoragepath>)[qml\_offlinestoragepath];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
