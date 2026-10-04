# gevcdf

Generalized extreme value cumulative distribution function

## 📝 Syntax

- p = gevcdf(x, k, sigma, mu)
- p = gevcdf(x, k, sigma, mu, 'upper')

## 📥 Input argument

- x - real array: values.
- k - real array: shape parameter.
- sigma - positive real array: scale parameter.
- mu - real array: location parameter.

## 📤 Output argument

- p - array: cumulative probabilities.

## 📄 Description

<b>gevcdf</b> computes lower-tail probabilities by default and upper-tail probabilities with <b>'upper'</b>.

## 💡 Example

```matlab
x = [-2 -1 0 1 2];
p = gevcdf(x, 0.2, 1, 0);
```

## 🔗 See also

[gevpdf](../../statistics/gevpdf.md), [gevinv](../../statistics/gevinv.md), [gevrnd](../../statistics/gevrnd.md), [gevstat](../../statistics/gevstat.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
