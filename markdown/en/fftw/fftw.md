# fftw

function for determining FFT algorithm.

## 📝 Syntax

- m = fftw('planner')
- fftw('planner', m)
- w = fftw('dwisdom')
- fftw('dwisdom', w)
- w = fftw('swisdom')
- fftw('swisdom', w)

## 📥 Input argument

- m - method for setting transform parameters: 'estimate', 'measure', 'patient', 'exhaustive', or 'hybrid'.
- w - a string: wisdom data.

## 📤 Output argument

- m - method: 'estimate', 'measure', 'patient', 'exhaustive', or 'hybrid'.
- w - a string: wisdom data.

## 📄 Description

The default method is 'estimate'.

## 💡 Example

```matlab
w = fftw('dwisdom')
M = rand(1000);
tic; fft(M); toc
fftw('dwisdom', w)
tic; fft(M); toc
```

## 🔗 See also

[fft](../fftw/fft.md), [ifft](../fftw/ifft.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

## 👤 Author

Allan CORNET
