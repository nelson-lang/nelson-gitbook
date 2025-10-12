# corrcoef

Correlation coefficients

## Syntax

- R = corrcoef(M)

## Input argument

- M - a vector or matrix

## Output argument

- R - Correlation coefficients of M.

## Description

<p>
            R = corrcoef(M) returns the matrix of correlation coefficients for M, where the columns of M represent random variables and the rows represent observations.
        </p>

<p>The Pearson correlation coefficient between variables</p>

$$X$$

<p>and</p>

$$Y$$

<p>is:</p>

$$r_{XY} = \frac{\text{cov}(X,Y)}{\sigma_X \sigma_Y} = \frac{\sum_{i=1}^n (x_i - \bar{x})(y_i - \bar{y})}{\sqrt{\sum_{i=1}^n (x_i - \bar{x})^2 \sum_{i=1}^n (y_i - \bar{y})^2}}$$

<p>where</p>

$$\bar{x}$$

<p>and</p>

$$\bar{y}$$

<p>are the sample means, and</p>

$$\sigma_X$$

<p>,</p>

$$\sigma_Y$$

<p>are the standard deviations.</p>

<p>The correlation coefficient ranges from -1 to +1, where -1 indicates perfect negative correlation, +1 indicates perfect positive correlation, and 0 indicates no linear correlation.</p>

## Example

```matlab
M = [4 -7 3; 1 4 -2; 10 7 9];
R = corrcoef(M)
```

## See also

[cov](../statistics/cov.md), [mean](../statistics/mean.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
