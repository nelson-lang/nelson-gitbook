# clearfun

Clear an built-in function.

## Syntax

- l = clearfun(function_name)
- l = clearfun(function_handle)

## Input argument

- function_name - a string: function name.
- function_handle - a function handle.

## Output argument

- l - a logical

## Description

  <p><b>clearfun</b> clears built-in.</p>

## Example

```matlab
cos(3)
a = clearfun('cos')
cos(3)

sin(3)
b = clearfun(str2func('sin'))
sin(3)
```

## See also

[feval](feval.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
