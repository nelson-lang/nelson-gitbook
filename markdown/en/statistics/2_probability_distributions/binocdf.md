# binocdf

Binomial cumulative distribution function

## 📝 Syntax

- p = binocdf(x, n, prob)
- p = binocdf(x, n, prob, 'upper')

## 📥 Input argument

- x - real numeric array.
- n - nonnegative integer number of trials.
- prob - success probability in the range [0,1].

## 📤 Output argument

- p - cumulative probabilities or upper-tail probabilities.

## 📄 Description

<b>binocdf</b> computes lower-tail binomial probabilities by default and upper-tail probabilities with <b>'upper'</b>.

## 💡 Example

```matlab
x = 0:10;
p = binocdf(x, 10, 0.4);
q = binocdf(x, 10, 0.4, 'upper');
```

## 🔗 See also

[binopdf](../../statistics/binopdf.md), [binoinv](../../statistics/binoinv.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
