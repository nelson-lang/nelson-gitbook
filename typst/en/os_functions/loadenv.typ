#import "nelson_help.typ": *

= loadenv <os_functions:loadenv>

Load environment variables defined in .env or regular text files.

== Syntax

- #raw("loadenv(filename)");
- #raw("D = loadenv(filename)");

== Input argument

/ filename: string scalar, character vector: environment filename.

== Output argument

/ s: dictionary: the environment variables and their values.

== Description

#strong[loadenv(filename)]; loads environment variables from a .env or plain text file by parsing one key-value pair per line and sets them as environment variables in the Nelson environment.

 #strong[D \= loadenv(filename)]; returns a dictionary containing the parsed key-value pairs. When an output argument is specified, loadenv does not modify the Nelson environment.


== Example

``````matlab
env_file = [modulepath('os_functions', 'tests'), '/sample.env'];
D = loadenv(env_file)
getenv('Key1')
loadenv(env_file)
getenv('Key1')
``````


== See also

#nlink(<os_functions:setenv>)[setenv];, #nlink(<os_functions:getenv>)[getenv];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.15.0], [initial version],
)

// Author: Allan CORNET
