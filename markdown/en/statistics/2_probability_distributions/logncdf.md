# logncdf

Lognormal cumulative distribution function

## 📝 Syntax

- p = logncdf(x)
- p = logncdf(x, mu, sigma)
- [p, pLo, pUp] = logncdf(x, mu, sigma, pCov)
- p = logncdf(..., 'upper')

## 📥 Input argument

- x - real scalar or array: values.
- mu - real scalar or array: mean of logarithmic values.
- sigma - positive scalar or array: standard deviation of logarithmic values.
- pCov - 2-by-2 covariance matrix for confidence bounds.

## 📤 Output argument

- p - array: cumulative probabilities.
- pLo - array: lower confidence bounds.
- pUp - array: upper confidence bounds.

## 📄 Description


<b>logncdf</b> evaluates lognormal cumulative probabilities element by element.

## 💡 Example



```matlab
p = logncdf([0 1 exp(1)]);
q = logncdf(exp(10), 'upper');
```


## 🔗 See also

[lognpdf](../../statistics/2_probability_distributions/lognpdf.md), [logninv](../../statistics/2_probability_distributions/logninv.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
