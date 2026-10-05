#import "nelson_help.typ": *

= keyboard <interpreter:keyboard>

Stops script execution and enter in debug mode.

== Syntax

- #raw("keyboard()");

== Description

#strong[keyboard]; stops script execution and enter in debug mode. prompt is modified and displays debug level.


== Example

``````matlab
 keyboard()
``````


== See also

#nlink(<core:pause>)[pause];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
