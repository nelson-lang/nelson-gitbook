# periodogram

Estimation de densite spectrale de puissance par periodogramme.

## 📝 Syntaxe

- [Pxx, F] = periodogram(X)
- [Pxx, F] = periodogram(X, WINDOW, NFFT, Fs)
- [Pxx, F] = periodogram(..., FREQRANGE)
- [Pxx, F] = periodogram(..., SPECTRUMTYPE)

## 📥 Argument d'entrée

- X - signal d'entree.
- WINDOW - vecteur de fenetre ou longueur.
- NFFT - longueur de FFT.
- Fs - frequence d'echantillonnage.
- FREQRANGE - "onesided", "twosided", "centered", "half" ou "whole". "half" est traite comme "onesided" et "whole" comme "twosided".
- SPECTRUMTYPE - "psd" ou "power".

## 📤 Argument de sortie

- Pxx - estimation de densite spectrale de puissance ou de spectre de puissance.
- F - vecteur de frequences.

## 📄 Description

<b>periodogram</b> estime la repartition de puissance d'un signal en frequence.

## 💡 Exemple

```matlab

[pxx, f] = periodogram(sin((0:127)' * 0.1), [], 128, 10);

```

## 🔗 Voir aussi

[pwelch](../../signal_processing/pwelch.md), [spectrogram](../../signal_processing/spectrogram.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
