# private functions

Private functions.

## Description

<p>Private functions serve a valuable purpose when you wish to restrict the accessibility of a function.</p>

<p>In numerous instances, a single function may require access to one or more auxiliary functions.</p>

<p>when a solitary auxiliary function is utilized by multiple functions, it becomes necessary to relocate these auxiliary functions to a dedicated subdirectory named "private", positioned within the directory where the functions that require access to these auxiliary functions are located.</p>

<p>To illustrate this concept, consider a function, let's call it function1, that relies on a helper function, function2, to perform a substantial portion of its tasks, as shown in below example.</p>

<p>In this scenario, if the path to func1 is directory/function1.m and function2 is found in the directory directory/private/function2.m, then function2 is only accessible to functions within directory, such as function1.</p>

## Examples

directory/function1.m

```matlab
function y = function1(x)
  y = function2(x)  +  1;
end

```

directory/private/function2.m

```matlab
function y = function2(x)
  y = 41;
end

```

## See also

[addpath](../functions_manager/addpath.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
