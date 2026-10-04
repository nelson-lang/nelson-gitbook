# evinv

Extreme value inverse cumulative distribution function

## 📝 Syntax

- x = evinv(p)
- x = evinv(p, mu)
- x = evinv(p, mu, sigma)

## 📥 Input argument

- p - scalar or array: probabilities.
- mu - real scalar or array: location parameter. Default is 0.
- sigma - positive scalar or array: scale parameter. Default is 1.

## 📤 Output argument

- x - array: inverse probability values.

## 📄 Description

<b>evinv</b> evaluates inverse extreme value cumulative probabilities element by element.

## 💡 Example

```matlab
p = [0.1 0.5 0.9];
x = evinv(p, 0, 1);
```

## 🔗 See also

[evpdf](../../statistics/evpdf.md), [evcdf](../../statistics/evcdf.md), [evrnd](../../statistics/evrnd.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
