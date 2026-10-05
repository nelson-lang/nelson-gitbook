# poisscdf

Poisson cumulative distribution function

## 📝 Syntax

- p = poisscdf(x, lambda)
- p = poisscdf(x, lambda, 'upper')

## 📥 Input argument

- x - real numeric array.
- lambda - nonnegative rate parameter.

## 📤 Output argument

- p - cumulative probabilities or upper-tail probabilities.

## 📄 Description


<b>poisscdf</b> computes lower-tail Poisson probabilities by default and upper-tail probabilities with <b>'upper'</b>.

## 💡 Example



```matlab
x = 0:10;
p = poisscdf(x, 4);
q = poisscdf(x, 4, 'upper');
```


## 🔗 See also

[poisspdf](../../statistics/2_probability_distributions/poisspdf.md), [poissinv](../../statistics/2_probability_distributions/poissinv.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
