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

<p>
            normpdf computes the probability density function of the normal (Gaussian) distribution.
        </p>

<p>The general formula for the normal distribution PDF is:</p>

$$f(x|\mu,\sigma^2) = \frac{1}{\sigma\sqrt{2\pi}} e^{-\frac{(x-\mu)^2}{2\sigma^2}}$$

<p>where</p>

$$\mu$$

<p>is the mean and</p>

$$\sigma^2$$

<p>is the variance.</p>

<p>For the standard normal distribution (</p>

$$\mu = 0, \sigma = 1$$

<p>):</p>

$$\phi(x) = \frac{1}{\sqrt{2\pi}} e^{-\frac{x^2}{2}}$$

## Bibliography

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

[mean](../statistics/mean.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
