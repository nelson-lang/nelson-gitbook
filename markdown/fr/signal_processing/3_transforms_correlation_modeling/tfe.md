# tfe

Wrapper de compatibilite pour estimation de fonction de transfert.

## 📝 Syntaxe

- [Hv, f] = tfe(u, y)
- [Hv, f, Puu, Pyy, Puy, coh, Sv] = tfe(u, y, nfft, fs)

## 📥 Argument d'entrée

- u - vecteur du signal d'entree.
- y - vecteur du signal de sortie.
- nfft - longueur de FFT.
- fs - frequence d'echantillonnage.

## 📤 Argument de sortie

- Hv - estimation de fonction de transfert.
- f - vecteur de frequences.
- Puu, Pyy, Puy - spectres de puissance d'entree, de sortie et croise.
- coh - estimation de coherence quadratique.
- Sv - estimation approximative d'ecart type pour <b>Hv</b>.

## 📄 Description


<b>tfe</b> estime une fonction de transfert depuis des donnees d'entree et de sortie. Preferer <b>tfestimate</b> pour le nouveau code.

## 💡 Exemple



```matlab

u = (1:16)';
y = filter([1 0.5], 1, u);
[Hv, f] = tfe(u, y, 4, 8)

```


## 🔗 Voir aussi

[tfestimate](../../signal_processing/3_transforms_correlation_modeling/tfestimate.md), [pwelch](../../signal_processing/5_spectral_analysis/pwelch.md), [mscohere](../../signal_processing/3_transforms_correlation_modeling/mscohere.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
