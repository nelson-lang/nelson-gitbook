# istft

Inverse short-time Fourier transform.

## 📝 Syntax

- X = istft(S)
- X = istft(S, Fs)
- X = istft(S, Fs, 'Window', window, 'OverlapLength', overlap, 'FFTLength', nfft)
- X = istft(..., 'FrequencyRange', range)

## 📥 Input argument

- S - short-time transform matrix.
- Fs - sample rate accepted for API compatibility.
- window - synthesis window.
- overlap - overlap length. It must be less than the window length.
- nfft - FFT length. It must be greater than or equal to the window length.
- range - frequency range of S: 'centered', 'twosided', or 'onesided'.

## 📤 Output argument

- X - reconstructed time-domain vector.

## 📄 Description

<b>istft</b> reconstructs a time-domain vector from short-time spectra using inverse FFT and overlap-add normalization.

## 💡 Example

```matlab

x = sin((0:31)' * 0.2);
[s, f, t] = stft(x, 10, 'Window', hamming(8), 'OverlapLength', 4, 'FFTLength', 16, 'FrequencyRange', 'onesided');
y = istft(s, 10, 'Window', hamming(8), 'OverlapLength', 4, 'FFTLength', 16, 'FrequencyRange', 'onesided');

```

## 🔗 See also

[stft](../../signal_processing/stft.md), [spectrogram](../../signal_processing/spectrogram.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
