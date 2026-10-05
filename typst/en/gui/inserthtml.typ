#import "nelson_help.typ": *

= inserthtml <gui:inserthtml>

Insert html in GUI console.

== Syntax

- #raw("inserthtml(html_txt)");

== Input argument

/ html\_txt: a string: html text

== Description

#strong[inserthtml]; inserts html code in GUI console.


== Example

``````matlab
inserthtml(markdown(fileread([nelsonroot(),'/CHANGELOG.md'])))
``````


== See also

#nlink(<help_tools:markdown>)[markdown];, #nlink(<stream_manager:fileread>)[fileread];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
