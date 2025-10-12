# inputname

Get variable name of function input.

## Syntax

- s = inputname(argNumber)

## Input argument

- argNumber - a scalar, real, positive integer value: Number of function input argument

## Output argument

- s - character vector: variable name

## Description

<p>
            inputname get variable name of function input.</p>

<p>
                inputname is only useable within a function</p>

## Example

```matlab
function R = getinputname(varargin)
    R = string([]);
    for i = 1:nargin
        R = [R, string(inputname(i))];
    end
end
```

## See also

[nargin](../core/nargin.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
