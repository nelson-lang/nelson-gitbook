# tfe

Transfer function estimate compatibility wrapper.

## 📝 Syntax

- [Hv, f] = tfe(u, y)
- [Hv, f, Puu, Pyy, Puy, coh, Sv] = tfe(u, y, nfft, fs)

## 📥 Input argument

- u - input signal vector.
- y - output signal vector.
- nfft - FFT length.
- fs - sample rate.

## 📤 Output argument

- Hv - transfer function estimate.
- f - frequency vector.
- Puu, Pyy, Puy - input, output, and cross power spectra.
- coh - magnitude-squared coherence estimate.
- Sv - rough standard-deviation estimate for <b>Hv</b>.

## 📄 Description


<b>tfe</b> estimates a transfer function from input and output data. Prefer <b>tfestimate</b> for new code.

## 💡 Example



```matlab

u = (1:16)';
y = filter([1 0.5], 1, u);
[Hv, f] = tfe(u, y, 4, 8)

```


## 🔗 See also

[tfestimate](../../signal_processing/3_transforms_correlation_modeling/tfestimate.md), [pwelch](../../signal_processing/5_spectral_analysis/pwelch.md), [mscohere](../../signal_processing/3_transforms_correlation_modeling/mscohere.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
