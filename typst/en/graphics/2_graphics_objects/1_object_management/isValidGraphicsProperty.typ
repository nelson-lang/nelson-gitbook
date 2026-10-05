#import "../../nelson_help.typ": *

= isValidGraphicsProperty <graphics:2_graphics_objects.1_object_management.isValidGraphicsProperty>

Check property name is valid.

== Syntax

- #raw("tf = isValidGraphicsProperty(typename, propertyname)");

== Input argument

/ typename: a character vector or scalar string: 'axes', 'line', 'image', 'root', 'text', 'figure'.
/ propertyname: a character vector or scalar string: property name to check.

== Output argument

/ tf: a scalar logical.

== Description

#strong[isValidGraphicsProperty]; checks is property name is existing for graphical object class.

 This function is an helper to check input parameters graphical functions.


== Example

``````matlab
tf = isValidGraphicsProperty('figure', 'Type')
tf = isValidGraphicsProperty('figure', 'TypeType')
``````


== See also

#nlink(<handle:isprop>)[isprop];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
