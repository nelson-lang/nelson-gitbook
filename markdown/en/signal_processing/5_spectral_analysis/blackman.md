# blackman

Blackman window.

## 📝 Syntax

- c = blackman(m)
- c = blackman(m, opt)

## 📥 Input argument

- m - positive integer: window length
- opt - string: 'symmetric' (default) or 'periodic'

## 📤 Output argument

- c - column vector

## 📄 Description

<b>c = blackman(m)</b> computes coefficients of a Blackman window of length<b>m</b>.

## 📚 Bibliography

Oppenheim, Alan V., Ronald W. Schafer, and John R. Buck. Discrete-Time Signal Processing. Upper Saddle River, NJ: Prentice Hall, 1999, pp. 468–471.

## 💡 Example

```matlab
c = blackman(8)
c = blackman(8, 'periodic')
```

## 🔗 See also

[hamming](../../signal_processing/hamming.md), [hann](../../signal_processing/hann.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
