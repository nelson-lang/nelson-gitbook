# tcdf

Student t cumulative distribution function

## 📝 Syntax

- p = tcdf(x, v)
- p = tcdf(x, v, 'upper')

## 📥 Input argument

- x - real numeric array: values where the distribution is evaluated.
- v - positive real numeric array or scalar: degrees of freedom.

## 📤 Output argument

- p - cumulative probabilities or upper-tail probabilities.

## 📄 Description

<b>tcdf</b> computes lower-tail Student t probabilities by default and upper-tail probabilities when <b>'upper'</b> is specified.

## 💡 Example

```matlab
x = [-3 -1 0 1 3];
p = tcdf(x, 5);
q = tcdf(x, 5, 'upper');
```

## 🔗 See also

[tpdf](../../statistics/tpdf.md), [tinv](../../statistics/tinv.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
