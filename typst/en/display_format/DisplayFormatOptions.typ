#import "nelson_help.typ": *

= nelson.display.DisplayFormatOptions <display_format:DisplayFormatOptions>

Display format options object.

== Syntax

- #raw("fmt = nelson.display.DisplayFormatOptions()");
- #raw("fmt = nelson.display.DisplayFormatOptions(Name, Value)");

== Input argument

/ Name, Value: name-value pairs for NumericFormat, LineSpacing, and TruncateMatrices

== Output argument

/ fmt: display format options object

== Description

#strong[nelson.display.DisplayFormatOptions]; stores display format options used by #strong[format];.

 The object has three public properties: #strong[NumericFormat];, #strong[LineSpacing];, and #strong[TruncateMatrices];.

 #strong[NumericFormat]; can be #strong[short];, #strong[long];, #strong[shortE];, #strong[longE];, #strong[shortG];, #strong[longG];, #strong[shortEng];, #strong[longEng];, #strong[+];, #strong[bank];, #strong[hex];, or #strong[rational];.

 #strong[LineSpacing]; can be #strong[compact]; or #strong[loose];.

 #strong[TruncateMatrices]; can be #strong[on]; or #strong[off];. In the graphical command window, #strong[on]; truncates large two-dimensional numeric, logical, and sparse matrices when their full display exceeds the visible area.


== Example

Save and restore display format.

``````matlab
oldFormat = format();
fmt = nelson.display.DisplayFormatOptions('NumericFormat', 'longE', 'LineSpacing', 'compact', 'TruncateMatrices', 'on');
format(fmt)
format(oldFormat)
``````


== See also

#nlink(<display_format:format>)[format];, #nlink(<display_format:disp>)[disp];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
