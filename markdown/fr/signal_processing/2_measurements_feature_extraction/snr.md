# snr

Rapport signal sur bruit.

## 📝 Syntaxe

- R = snr(X)
- R = snr(X, Noise)
- R = snr(X, Fs)
- [R, NoisePower] = snr(...)

## 📥 Argument d'entrée

- X - signal.
- Noise - signal de bruit de memes dimensions que X.
- Fs - frequence d'echantillonnage pour l'estimation spectrale du SNR.

## 📤 Argument de sortie

- R - rapport en decibels.
- NoisePower - estimation lineaire de la puissance de bruit avec un bruit direct, ou puissance de bruit en decibels avec l'estimation spectrale.

## 📄 Description

<b>snr</b> calcule un rapport signal sur bruit direct lorsqu'un vecteur de bruit est fourni. Avec une frequence d'echantillonnage scalaire, il estime le SNR sinusoidal depuis le spectre.

## 💡 Exemple

```matlab

[r, n] = snr([1 1 1], [0.1 0.1 0.1]);

```

## 🔗 Voir aussi

[thd](../../signal_processing/thd.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
