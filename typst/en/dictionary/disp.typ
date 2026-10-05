#import "nelson_help.typ": *

= disp <dictionary:disp>

Display dictionary.

== Syntax

- #raw("disp(d)");

== Input argument

/ d: scalar: dictionary object.

== Description

#strong[disp(d)]; displays a summary of dictionary #strong[d];, including key and value types, number of entries, and visible key-value pairs.

 Unconfigured dictionaries and configured dictionaries with no entries are displayed with dedicated summary messages.


== Example

``````matlab
d = dictionary(["one", "two"], [1, 2]);
disp(d)
``````


== See also

#nlink(<dictionary:dictionary>)[dictionary];, #nlink(<display_format:disp>)[disp];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [dictionary classdef display],
)

// Author: Allan CORNET
