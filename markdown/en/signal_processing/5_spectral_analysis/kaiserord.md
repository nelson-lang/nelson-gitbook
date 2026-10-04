# kaiserord

Kaiser window FIR design parameters.

## 📝 Syntax

- [N, Wn, beta, ftype] = kaiserord(F, A, DEV)
- [N, Wn, beta, ftype] = kaiserord(F, A, DEV, Fs)

## 📥 Input argument

- F - band edge frequencies.
- A - desired band amplitudes.
- DEV - allowed deviations.
- Fs - sample rate.

## 📤 Output argument

- N - estimated filter order.
- Wn - cutoff frequency.
- beta - Kaiser beta parameter.
- ftype - filter type string.

## 📄 Description

<b>kaiserord</b> estimates FIR design parameters for use with <b>fir1</b> and <b>kaiser</b>.

## 💡 Example

```matlab

[n, wn, beta, ftype] = kaiserord([0.2 0.3], [1 0], [0.01 0.001]);

```

## 🔗 See also

[kaiser](../../signal_processing/kaiser.md), [fir1](../../signal_processing/fir1.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
