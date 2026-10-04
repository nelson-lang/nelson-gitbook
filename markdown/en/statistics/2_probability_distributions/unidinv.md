# unidinv

Discrete uniform inverse cumulative distribution function

## 📝 Syntax

- x = unidinv(p, n)

## 📥 Input argument

- p - probabilities in the range [0, 1].
- n - positive integer scalar or array: maximum value.

## 📤 Output argument

- x - inverse values.

## 📄 Description

<b>unidinv</b> computes inverse cumulative probabilities for the discrete uniform distribution on integers from 1 to <b>n</b>.

## 💡 Example

```matlab
p = [0 0.1 0.5 1];
x = unidinv(p, 5);
```

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
