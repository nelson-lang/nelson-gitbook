# str2func

Returns a function handle from a string.

## Syntax

- func_handle = str2func(str)

## Input argument

- str - a string

## Output argument

- func_handle - a function handle.

## Description

<p>
            function_handle = str2func(str) returns a function handle function_handle for the function named in the string str
        </p>

<p>
            str function name or representation of anonymous function.</p>

## Examples

```matlab
fh = str2func('cos')
str = func2str(fh)
```

```matlab
myFind = str2func('@(x, y) find(x > y)')
M = rand(4, 3, 5);
[R, C] = myFind(M, 0.9)
```

## See also

[func2str](../function_handle/func2str.md), [isfunction_handle](../function_handle/isfunction_handle.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
