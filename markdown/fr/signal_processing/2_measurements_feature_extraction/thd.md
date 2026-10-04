# thd

Estimation de distorsion harmonique totale.

## 📝 Syntaxe

- D = thd(X)
- D = thd(X, Fs)

## 📥 Argument d'entrée

- X - signal d'entree.
- Fs - frequence d'echantillonnage.

## 📤 Argument de sortie

- D - distorsion estimee en decibels.

## 📄 Description

<b>thd</b> estime la distorsion harmonique totale a partir des amplitudes de FFT.

## 💡 Exemple

```matlab

d = thd(sin((0:255)' * 0.1));

```

## 🔗 Voir aussi

[snr](../../signal_processing/snr.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
