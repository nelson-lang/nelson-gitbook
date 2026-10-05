# finv

F inverse cumulative distribution function

## 📝 Syntax

- x = finv(p, v1, v2)

## 📥 Input argument

- p - real numeric array: probabilities.
- v1 - positive real numeric array or scalar: numerator degrees of freedom.
- v2 - positive real numeric array or scalar: denominator degrees of freedom.

## 📤 Output argument

- x - inverse lower-tail F distribution values.

## 📄 Description


<b>finv</b> computes inverse lower-tail F distribution probabilities.

## 💡 Example



```matlab
p = [0.025 0.5 0.975];
x = finv(p, 5, 20);
```


## 🔗 See also

[fcdf](../../statistics/2_probability_distributions/fcdf.md), [fpdf](../../statistics/2_probability_distributions/fpdf.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
