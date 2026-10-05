#import "nelson_help.typ": *

= persistent <memory_manager:persistent>

Persistent variable.

== Syntax

- #raw("persistent variable_name");
- #raw("persistent('variable_name')");
- #raw("persistent variable_name1, ..., variable_nameN");

== Input argument

/ variable\_name: a string: variable name.

== Description

#strong[persistent]; defines a variable defined by his name #strong[variable\_name]; as persistent in a function.

 Before to use a persistent variable, it is necessary to initializ value.


== Examples

function to define:

``````matlab
function r = test_persistent_function()
 persistent calls;
 if isempty(calls)
    calls = 0;
 end
 disp(['nb calls to test_persistent_function: ', int2str(calls)]);
 r= calls;
 calls = calls + 1;
end
``````

calls test\_persistent\_function

``````matlab
for i = 1:30
  r = test_persistent_function();
end

``````


== See also

#nlink(<memory_manager:clear>)[clear];, #nlink(<memory_manager:who>)[who];, #nlink(<memory_manager:global>)[global];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
