# builtin

Executes built-in function.

## Syntax

- builtin(function_name; x1, ..., xn)
- builtin(function_handle; x1, ..., xn)
- [r1, ..., rn] = builtin(function_name, x1, ..., xn)
- [r1, ..., rn] = builtin(function_handle, x1, ..., xn)

## Input argument

- function_name - a string: function name.
- function_handle - a function handle.
- x1, ..., xn - input arguments of the builtin.

## Output argument

- r1, ..., rn - output arguments returned by the builtin

## Description

  <p><b>builtin</b> calls the base built-in described by its name or function handle and input arguments.</p>

## Example

```matlab
a = builtin('cos', 0)
b = builtin(str2func('cos'), 0)
```

## See also

[feval](feval.md), [func2str](../function_handle/func2str.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
