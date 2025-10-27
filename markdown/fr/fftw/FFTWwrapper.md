# FFTWwrapper

charger/libérer la bibliothèque FFTW dynamiquement.

## 📝 Syntaxe

- r = FFTWwrapper('load')
- r = FFTWwrapper('load', fftwlibraryname, fftwflibraryname)
- r = FFTWwrapper('free')

## 📥 Argument d'entrée

- 'load' - charger la bibliothèque FFTW.
- 'free' - libérer la bibliothèque FFTW.
- fftwlibraryname - une chaîne : nom de la bibliothèque FFTW.
- fftwflibraryname - une chaîne : nom de la bibliothèque FFTW float.

## 📤 Argument de sortie

- r - un booléen.

## 📄 Description

<b>FFTWwrapper</b> est une fonction interne utilisée pour charger la bibliothèque FFTW dynamiquement.

## 🔗 Voir aussi

[fft](../fftw/fft.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## 👤 Auteur

Allan CORNET
