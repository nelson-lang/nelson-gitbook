#import "nelson_help.typ": *

= audiorecorder\_get <audio:audiorecorder_get>

Get property value from audiorecorder interface.

== Syntax

- #raw("v = get(h, propertyname)");
- #raw("v = audiorecorder_get(h, propertyname)");
- #raw("v = h.propertyname");

== Input argument

/ h: an audiorecorder object.
/ propertyname: a string: the property's name of audiorecorder object.

== Output argument

/ v: a nelson variable.

== Description

The function returns the value of the property specified in the string, propertyname.


== Example

``````matlab
recObj = audiorecorder()
recObj.Running

``````


== See also

#nlink(<audio:audiorecorder_set>)[audiorecorder\_set];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.16.0], [initial version],
)

// Author: Allan CORNET
