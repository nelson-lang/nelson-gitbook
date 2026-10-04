# cheb2ord

Minimum order for a Chebyshev type II filter.

## 📝 Syntax

- [N, Wn] = cheb2ord(Wp, Ws, Rp, Rs)

## 📥 Input argument

- Wp - passband edge frequency or frequency pair.
- Ws - stopband edge frequency or frequency pair.
- Rp - passband ripple in dB.
- Rs - stopband attenuation in dB.

## 📤 Output argument

- N - filter order.
- Wn - stopband cutoff frequency for Chebyshev type II design.

## 📄 Description

<b>cheb2ord</b> estimates an order and cutoff for Chebyshev type II filter design.

## 💡 Example

```matlab

[n, wn] = cheb2ord(0.2, 0.3, 1, 40);

```

## 🔗 See also

[cheby2](../../signal_processing/cheby2.md), [cheb1ord](../../signal_processing/cheb1ord.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
