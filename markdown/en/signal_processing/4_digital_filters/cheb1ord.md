# cheb1ord

Minimum order for a Chebyshev type I filter.

## 📝 Syntax

- [N, Wn] = cheb1ord(Wp, Ws, Rp, Rs)

## 📥 Input argument

- Wp - passband edge frequency.
- Ws - stopband edge frequency.
- Rp - passband ripple in dB.
- Rs - stopband attenuation in dB.

## 📤 Output argument

- N - filter order.
- Wn - cutoff frequency.

## 📄 Description

<b>cheb1ord</b> estimates an order and cutoff for Chebyshev type I filter design.

## 💡 Example

```matlab

[n, wn] = cheb1ord(0.2, 0.3, 1, 40);

```

## 🔗 See also

[cheby1](../../signal_processing/cheby1.md), [buttord](../../signal_processing/buttord.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
