#import "nelson_help.typ": *

= searchenv <os_functions:searchenv>

Searches for a file using environment paths.

== Syntax

- #raw("c = searchenv(filename, env_name)");

== Input argument

/ env\_name: a string: environment variable name.
/ filename: a string: filename searched in environment variable.

== Output argument

/ c: a cell of strings: full paths found in environment variable.

== Description

#strong[searchenv]; Searches for a file using environment paths.


== Example

``````matlab
[modules, paths] = getmodules();
env_value = '';
for p = paths
 env_value = [env_value, pathsep, p];
end

setenv('MY_PATH_ENV', env_value);
c = searchenv('loader.m', 'MY_PATH_ENV')
``````


== See also

#nlink(<os_functions:getenv>)[getenv];, #nlink(<os_functions:setenv>)[setenv];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
