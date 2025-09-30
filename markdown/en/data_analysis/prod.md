# prod

Product of array elements.

## Syntax

- R = prod(M)
- R = prod(M, d)
- R = prod(M, d)
- R = prod(M, d, t)
- R = prod(M, d, t, f)

## Input argument

- M - an array of double, single, integers, ...
- d - dimension to operate along: positive integer scalar.
- t - a string: 'default', 'double' or 'native'.
- f - a string: 'includenan' or 'omitnan'.

## Output argument

- R - Product of array elements.

## Description

<p>
            <b>R = prod(M)</b> returns the product of the array elements of M.</p>

## Example

```matlab
M = uint8([10:30:70;20:30:80;30:30:90]);
R = prod(M, 'native')
```

## See also

[ndims](../data_analysis/ndims.md), [sum](../data_analysis/sum.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
