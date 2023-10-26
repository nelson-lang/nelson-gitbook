# private functions

Private functions.

## Description

  <p>Private functions serve a valuable purpose when you wish to restrict the accessibility of a function.</p>
  <p>In numerous instances, a single function may require access to one or more auxiliary functions.</p>
  <p>when a solitary auxiliary function is utilized by multiple functions, it becomes necessary to relocate these auxiliary functions to a dedicated subdirectory named "private", positioned within the directory where the functions that require access to these auxiliary functions are located.</p>
  <p>To illustrate this concept, consider a function, let's call it <b>function1</b>, that relies on a helper function, <b>function2</b>, to perform a substantial portion of its tasks, as shown in below example.</p>
  <p>In this scenario, if the path to func1 is <b>directory/function1.m</b> and <b>function2</b> is found in the directory <b>directory/private/function2.m</b>, then <b>function2</b> is only accessible to functions within <b>directory</b>, such as <b>function1</b>.</p>

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

[addpath](addpath.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
