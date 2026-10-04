# betapdf

Beta probability density function

## 📝 Syntax

- y = betapdf(x, a, b)

## 📥 Input argument

- x - real numeric array.
- a - positive first shape parameter.
- b - positive second shape parameter.

## 📤 Output argument

- y - probability density values.

## 📄 Description

<b>betapdf</b> computes beta distribution density values. Scalar inputs are expanded to match array inputs.

## 💡 Example

```matlab
x = [0 0.1 0.5 0.9 1];
y = betapdf(x, 2, 5);
```

## 🔗 See also

[betacdf](../../statistics/betacdf.md), [betainv](../../statistics/betainv.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
