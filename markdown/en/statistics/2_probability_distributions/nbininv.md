# nbininv

Negative binomial inverse cumulative distribution function

## 📝 Syntax

- x = nbininv(y, r, p)

## 📥 Input argument

- y - probabilities in the range [0, 1].
- r - positive scalar or array: number of successes.
- p - scalar or array in the range [0, 1]: success probability.

## 📤 Output argument

- x - inverse values.

## 📄 Description

<b>nbininv</b> computes inverse cumulative probabilities for the negative binomial distribution.

## 💡 Example

```matlab
y = [0.1 0.5 0.9];
x = nbininv(y, 3, 0.4);
```

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
