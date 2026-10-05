#import "nelson_help.typ": *

= audiorecorder\_set <audio:audiorecorder_set>

Set object or interface property to specified value.

== Syntax

- #raw("set(h, propertyname, value)");
- #raw("audiorecorder_set(h, propertyname, value)");
- #raw("h.propertyname = value");

== Input argument

/ h: a audiorecorder object.
/ propertyname: a string: the property's name of audiorecorder object.
/ value: a string, boolean, double ...

== Description

The function sets the property specified in the string propertyname to the given value.


== Example

``````matlab
recObj = audiorecorder()
recObj.Tag = 'my audio object'
``````


== See also

#nlink(<audio:audiorecorder_get>)[audiorecorder\_get];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.16.0], [initial version],
)

// Author: Allan CORNET
