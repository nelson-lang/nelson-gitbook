#import "nelson_help.typ": *

= QObject\_set <qml_engine:QObject_set>

Set a property value of an QObject handle (set).

== Syntax

- #raw("R = set(h, property_name, value)");

== Input argument

/ h: an QObject handle.
/ property\_name: a string: property name.
/ value: a variable.

== Output argument

/ R: user-settable properties and possible values for the object identified by h.

== Description

This routine can be used to modify the value of a specified property from an QObject object.


== Example

``````matlab
h = errordlg()
h.visible = false; % or set(h, 'visible', false)
h.windowTitle = 'new title' % or set(h, 'windowTitle', 'new title')
h.visible = true;
``````


== See also

#nlink(<handle:set>)[set];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
