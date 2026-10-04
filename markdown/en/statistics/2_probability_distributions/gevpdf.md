# gevpdf

Generalized extreme value probability density function

## 📝 Syntax

- y = gevpdf(x, k, sigma, mu)

## 📥 Input argument

- x - real array: values.
- k - real array: shape parameter.
- sigma - positive real array: scale parameter.
- mu - real array: location parameter.

## 📤 Output argument

- y - array: density values.

## 📄 Description

<b>gevpdf</b> computes generalized extreme value density values element by element.

## 💡 Example

```matlab
x = [-2 -1 0 1 2];
y = gevpdf(x, 0.2, 1, 0);
```

## 🔗 See also

[gevcdf](../../statistics/gevcdf.md), [gevinv](../../statistics/gevinv.md), [gevrnd](../../statistics/gevrnd.md), [gevstat](../../statistics/gevstat.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
