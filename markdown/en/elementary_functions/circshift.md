# circshift

Circular shift

## Syntax

- R = circshift(M, N)
- R = circshift(M, N, DIM)

## Input argument

- M - a variable
- N - shift
- DIM - dimension to operate

## Output argument

- R - result of 'circshift'.

## Description

<p>
            circshift computes circular shift.</p>

## Example

```matlab
x = [10, 20, 30; 40, 50, 60; 70, 80, 90];
circshift (x, 1
circshift (x, -2))
```

## See also

[repmat](../elementary_functions/repmat.md), [reshape](../elementary_functions/reshape.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
