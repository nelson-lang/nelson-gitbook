# chi2pdf

Chi-square probability density function

## 📝 Syntax

- y = chi2pdf(x, v)

## 📥 Input argument

- x - real numeric array: values where the density is evaluated.
- v - positive real numeric array or scalar: degrees of freedom.

## 📤 Output argument

- y - density values.

## 📄 Description


<b>chi2pdf</b> computes the chi-square probability density. Scalar inputs are expanded to match array inputs.

## 💡 Example



```matlab
x = [0.5 1 2 5];
y = chi2pdf(x, 4);
```


## 🔗 See also

[chi2cdf](../../statistics/2_probability_distributions/chi2cdf.md), [chi2inv](../../statistics/2_probability_distributions/chi2inv.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
