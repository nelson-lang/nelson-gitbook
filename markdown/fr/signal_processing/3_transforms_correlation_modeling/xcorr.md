# xcorr

Corrélation croisée de signaux discrets.

## 📝 Syntaxe

- C = xcorr(X)
- C = xcorr(X, Y)
- [C, Lags] = xcorr(..., maxlag)
- [C, Lags] = xcorr(..., scaleopt)

## 📥 Argument d'entrée

- X - signal d'entrée.
- Y - second signal optionnel.
- maxlag - retard maximal à retourner.
- scaleopt - option de mise à l'échelle : 'none', 'biased', 'unbiased', 'coeff' ou 'normalized'.

## 📤 Argument de sortie

- C - séquence de corrélation.
- Lags - vecteur de retards.

## 📄 Description

<b>xcorr</b> calcule l'auto-corrélation ou la corrélation croisée de signaux unidimensionnels.

## 💡 Exemple

```matlab

[c, lags] = xcorr([1 2 3], 1, 'biased');

```

## 🔗 Voir aussi

[xcov](../../signal_processing/xcov.md), [xcorr2](../../signal_processing/xcorr2.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
