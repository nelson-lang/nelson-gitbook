#import "nelson_help.typ": *

= audioplayer\_set <audio:audioplayer_set>

Set object or interface property to specified value.

== Syntax

- #raw("set(h, propertyname, value)");
- #raw("audioplayer_set(h, propertyname, value)");
- #raw("h.propertyname = value");

== Input argument

/ h: a audioplayer object.
/ propertyname: a string: the property's name of audioplayer object.
/ value: a string, boolean, double ...

== Description

The function sets the property specified in the string propertyname to the given value.


== Example

``````matlab
signal = rand(2, 44100) - 0.5;
playObj = audioplayer(signal, 44100, 16)
playObj.Tag = 'my audio object'
``````


== See also

#nlink(<audio:audioplayer_get>)[audioplayer\_get];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
