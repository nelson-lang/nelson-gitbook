# chi2cdf

Chi-square cumulative distribution function

## 📝 Syntax

- p = chi2cdf(x, v)
- p = chi2cdf(x, v, 'upper')

## 📥 Input argument

- x - real numeric array: values where the distribution is evaluated.
- v - positive real numeric array or scalar: degrees of freedom.

## 📤 Output argument

- p - cumulative probabilities or upper-tail probabilities.

## 📄 Description


<b>chi2cdf</b> computes lower-tail chi-square probabilities by default and upper-tail probabilities when <b>'upper'</b> is specified.

## 💡 Example



```matlab
x = [0.5 1 2 5];
p = chi2cdf(x, 4);
q = chi2cdf(x, 4, 'upper');
```


## 🔗 See also

[chi2pdf](../../statistics/2_probability_distributions/chi2pdf.md), [chi2inv](../../statistics/2_probability_distributions/chi2inv.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
