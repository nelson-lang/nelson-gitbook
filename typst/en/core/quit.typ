#import "nelson_help.typ": *

= quit <core:quit>

Terminate Nelson application

== Syntax

- #raw("quit");
- #raw("quit(status)");
- #raw("quit('force')");
- #raw("quit('cancel')");
- #raw("quit(status, 'force')");

== Description

#strong[quit]; terminates current Nelson application.

 #strong[quit('cancel')]; command is designed specifically for utilization within a finish.m script, preventing the termination process.

 Its functionality is restricted to this context.

 On the other hand,#strong[quit('force')]; disregards the finish.m script and immediately concludes Nelson.

 Employ this syntax when you need to override the finish script, ensuring a smooth exit in case the script poses obstacles to quitting.

 When you use #strong[quit(code)];, Nelson exits with the specified value as the exit code.

 If you append "force" to this command #strong[quit(code, 'force')]; it enforces an immediate termination, bypassing finish.m and incorporating the provided exit code.

 The exit code, denoted by "code" and specified as a signed integer, determines the status of Nelson termination.

 On Windows® platforms, Nelson furnishes exit codes within the range of INT\_MIN to INT\_MAX (-2147483647 to 2147483647).

 On Linux® and macOS platforms, Nelson confines exit codes to the range of 0 to 255.

 This distinction should be considered when interpreting or handling exit codes in Nelson scripts or processes.


== Example

Beware this example will close Nelson

``````matlab
quit
``````


== See also

#nlink(<core:exit>)[exit];, #nlink(<engine:finish>)[finish.m];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
