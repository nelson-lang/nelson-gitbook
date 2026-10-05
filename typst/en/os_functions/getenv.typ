#import "nelson_help.typ": *

= getenv <os_functions:getenv>

Get the value of an environment variable.

== Syntax

- #raw("s = getenv(env_name)");

== Input argument

/ env\_name: string scalar, character vector, string array, cell array of character vectors: environment variable name.

== Output argument

/ s: string scalar, character vector, string array, cell array of character vectors: the environment variable value.

== Description

#strong[getenv]; returns the value of an environment variable if it exists.

 If the environment variable does not exist, it will return ' '.

 If #strong[env\_name]; is a nonscalar cell array of character vectors or string array, then val has the same dimensions and type as#strong[env\_name];.

 If #strong[env\_name]; is a string scalar, then#strong[s]; is a character vector.


== Example

``````matlab
getenv('OS')
getenv('myenvvar')
getenv(["PATH"; "OS"])
getenv({'PATH'; 'OS'})

``````


== See also

#nlink(<os_functions:setenv>)[setenv];, #nlink(<os_functions:searchenv>)[searchenv];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
  [1.4.0], [Retrieve the values of several environment variables.],
)

// Author: Allan CORNET
