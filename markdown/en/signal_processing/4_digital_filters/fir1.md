# fir1

Window-based FIR filter design.

## 📝 Syntax

- B = fir1(N, Wn)
- B = fir1(N, Wn, type)
- B = fir1(N, Wn, window)

## 📥 Input argument

- N - filter order.
- Wn - normalized cutoff frequency or frequency pair.
- type - filter type such as 'low', 'high', 'bandpass', or 'stop'.
- window - window vector of length N + 1.

## 📤 Output argument

- B - FIR numerator coefficients.

## 📄 Description


<b>fir1</b> designs a linear-phase FIR filter by windowing an ideal impulse response.

## 💡 Example



```matlab

b = fir1(16, 0.25);

```


## 🔗 See also

[freqz](../../signal_processing/4_digital_filters/freqz.md), [kaiser](../../signal_processing/5_spectral_analysis/kaiser.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
