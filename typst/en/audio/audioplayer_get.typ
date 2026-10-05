#import "nelson_help.typ": *

= audioplayer\_get <audio:audioplayer_get>

Get property value from audioplayer interface.

== Syntax

- #raw("v = get(h, propertyname)");
- #raw("v = audioplayer_get(h, propertyname)");
- #raw("v = h.propertyname");

== Input argument

/ h: an audioplayer object.
/ propertyname: a string: the property's name of audioplayer object.

== Output argument

/ v: a nelson variable.

== Description

The function returns the value of the property specified in the string, propertyname.


== Example

``````matlab
signal = rand(2, 44100) - 0.5;
playObj = audioplayer(signal, 44100, 16)
playObj.Running

``````


== See also

#nlink(<audio:audioplayer_set>)[audioplayer\_set];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
