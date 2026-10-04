# movmedian

Mediane mobile.

## 📝 Syntaxe

- R = movmedian(A, window)
- R = movmedian(A, window, d)

## 📥 Argument d'entrée

- A - input array.
- window - positive scalar window length.
- d - dimension to operate along: positive integer scalar.

## 📤 Argument de sortie

- R - Moving median.

## 📄 Description

<b>movmedian</b> calcule les medianes sur une fenetre mobile centree.

## 💡 Exemple

```matlab
A = [1 2 8 4 5];
R = movmedian(A, 3)
```

## 🔗 Voir aussi

[median](../statistics/median.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
