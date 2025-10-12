# mean

Mean of array elements.

## Syntax

- R = mean(M)
- R = mean(M, d)
- R = mean(M, 'all')
- R = mean(M, d, t)
- R = mean(M, 'all', t)
- R = mean(M, d, t, f)
- R = mean(M, 'all', t, f)

## Input argument

- M - an array of double, single, integers, ...
- d - dimension to operate along: positive integer scalar.
- t - a string: 'default', 'double' or 'native'.
- f - a string: 'includenan' or 'omitnan'.

## Output argument

- R - Mean of array elements.

## Description

<p>
            R = mean(M) returns the mean (average) of the array elements of M.
        </p>

<p>The arithmetic mean of a set of values</p>

$$x_1, x_2, \ldots, x_n$$

<p>is defined as:</p>

$$\bar{x} = \frac{1}{n} \sum_{i=1}^{n} x_i$$

<p>where</p>

$$n$$

<p>is the number of elements.</p>

## Example

```matlab
M = uint8([10:30:70;20:30:80;30:30:90]);
R = mean(M, 'native')
```

## See also

[sum](../data_analysis/sum.md), [prod](../data_analysis/prod.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
