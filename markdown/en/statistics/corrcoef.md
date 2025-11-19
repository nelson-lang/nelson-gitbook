# corrcoef

Correlation coefficients

## 📝 Syntax

- R = corrcoef(M)

## 📥 Input argument

- M - a vector or matrix

## 📤 Output argument

- R - Correlation coefficients of M.

## 📄 Description

<b>R = corrcoef(M)</b> returns the matrix of correlation coefficients for<b>M</b>, where the columns of<b>M</b> represent random variables and the rows represent observations.

The Pearson correlation coefficient between variables
$$X$$

and
$$Y$$

is:
$$r_{XY} = \frac{\text{cov}(X,Y)}{\sigma_X \sigma_Y} = \frac{\sum_{i=1}^n (x_i - \bar{x})(y_i - \bar{y})}{\sqrt{\sum_{i=1}^n (x_i - \bar{x})^2 \sum_{i=1}^n (y_i - \bar{y})^2}}$$

where
$$\bar{x}$$

and
$$\bar{y}$$

are the sample means, and
$$\sigma_X$$

,
$$\sigma_Y$$

are the standard deviations.

The correlation coefficient ranges from -1 to +1, where -1 indicates perfect negative correlation, +1 indicates perfect positive correlation, and 0 indicates no linear correlation.

## 💡 Example

```matlab
M = [4 -7 3; 1 4 -2; 10 7 9];
R = corrcoef(M)
```

## 🔗 See also

[cov](../statistics/cov.md), [mean](../statistics/mean.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
