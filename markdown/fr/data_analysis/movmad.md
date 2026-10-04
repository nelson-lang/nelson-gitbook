# movmad

Ecart absolu median mobile.

## 📝 Syntaxe

- R = movmad(A, window)
- R = movmad(A, window, d)

## 📥 Argument d'entrée

- A - input array.
- window - positive scalar window length.
- d - dimension to operate along: positive integer scalar.

## 📤 Argument de sortie

- R - Moving median absolute deviation.

## 📄 Description

<b>movmad</b> calcule l'ecart absolu median sur une fenetre mobile centree.

## 💡 Exemple

```matlab
A = [1 2 8 4 5];
R = movmad(A, 3)
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
