# isfunction_handle

Checks if value is a function handle.

## Syntax

- l = isfunction_handle(func_handle)

## Input argument

- func_handle - a function handle or other variable type.

## Output argument

- l - a logical

## Description

<p>
            <b>l = isfunction_handle(func_handle)</b> checks if <b>func_handle</b> is a function handle. Returning <b>true</b> if it is.</p>

## Example

```matlab
fh = str2func('cos')
isfunction_handle(fh)
fh = 3
isfunction_handle(fh)
```

## See also

[str2func](../function_handle/str2func.md), [func2str](../function_handle/func2str.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
