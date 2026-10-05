#import "nelson_help.typ": *

= format <display_format:format>

Display format and number printing.

== Syntax

- #raw("fmt = format()");
- #raw("format()");
- #raw("format('default')");
- #raw("format(new_style)");
- #raw("format('truncateMatrices', 'on')");
- #raw("format('truncateMatrices', 'off')");
- #raw("format(fmt)");

== Input argument

/ new\_style: a string or character vector
/ fmt: a nelson.display.DisplayFormatOptions object

== Output argument

/ fmt: nelson.display.DisplayFormatOptions object: current display format

== Description

#strong[format(new\_style)]; changes the display format and number printing of the current session.

 #strong[format('default')]; resets to the default format (short, loose, truncateMatrices on).

 #strong[fmt \= format()]; returns a #strong[nelson.display.DisplayFormatOptions]; object with the current #strong[NumericFormat];, #strong[LineSpacing];, and #strong[TruncateMatrices]; values.

 #strong[format(fmt)]; restores the display format stored in a #strong[nelson.display.DisplayFormatOptions]; object.

 

 Numeric formats supported:

 #strong[short];

 #strong[long];

 #strong[shortE];

 #strong[longE];

 #strong[shortG];

 #strong[longG];

 #strong[shortEng];

 #strong[longEng];

 #strong[+];

 #strong[bank];

 #strong[rational];

 #strong[hex];

 

 Line spacing formats supported:

 #strong[loose];

 #strong[compact];

 

 Matrix truncation formats supported:

 #strong[format('truncateMatrices', 'on')];

 #strong[format('truncateMatrices', 'off')];


== Example

Save and restore display format.

``````matlab
current_style = format()
pi
format('longE')
pi
format('compact')
pi
format(current_style)
pi
``````


== See also

#nlink(<display_format:DisplayFormatOptions>)[nelson.display.DisplayFormatOptions];, #nlink(<display_format:disp>)[disp];, #nlink(<display_format:display>)[display];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
  [2.0.0], [format returns and accepts nelson.display.DisplayFormatOptions classdef objects.],
)

// Author: Allan CORNET
