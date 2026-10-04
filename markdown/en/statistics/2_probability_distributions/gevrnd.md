# gevrnd

Generalized extreme value random numbers

## 📝 Syntax

- r = gevrnd(k, sigma, mu)
- r = gevrnd(k, sigma, mu, sz)
- r = gevrnd(k, sigma, mu, sz1, ..., szN)

## 📥 Input argument

- k - real array: shape parameter.
- sigma - positive real array: scale parameter.
- mu - real array: location parameter.

## 📤 Output argument

- r - array: random values.

## 📄 Description

<b>gevrnd</b> generates generalized extreme value random values.

## 💡 Example

```matlab
r = gevrnd(0.2, 1, 0, 2, 3);
```

## 🔗 See also

[gevpdf](../../statistics/gevpdf.md), [gevcdf](../../statistics/gevcdf.md), [gevinv](../../statistics/gevinv.md), [gevstat](../../statistics/gevstat.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
