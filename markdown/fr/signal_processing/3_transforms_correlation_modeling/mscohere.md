# mscohere

Estimation de coherence quadratique.

## 📝 Syntaxe

- [Cxy, F] = mscohere(X, Y)
- [Cxy, F] = mscohere(X, Y, window, noverlap, nfft, fs)
- [Cxy, F] = mscohere(..., FREQRANGE)

## 📥 Argument d'entrée

- X, Y - signaux d'entree.
- window - fenetre d'analyse.
- noverlap - nombre d'echantillons de recouvrement.
- nfft - longueur de FFT.
- fs - frequence d'echantillonnage.
- FREQRANGE - <code>'onesided'</code>, <code>'twosided'</code>, <code>'centered'</code>, <code>'half'</code> ou <code>'whole'</code>.

## 📤 Argument de sortie

- Cxy - estimation de coherence.
- F - vecteur de frequences.

## 📄 Description


<b>mscohere</b> estime la correlation lineaire normalisee dans le domaine frequentiel.

## 💡 Exemple



```matlab

[cxy, f] = mscohere(sin((0:63)'), cos((0:63)'), hamming(16), 8, 32, 10, 'centered');

```


## 🔗 Voir aussi

[cpsd](../../signal_processing/3_transforms_correlation_modeling/cpsd.md), [tfestimate](../../signal_processing/3_transforms_correlation_modeling/tfestimate.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
