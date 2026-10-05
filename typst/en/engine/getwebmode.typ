#import "nelson_help.typ": *

= getwebmode <engine:getwebmode>

Returns the effective Nelson WebView launch mode.

== Syntax

- #raw("mode = getwebmode()");

== Output argument

/ mode: #strong['webview'];, #strong['server'];, or #strong['none'];.

== Description

#strong[getwebmode()]; reports how the current Nelson WebView desktop was effectively launched. It returns #strong['none']; outside an active web launch.


== Example

``````matlab
getwebmode()
``````


== See also

#nlink(<engine:getnelsonmode>)[getnelsonmode];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
