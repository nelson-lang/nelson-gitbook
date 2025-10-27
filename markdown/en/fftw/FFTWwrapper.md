# FFTWwrapper

load/free FFTW library dynamically.

## 📝 Syntax

- r = FFTWwrapper('load')
- r = FFTWwrapper('load', fftwlibraryname, fftwflibraryname)
- r = FFTWwrapper('free')

## 📥 Input argument

- 'load' - load FFTW library.
- 'free' - free FFTW library.
- fftwlibraryname - a string: fftw library name.
- fftwflibraryname - a string: fftw float library name.

## 📤 Output argument

- r - a logical.

## 📄 Description

<b>FFTWwrapper</b> is an internal builtin used to load FFTW library dynamically.

## 🔗 See also

[fft](../fftw/fft.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

## 👤 Author

Allan CORNET
