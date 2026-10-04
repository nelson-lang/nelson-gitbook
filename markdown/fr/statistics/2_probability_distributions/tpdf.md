# tpdf

Densite de probabilite de Student t

## 📝 Syntaxe

- y = tpdf(x, v)

## 📥 Argument d'entrée

- x - tableau numerique reel : valeurs ou la distribution est evaluee.
- v - tableau numerique reel positif ou scalaire : degres de liberte.

## 📤 Argument de sortie

- y - valeurs de densite de probabilite.

## 📄 Description

<b>tpdf</b> calcule les valeurs de densite de probabilite de Student t. Les entrees scalaires sont etendues a la taille des tableaux.

## 💡 Exemple

```matlab
x = [-3 -1 0 1 3];
y = tpdf(x, 5);
```

## 🔗 Voir aussi

[tcdf](../../statistics/tcdf.md), [tinv](../../statistics/tinv.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
