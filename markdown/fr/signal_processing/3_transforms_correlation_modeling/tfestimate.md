# tfestimate

Estimation de fonction de transfert.

## 📝 Syntaxe

- [Txy, F] = tfestimate(X, Y)
- [Txy, F] = tfestimate(X, Y, window, noverlap, nfft, fs)
- [Txy, F] = tfestimate(..., FREQRANGE)

## 📥 Argument d'entrée

- X, Y - signaux d'entree et de sortie.
- window - fenetre d'analyse.
- noverlap - nombre d'echantillons de recouvrement.
- nfft - longueur de FFT.
- fs - frequence d'echantillonnage.
- FREQRANGE - <code>'onesided'</code>, <code>'twosided'</code>, <code>'centered'</code>, <code>'half'</code> ou <code>'whole'</code>.

## 📤 Argument de sortie

- Txy - estimation de fonction de transfert.
- F - vecteur de frequences.

## 📄 Description


<b>tfestimate</b> estime une reponse frequentielle a partir de signaux d'entree et de sortie.

## 💡 Exemple



```matlab

[txy, f] = tfestimate(sin((0:63)'), cos((0:63)'), hamming(16), 8, 32, 10, 'twosided');

```


## 🔗 Voir aussi

[cpsd](../../signal_processing/3_transforms_correlation_modeling/cpsd.md), [mscohere](../../signal_processing/3_transforms_correlation_modeling/mscohere.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
