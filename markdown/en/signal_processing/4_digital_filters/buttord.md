# buttord

Minimum order for a Butterworth filter.

## 📝 Syntax

- [N, Wn] = buttord(Wp, Ws, Rp, Rs)

## 📥 Input argument

- Wp - passband edge frequency.
- Ws - stopband edge frequency.
- Rp - passband ripple in dB.
- Rs - stopband attenuation in dB.

## 📤 Output argument

- N - filter order.
- Wn - natural cutoff frequency.

## 📄 Description

<b>buttord</b> estimates the lowest Butterworth order satisfying the frequency specifications.

## 💡 Example

```matlab

[n, wn] = buttord(0.2, 0.3, 1, 40);

```

## 🔗 See also

[butter](../../signal_processing/butter.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
