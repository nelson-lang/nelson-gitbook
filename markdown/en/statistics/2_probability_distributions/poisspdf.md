# poisspdf

Poisson probability density function

## 📝 Syntax

- y = poisspdf(x, lambda)

## 📥 Input argument

- x - real numeric array.
- lambda - nonnegative rate parameter.

## 📤 Output argument

- y - probability mass values.

## 📄 Description


<b>poisspdf</b> computes Poisson probability mass values. Scalar inputs are expanded to match array inputs.

## 💡 Example



```matlab
x = 0:10;
y = poisspdf(x, 4);
```


## 🔗 See also

[poisscdf](../../statistics/2_probability_distributions/poisscdf.md), [poissinv](../../statistics/2_probability_distributions/poissinv.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
