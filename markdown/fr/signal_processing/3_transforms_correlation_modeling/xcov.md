# xcov

Covariance croisée de signaux discrets.

## 📝 Syntaxe

- C = xcov(X)
- C = xcov(X, Y)
- [C, Lags] = xcov(..., maxlag)
- [C, Lags] = xcov(..., scaleopt)

## 📥 Argument d'entrée

- X - signal d'entrée.
- Y - second signal optionnel.
- maxlag - retard maximal à retourner.
- scaleopt - option de mise à l'échelle transmise à xcorr après retrait de la moyenne.

## 📤 Argument de sortie

- C - séquence de covariance.
- Lags - vecteur de retards.

## 📄 Description

<b>xcov</b> retire la moyenne de chaque signal puis calcule la séquence de corrélation correspondante.

## 💡 Exemple

```matlab

[c, lags] = xcov([1 2 3], 1, 'biased');

```

## 🔗 Voir aussi

[xcorr](../../signal_processing/xcorr.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
