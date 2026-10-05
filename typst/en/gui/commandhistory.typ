#import "nelson_help.typ": *

= commandhistory <gui:commandhistory>

Command History

== Syntax

- #raw("commandhistory");

== Description

The Command History window presents a record of statements executed in both the current and past Nelson sessions.

 Each session is timestamped with the short date format of your operating system, followed by the corresponding statements.

 Entries within the Command History window can be selected for various actions and operations.

 
#align(center)[#image("commandhistory.png")]



== See also

#nlink(<gui:workspace>)[workspace];, #nlink(<gui:filebrowser>)[filebrowser];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.1.0], [initial version],
)

// Author: Allan CORNET
