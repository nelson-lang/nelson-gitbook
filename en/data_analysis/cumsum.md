# cumsum

Cumulative sum of array elements.

## Syntax

- R = cumsum(M)
- R = cumsum(M, d)
- R = cumsum(M, d, direction)
- R = cumsum(M, d, direction, nanflag)

## Input argument

- M - an array of double, single, integers, ...
- d - dimension to operate along: positive integer scalar.
- direction - a string: 'reverse', 'forward' (default).
- nanflag - a string: 'includenan' (default) or 'omitnan'.

## Output argument

- R - Cumulative Sum of array elements.

## Description

  <p><b>R = cumsum(M)</b> returns the cumulative sum of the array elements of M.</p>

## Example

```matlab
M = uint8([10:30:70;20:30:80;30:30:90]);
R = cumsum(M)
R = cumsum(M, 'reverse')
```

## See also

[ndims](ndims.html), [sum](sum.md), [cumprod](cumprod.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
