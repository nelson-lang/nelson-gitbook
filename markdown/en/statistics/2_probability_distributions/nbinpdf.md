# nbinpdf

Negative binomial probability density function

## 📝 Syntax

- y = nbinpdf(x, r, p)

## 📥 Input argument

- x - real numeric array: number of failures.
- r - positive scalar or array: number of successes.
- p - scalar or array in the range [0, 1]: success probability.

## 📤 Output argument

- y - probability values.

## 📄 Description

<b>nbinpdf</b> computes probabilities for the negative binomial distribution.

## 💡 Example

```matlab
x = 0:5;
y = nbinpdf(x, 3, 0.4);
```

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
