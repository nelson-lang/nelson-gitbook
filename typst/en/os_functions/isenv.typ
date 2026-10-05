#import "nelson_help.typ": *

= isenv <os_functions:isenv>

Determine if an environment variable exists.

== Syntax

- #raw("tf = isenv(env_name)");

== Input argument

/ env\_name: string scalar, character vector, string array, cell array of character vectors: environment variable name.

== Output argument

/ tf: logical: true if the environment variable is defined, false otherwise.

== Description

#strong[isenv]; returns #strong[true]; if the environment variable #strong[env\_name]; is defined in the current process environment, even when its value is empty.

 If #strong[env\_name]; is a nonscalar string array or cell array of character vectors, then #strong[tf]; has the same dimensions as #strong[env\_name];.


== Example

``````matlab
setenv('MY_ENV_VAR', 'funvalue')
isenv('MY_ENV_VAR')
isenv('A_VARIABLE_THAT_DOES_NOT_EXIST')
isenv(["MY_ENV_VAR", "A_VARIABLE_THAT_DOES_NOT_EXIST"])

``````


== See also

#nlink(<os_functions:getenv>)[getenv];, #nlink(<os_functions:setenv>)[setenv];, #nlink(<os_functions:unsetenv>)[unsetenv];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
