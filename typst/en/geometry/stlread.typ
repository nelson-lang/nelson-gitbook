#import "nelson_help.typ": *

= stlread <geometry:stlread>

Create triangulation from STL file

== Syntax

- #raw("TR = stlread(filename)");
- #raw("[TR, fileformat, attributes, solidID] = stlread(filename)");

== Description

#strong[stlread]; reads binary or text STL files and returns a #strong[triangulation]; object.

 #strong[fileformat]; is #strong['binary']; or #strong['text'];. For binary files, #strong[attributes]; is a #strong[uint16]; column vector. For text files, #strong[attributes]; is an empty #strong[uint16]; matrix with one row per triangle. #strong[solidID]; is a column vector identifying the solid group of each triangle.


== Example

Write and read a simple STL file.

``````matlab
P = [0 0 0; 1 0 0; 0 1 0];
T = [1 2 3];
TR = triangulation(T, P);
filename = [tempdir(), 'simple.stl'];
stlwrite(TR, filename);
[TR2, fileformat, attributes, solidID] = stlread(filename)
``````


== See also

#nlink(<geometry:stlwrite>)[stlwrite];, #nlink(<geometry:triangulation>)[triangulation];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [Initial version.],
)

// Author: Allan CORNET
