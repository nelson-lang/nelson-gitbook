#import "nelson_help.typ": *

= private functions <functions_manager:private_functions>

Private functions.

== Description

Private functions serve a valuable purpose when you wish to restrict the accessibility of a function.

 In numerous instances, a single function may require access to one or more auxiliary functions.

 when a single auxiliary function is used by multiple functions, place the auxiliary functions in a subdirectory named "private" inside the directory that contains the functions requiring access to them.

 To illustrate this concept, consider a function, let's call it #strong[function1];, that relies on a helper function, #strong[function2];, to perform a substantial portion of its tasks, as shown in below example.

 In this scenario, if the path to func1 is #strong[directory\/function1.m]; and #strong[function2]; is found in the directory #strong[directory\/private\/function2.m];, then #strong[function2]; is only accessible to functions within #strong[directory];, such as #strong[function1];.


== Examples

directory\/function1.m

``````matlab
function y = function1(x)
  y = function2(x)  +  1;
end

``````

directory\/private\/function2.m

``````matlab
function y = function2(x)
  y = 41;
end

``````


== See also

#nlink(<functions_manager:addpath>)[addpath];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
