# hamming

Hamming window.

## 📝 Syntax

- c = hamming(m)
- c = hamming(m, opt)

## 📥 Input argument

- m - positive integer: window length
- opt - string: 'symetric' (default) or 'periodic'

## 📤 Output argument

- c - column vector

## 📄 Description

<b>c = hamming(m)</b> computes coefficients of a Hamming window of length <b>m</b>.

## 📚 Bibliography

Oppenheim, Alan V., Ronald W. Schafer, and John R. Buck. Discrete-Time Signal Processing. Upper Saddle River, NJ: Prentice Hall, 1999.

## 💡 Example

```matlab
c = hamming(8)
c = hamming(8, 'periodic')
```

## 🔗 See also

[hann](../signal_processing/hann.md), [blackman](../signal_processing/blackman.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

## 👤 Author

Allan CORNET
