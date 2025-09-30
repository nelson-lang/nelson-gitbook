# sum

Sum of array elements.

## Syntax

- R = sum(M)
- R = sum(M, d)
- R = sum(M, d)
- R = sum(M, d, t)
- R = sum(M, d, t, f)

## Input argument

- M - an array of double, single, integers, ...
- d - dimension to operate along: positive integer scalar.
- t - a string: 'default', 'double' or 'native'.
- f - a string: 'includenan' or 'omitnan'.

## Output argument

- R - Sum of array elements.

## Description

<p>
            <b>R = sum(M)</b> returns the sum of the array elements of M.</p>

## Example

```matlab
M = uint8([10:30:70;20:30:80;30:30:90]);
R = sum(M, 'native')
```

## See also

[ndims](../data_analysis/ndims.md), [prod](../data_analysis/prod.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
