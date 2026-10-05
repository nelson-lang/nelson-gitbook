#import "nelson_help.typ": *

= getweburl <engine:getweburl>

Returns the current Web GUI URL and port.

== Syntax

- #raw("[url, port] = getweburl()");

== Output argument

/ url: Current Web GUI URL, or an empty string outside an active web launch.
/ port: Current Web GUI port, or #strong[0]; outside an active web launch.

== Description

#strong[getweburl()]; returns the effective HTTP URL and port used by the current Web GUI session. A private webview launch still has an internal localhost port, but that URL is not printed at startup.


== Example

``````matlab
[url, port] = getweburl()
``````


== See also

#nlink(<engine:getwebmode>)[getwebmode];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
