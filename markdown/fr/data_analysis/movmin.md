# movmin

Minimum mobile.

## 📝 Syntaxe

- R = movmin(A, window)
- R = movmin(A, window, d)

## 📥 Argument d'entrée

- A - input array.
- window - positive scalar window length.
- d - dimension to operate along: positive integer scalar.

## 📤 Argument de sortie

- R - Moving minimum.

## 📄 Description

<b>movmin</b> calcule les valeurs minimales sur une fenetre mobile centree.

## 💡 Exemple

```matlab
A = [1 2 8 4 5];
R = movmin(A, 3)
```

## 🔗 Voir aussi

[min](../data_analysis/min.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
