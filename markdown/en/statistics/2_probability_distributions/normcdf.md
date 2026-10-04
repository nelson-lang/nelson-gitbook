# normcdf

Normal cumulative distribution function

## 📝 Syntax

- p = normcdf(x)
- p = normcdf(x, mu, sigma)
- p = normcdf(..., 'upper')
- [p, pLo, pUp] = normcdf(x, mu, sigma, pCov)
- [p, pLo, pUp] = normcdf(x, mu, sigma, pCov, alpha)

## 📥 Input argument

- x - real scalar or array: values where the distribution is evaluated.
- mu - real scalar or array, 0 by default: mean.
- sigma - positive real scalar or array, 1 by default: standard deviation.
- pCov - 2-by-2 covariance matrix for the estimated parameters.
- alpha - scalar in (0,1), 0.05 by default: significance level for confidence bounds.

## 📤 Output argument

- p - scalar or array: cumulative probabilities.
- pLo - lower confidence bound.
- pUp - upper confidence bound.

## 📄 Description

<b>normcdf</b> evaluates the cumulative distribution function of the normal distribution.

Scalar inputs are expanded to match array inputs. If any distribution input uses single precision, the result uses single precision.

## 💡 Example

```matlab
x = [-2 -1 0 1 2];
p = normcdf(x);
upperTail = normcdf(x, 0, 1, 'upper');
[p, pLo, pUp] = normcdf(0, 0, 1, [0.04 0; 0 0.01]);
```

## 🔗 See also

[normpdf](../../statistics/normpdf.md), [norminv](../../statistics/norminv.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
