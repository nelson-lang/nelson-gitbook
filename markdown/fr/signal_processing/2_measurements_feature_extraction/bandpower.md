# bandpower

Estime la puissance d'un signal dans une bande de frequences.

## 📝 Syntaxe

- P = bandpower(X)
- P = bandpower(X, Fs, freqRange)
- P = bandpower(Pxx, F, 'psd')
- P = bandpower(Pxx, F, freqRange, 'psd')

## 📥 Argument d'entrée

- X - signal temporel d'entree.
- Fs - frequence d'echantillonnage.
- freqRange - intervalle de frequences a deux elements.
- Pxx, F - estimation de densite spectrale de puissance et vecteur de frequences associe.

## 📤 Argument de sortie

- P - puissance moyenne estimee.

## 📄 Description

<b>bandpower</b> calcule la puissance temporelle moyenne ou integre une estimation PSD par approximation rectangulaire. Pour les mesures de bande depuis un signal temporel, un periodogramme fenetre par Hamming de longueur egale a l'entree est utilise.

## 💡 Exemple

```matlab

p = bandpower(sin((0:127)' * 0.1), 10, [0 5]);

```

## 🔗 Voir aussi

[periodogram](../../signal_processing/periodogram.md), [meanfreq](../../signal_processing/meanfreq.md), [medfreq](../../signal_processing/medfreq.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
