#import "nelson_help.typ": *

= setenv <os_functions:setenv>

Set or remove an environment variable.

== Syntax

- #raw("setenv(env_name, env_value)");
- #raw("setenv(env_name)");

== Input argument

/ env\_name: a string: environment variable name.
/ env\_value: a string: environment variable value.

== Description

#strong[setenv]; sets the value of an environment variable.

 #strong[setenv(env\_name)]; removes the variable from the current process environment.

 #strong[setenv(env\_name, '')]; keeps the variable defined with an empty value.


== Example

``````matlab
setenv('MY_ENV_VAR', 'funvalue')
getenv('MY_ENV_VAR')
setenv('MY_ENV_VAR', '')
getenv('MY_ENV_VAR')
setenv('MY_ENV_VAR')
getenv('MY_ENV_VAR')
``````


== See also

#nlink(<os_functions:getenv>)[getenv];, #nlink(<os_functions:searchenv>)[searchenv];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
  [2.0.0], [environment variable removal added],
)

// Author: Allan CORNET
