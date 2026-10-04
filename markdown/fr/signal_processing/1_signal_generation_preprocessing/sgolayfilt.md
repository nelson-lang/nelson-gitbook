# sgolayfilt

Filtre de lissage Savitzky-Golay.

## 📝 Syntaxe

- Y = sgolayfilt(X, K, F)
- Y = sgolayfilt(X, K, F, W)
- Y = sgolayfilt(X, K, F, W, DIM)

## 📥 Argument d'entrée

- X - signal d'entree.
- K - ordre polynomial.
- F - longueur de trame.
- W - vecteur de poids positifs. Utiliser [] pour les poids par defaut.
- DIM - dimension sur laquelle appliquer le filtre.

## 📤 Argument de sortie

- Y - signal lisse.

## 📄 Description

<b>sgolayfilt</b> lisse les donnees avec des coefficients FIR Savitzky-Golay.

## 💡 Exemple

```matlab

y = sgolayfilt([1 2 3 2 1], 2, 5);

```

## 🔗 Voir aussi

[sgolay](../../signal_processing/sgolay.md), [medfilt1](../../signal_processing/medfilt1.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
