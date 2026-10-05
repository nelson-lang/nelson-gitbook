# tinv

Student t inverse cumulative distribution function

## 📝 Syntax

- x = tinv(p, v)

## 📥 Input argument

- p - real numeric array: probabilities.
- v - positive real numeric array or scalar: degrees of freedom.

## 📤 Output argument

- x - inverse lower-tail Student t values.

## 📄 Description


<b>tinv</b> computes inverse lower-tail Student t probabilities.

## 💡 Example



```matlab
p = [0.025 0.5 0.975];
x = tinv(p, 5);
```


## 🔗 See also

[tcdf](../../statistics/2_probability_distributions/tcdf.md), [tpdf](../../statistics/2_probability_distributions/tpdf.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
