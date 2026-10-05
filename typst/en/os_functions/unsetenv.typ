#import "nelson_help.typ": *

= unsetenv <os_functions:unsetenv>

Remove an environment variable.

== Syntax

- #raw("unsetenv(env_name)");

== Input argument

/ env\_name: string scalar or character vector: environment variable name.

== Description

#strong[unsetenv]; removes the environment variable #strong[env\_name]; from the current process environment.

 If the variable does not exist, #strong[unsetenv]; has no effect.


== Example

``````matlab
setenv('MY_ENV_VAR', 'funvalue')
isenv('MY_ENV_VAR')
unsetenv('MY_ENV_VAR')
isenv('MY_ENV_VAR')
``````


== See also

#nlink(<os_functions:setenv>)[setenv];, #nlink(<os_functions:getenv>)[getenv];, #nlink(<os_functions:isenv>)[isenv];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
