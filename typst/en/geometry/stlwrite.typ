#import "nelson_help.typ": *

= stlwrite <geometry:stlwrite>

Create STL file from triangulation

== Syntax

- #raw("stlwrite(TR, filename)");
- #raw("stlwrite(TR, filename, fileformat)");
- #raw("stlwrite(TR, filename, ..., Name, Value)");

== Description

#strong[stlwrite]; writes a #strong[triangulation]; object to a binary STL file by default.

 #strong[fileformat]; can be #strong['binary']; or #strong['text'];. Use #strong['Attribute']; with binary files to write one #strong[uint16]; value per triangle. Use #strong['SolidIndex']; with text files to group triangles into solid sections.


== Example

Write a text STL file.

``````matlab
P = [0 0; 1 0; 0 1];
T = [1 2 3];
TR = triangulation(T, P);
filename = [tempdir(), 'simple_text.stl'];
stlwrite(TR, filename, 'text')
``````


== See also

#nlink(<geometry:stlread>)[stlread];, #nlink(<geometry:triangulation>)[triangulation];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [Initial version.],
)

// Author: Allan CORNET
