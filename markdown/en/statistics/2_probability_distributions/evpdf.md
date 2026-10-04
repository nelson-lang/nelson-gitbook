# evpdf

Extreme value probability density function

## 📝 Syntax

- y = evpdf(x)
- y = evpdf(x, mu)
- y = evpdf(x, mu, sigma)

## 📥 Input argument

- x - real scalar or array: values.
- mu - real scalar or array: location parameter. Default is 0.
- sigma - positive scalar or array: scale parameter. Default is 1.

## 📤 Output argument

- y - array: density values.

## 📄 Description

<b>evpdf</b> evaluates extreme value probability density values element by element.

## 💡 Example

```matlab
x = [-2 -1 0 1 2];
y = evpdf(x, 0, 1);
```

## 🔗 See also

[evcdf](../../statistics/evcdf.md), [evinv](../../statistics/evinv.md), [evrnd](../../statistics/evrnd.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
