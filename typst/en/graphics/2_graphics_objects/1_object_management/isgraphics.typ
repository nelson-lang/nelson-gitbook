#import "../../nelson_help.typ": *

= isgraphics <graphics:2_graphics_objects.1_object_management.isgraphics>

Check for graphics object.

== Syntax

- #raw("tf = isgraphics(GO)");
- #raw("tf = isgraphics(GO, type)");

== Input argument

/ GO: variable or graphics object.
/ type: a character vector or scalar string: 'axes', 'line', 'image', 'root', 'text', 'figure'.

== Output argument

/ tf: a scalar logical.

== Description

#strong[isgraphics]; checks is variable is an graphics object.


== Example

``````matlab
f = figure()
tf = isgraphics(f)
tf = isgraphics(f, 'figure')
tf = isgraphics(f, 'text')
f = 3
tf = isgraphics(f)
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
