#import "nelson_help.typ": *

= try <interpreter:try>

try\/catch statement.

== Syntax

- #raw("try, statements_1, catch, statements_2, end");
- #raw("try, statements_1, catch exception, statements_2, end");

== Description

#strong[try]; and#strong[catch]; statements are used for error handling and control in files.

 #strong[exception]; is an#strong[MException]; object that allows you to identify the error.

 The catch block assigns the current exception object to the variable in exception.


== Examples

try\/catch in a script file

``````matlab
try
error('an error')
catch
  disp('error caught')
end
``````

try\/catch in a script file

``````matlab
try
error('an error')
catch ME
  ME
end
``````


== See also

#nlink(<core:run>)[run];, #nlink(<core:execstr>)[execstr];, #nlink(<error_manager:MException>)[MException];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
