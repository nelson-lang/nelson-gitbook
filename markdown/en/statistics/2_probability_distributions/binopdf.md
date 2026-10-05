# binopdf

Binomial probability density function

## 📝 Syntax

- y = binopdf(x, n, p)

## 📥 Input argument

- x - real numeric array.
- n - nonnegative integer number of trials.
- p - success probability in the range [0,1].

## 📤 Output argument

- y - probability mass values.

## 📄 Description


<b>binopdf</b> computes binomial probability mass values. Scalar inputs are expanded to match array inputs.

## 💡 Example



```matlab
x = 0:10;
y = binopdf(x, 10, 0.4);
```


## 🔗 See also

[binocdf](../../statistics/2_probability_distributions/binocdf.md), [binoinv](../../statistics/2_probability_distributions/binoinv.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
