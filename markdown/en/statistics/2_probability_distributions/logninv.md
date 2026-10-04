# logninv

Lognormal inverse cumulative distribution function

## 📝 Syntax

- x = logninv(p)
- x = logninv(p, mu, sigma)
- [x, xLo, xUp] = logninv(p, mu, sigma, pCov)

## 📥 Input argument

- p - probabilities in [0, 1].
- mu - real scalar or array: mean of logarithmic values.
- sigma - positive scalar or array: standard deviation of logarithmic values.
- pCov - 2-by-2 covariance matrix for confidence bounds.

## 📤 Output argument

- x - array: inverse cumulative values.
- xLo - array: lower confidence bounds.
- xUp - array: upper confidence bounds.

## 📄 Description

<b>logninv</b> evaluates lognormal inverse cumulative values element by element.

## 💡 Example

```matlab
p = [0.15865525393145707 0.5 0.8413447460685429];
x = logninv(p);
```

## 🔗 See also

[lognpdf](../../statistics/lognpdf.md), [logncdf](../../statistics/logncdf.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
