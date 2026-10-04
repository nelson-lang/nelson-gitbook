# betacdf

Beta cumulative distribution function

## 📝 Syntax

- p = betacdf(x, a, b)
- p = betacdf(x, a, b, 'upper')

## 📥 Input argument

- x - real numeric array.
- a - positive first shape parameter.
- b - positive second shape parameter.

## 📤 Output argument

- p - cumulative probabilities or upper-tail probabilities.

## 📄 Description

<b>betacdf</b> computes lower-tail beta probabilities by default and upper-tail probabilities with <b>'upper'</b>.

## 💡 Example

```matlab
x = [0 0.1 0.5 0.9 1];
p = betacdf(x, 2, 5);
q = betacdf(x, 2, 5, 'upper');
```

## 🔗 See also

[betapdf](../../statistics/betapdf.md), [betainv](../../statistics/betainv.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
