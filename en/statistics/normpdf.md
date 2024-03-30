# normpdf

Normal probability density function

## Syntax

- y = normpdf(x)
- y = normpdf(x, mu)
- y = normpdf(x, mu, sigma)

## Input argument

- x - scalar value or array: Values at which to evaluate pdf.
- mu - scalar value, 0 (default) or array: Mean.
- sigma - positive scalar value, 1 (default) or array of positive values: Standard deviation.

## Output argument

- y - scalar value or array: pdf values.

## Description

  <p><b>y = normpdf(x)</b> calculates the probability density function (pdf) of the standard normal distribution at the given values in <b>x</b>.</p>
  <p><b>y = normpdf(x, mu)</b> computes the pdf of the normal distribution with a mean of <b>mu</b> and a standard deviation of 1, evaluated at the provided values in <b>x</b>.</p>
  <p><b>y = normpdf(x, mu, sigma)</b> determines the pdf of the normal distribution with a mean of <b>mu</b> and a standard deviation of <b>sigma</b>, evaluated at the specified values in <b>x</b>.</p>

Bibliography

Evans, M., N. Hastings, and B. Peacock. Statistical Distributions. 2nd ed. Hoboken, NJ: John Wiley and Sons, Inc., 1993.

## Example

```matlab
x = [-0.2, -0.1, 0, 0.1, 0.2];
R = normpdf(x);

x = [-0.2, -0.1, 0, 0.1, 0.2];
R = normpdf(x, 2, 1);

R = normpdf(0, [-0.2, -0.1, 0, 0.1, 0.2], 1);
```

## See also

[mean](mean.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
