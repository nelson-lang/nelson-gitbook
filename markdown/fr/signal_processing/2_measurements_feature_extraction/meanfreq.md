# meanfreq

Frequence moyenne du spectre d'un signal.

## 📝 Syntaxe

- Fmean = meanfreq(X)
- Fmean = meanfreq(X, Fs)
- Fmean = meanfreq(Pxx, F)
- [Fmean, P] = meanfreq(...)

## 📥 Argument d'entrée

- X - signal temporel d'entree.
- Fs - frequence d'echantillonnage.
- Pxx, F - estimation de densite spectrale de puissance et vecteur de frequences associe.

## 📤 Argument de sortie

- Fmean - frequence moyenne ponderee par la puissance.
- P - puissance utilisee pour la mesure.

## 📄 Description

<b>meanfreq</b> calcule la frequence moyenne ponderee par la puissance. Les entrees temporelles utilisent un periodogramme a fenetre rectangulaire de longueur egale a l'entree.

## 💡 Exemple

```matlab

[f, p] = meanfreq(sin((0:127)' * 0.1), 10);

```

## 🔗 Voir aussi

[medfreq](../../signal_processing/medfreq.md), [bandpower](../../signal_processing/bandpower.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
