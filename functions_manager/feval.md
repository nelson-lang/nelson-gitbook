



feval


feval

Evaluates function.

## Syntax

- feval(function_name; x1, ..., xn)
- feval(function_handle; x1, ..., xn)
- [r1, ..., rn] = feval(function_name, x1, ..., xn)
- [r1, ..., rn] = feval(function_handle, x1, ..., xn)

## Input argument

 - function_name - a string: function name.
 - function_handle - a function handle.
 - x1, ..., xn - input arguments of the function.

## Output argument

 - r1, ..., rn - output arguments returned by the function

## Description


  <p><b>function</b> calls the base function or built-in described by its name or function handle and input arguments.</p>


## Example

```Nelson
a = feval('cos', 0)
b = feval(str2func('cos'), 0)
```

## See also

builtin.md builtin, func2str.md func2str.
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



