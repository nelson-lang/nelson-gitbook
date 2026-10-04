# binoinv

Binomial inverse cumulative distribution function

## 📝 Syntax

- x = binoinv(y, n, p)

## 📥 Input argument

- y - real numeric array of probabilities.
- n - nonnegative integer number of trials.
- p - success probability in the range [0,1].

## 📤 Output argument

- x - smallest integer values whose cumulative probabilities are at least y.

## 📄 Description

<b>binoinv</b> computes inverse lower-tail binomial probabilities.

## 💡 Example

```matlab
y = [0.025 0.5 0.975];
x = binoinv(y, 10, 0.4);
```

## 🔗 See also

[binocdf](../../statistics/binocdf.md), [binopdf](../../statistics/binopdf.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
