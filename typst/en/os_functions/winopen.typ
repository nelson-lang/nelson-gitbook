#import "nelson_help.typ": *

= winopen <os_functions:winopen>

Open file in appropriate application (Windows only).

== Syntax

- #raw("winopen(filename)");

== Input argument

/ command: a string: command to execute in command shell.

== Description

#strong[winopen(filename)]; opens filename in the appropriate Microsoft Windows application.

 The winopen function uses the appropriate Windows shell command, and performs the same action as if you double-click the file in the Windows Explorer.

 If filename is not in the current directory, specify the absolute path for filename.


== See also

#nlink(<os_functions:system>)[system];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
