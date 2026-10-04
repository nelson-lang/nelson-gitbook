# chi2inv

Chi-square inverse cumulative distribution function

## 📝 Syntax

- x = chi2inv(p, v)

## 📥 Input argument

- p - real numeric array of probabilities in [0,1].
- v - positive real numeric array or scalar: degrees of freedom.

## 📤 Output argument

- x - inverse cumulative values.

## 📄 Description

<b>chi2inv</b> computes inverse lower-tail chi-square probabilities.

## 💡 Example

```matlab
p = [0.025 0.5 0.975];
x = chi2inv(p, 4);
```

## 🔗 See also

[chi2cdf](../../statistics/chi2cdf.md), [chi2pdf](../../statistics/chi2pdf.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
