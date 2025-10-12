# polyval

Polynomial evaluation.

## Syntax

- y = polyval(p, x)

## Input argument

- p - vector: polynomial coefficients
- x - query points

## Output argument

- y - vector: Function values

## Description

<p>
            polyval evaluates polynomial at several points.</p>

## Example

```matlab

p = [3 2 1];
x = [5 7 9];
R = polyval(p, x)
```

## See also

[polyvalm](../polynomial_functions/polyvalm.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
