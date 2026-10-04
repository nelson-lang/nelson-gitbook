# ellipord

Minimum order for an elliptic filter.

## 📝 Syntax

- [N, Wn] = ellipord(Wp, Ws, Rp, Rs)

## 📥 Input argument

- Wp - passband edge frequency.
- Ws - stopband edge frequency.
- Rp - passband ripple in dB.
- Rs - stopband attenuation in dB.

## 📤 Output argument

- N - filter order.
- Wn - cutoff frequency.

## 📄 Description

<b>ellipord</b> estimates an order and cutoff for elliptic filter design.

## 💡 Example

```matlab

[n, wn] = ellipord(0.2, 0.3, 1, 40);

```

## 🔗 See also

[ellip](../../signal_processing/ellip.md), [buttord](../../signal_processing/buttord.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
