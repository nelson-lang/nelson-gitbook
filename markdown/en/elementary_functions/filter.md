# filter

1-D digital filter

## Syntax

- y = filter(b, a, x)

## Input argument

- b - Numerator coefficients of rational transfer function: vector.
- a - Denominator coefficients of rational transfer function: vector.
- x - Input data: matrix.

## Output argument

- y - Filtered data: matrix.

## Description

<p>The function filter(b, a, x) applies a rational transfer function to filter the input data array x.</p>

<p>This transfer function is defined by the coefficients of the numerator (b) and denominator (a).</p>

<p>If the first coefficient of a (a(1)) is not equal to 1, the filter normalizes the coefficients by a(1). It is crucial for a(1) to be nonzero.</p>

<p>When x is a vector, the function returns a vector of the same size as x containing the filtered data.</p>

## Example

```matlab
f = figure();
rng default
t = linspace(-pi,pi,100);
X = sin(t) + (0.33 * rand(size(t)));
windowSize = 7;
b = (1/windowSize)*ones(1,windowSize);
a = 1;
y = filter(b, a, X);
plot(t, X)
hold on
plot(t, y)
legend(_('Input Data'), _('Filtered Data'));

```

## See also

[conv](../data_analysis/conv.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
