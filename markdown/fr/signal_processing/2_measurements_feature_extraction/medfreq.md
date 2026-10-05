# medfreq

Frequence mediane du spectre d'un signal.

## 📝 Syntaxe

- Fmed = medfreq(X)
- Fmed = medfreq(X, Fs)
- Fmed = medfreq(Pxx, F)
- [Fmed, P] = medfreq(...)

## 📥 Argument d'entrée

- X - signal temporel d'entree.
- Fs - frequence d'echantillonnage.
- Pxx, F - estimation de densite spectrale de puissance et vecteur de frequences associe.

## 📤 Argument de sortie

- Fmed - frequence qui divise la puissance spectrale en deux parties egales.
- P - puissance utilisee pour la mesure.

## 📄 Description


<b>medfreq</b> calcule la frequence mediane avec integration spectrale rectangulaire et interpolation lineaire entre les bordures de bins.

## 💡 Exemple



```matlab

[f, p] = medfreq(sin((0:127)' * 0.1), 10);

```


## 🔗 Voir aussi

[meanfreq](../../signal_processing/2_measurements_feature_extraction/meanfreq.md), [bandpower](../../signal_processing/2_measurements_feature_extraction/bandpower.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
