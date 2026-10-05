#import "nelson_help.typ": *

= libpointer\_setdatatype <dynamic_link:libpointer_setdatatype>

Set type of an libpointer handle.

== Syntax

- #raw("h.setdatatype(datatype)");

== Input argument

/ h: a libpointer handle.
/ datatype: a string: new datatype.

== Description

Set data type from libpointer object.


== Example

``````matlab
a = libpointer();
a.isNull()
a.setdatatype('doublePtr');
a.reshape(1, 1)
a.Value
``````


== See also

#nlink(<dynamic_link:libpointer>)[libpointer];, #nlink(<dynamic_link:C_datatype>)[C\/Nelson equivalent data types];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
