# cpsd

Estimation de densite spectrale croisee.

## 📝 Syntaxe

- [Pxy, F] = cpsd(X, Y)
- [Pxy, F] = cpsd(X, Y, window, noverlap, nfft, fs)
- [Pxy, F] = cpsd(..., FREQRANGE)

## 📥 Argument d'entrée

- X, Y - signaux d'entree.
- window - fenetre d'analyse.
- noverlap - nombre d'echantillons de recouvrement.
- nfft - longueur de FFT.
- fs - frequence d'echantillonnage.
- FREQRANGE - <code>'onesided'</code>, <code>'twosided'</code>, <code>'centered'</code>, <code>'half'</code> ou <code>'whole'</code>.

## 📤 Argument de sortie

- Pxy - estimation de densite spectrale croisee.
- F - vecteur de frequences.

## 📄 Description

<b>cpsd</b> estime une densite spectrale croisee en moyennant des segments recouvrants.

## 💡 Exemple

```matlab

[pxy, f] = cpsd(sin((0:63)'), cos((0:63)'), hamming(16), 8, 32, 10, 'twosided');

```

## 🔗 Voir aussi

[pwelch](../../signal_processing/pwelch.md), [mscohere](../../signal_processing/mscohere.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
