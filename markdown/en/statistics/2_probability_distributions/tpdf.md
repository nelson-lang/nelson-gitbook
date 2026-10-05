# tpdf

Student t probability density function

## 📝 Syntax

- y = tpdf(x, v)

## 📥 Input argument

- x - real numeric array: values where the distribution is evaluated.
- v - positive real numeric array or scalar: degrees of freedom.

## 📤 Output argument

- y - probability density values.

## 📄 Description


<b>tpdf</b> computes Student t probability density values. Scalar inputs are expanded to match array inputs.

## 💡 Example



```matlab
x = [-3 -1 0 1 3];
y = tpdf(x, 5);
```


## 🔗 See also

[tcdf](../../statistics/2_probability_distributions/tcdf.md), [tinv](../../statistics/2_probability_distributions/tinv.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
