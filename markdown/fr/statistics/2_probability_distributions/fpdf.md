# fpdf

Densite de probabilite F

## 📝 Syntaxe

- y = fpdf(x, v1, v2)

## 📥 Argument d'entrée

- x - tableau numerique reel : valeurs ou la distribution est evaluee.
- v1 - tableau numerique reel positif ou scalaire : degres de liberte du numerateur.
- v2 - tableau numerique reel positif ou scalaire : degres de liberte du denominateur.

## 📤 Argument de sortie

- y - valeurs de densite de probabilite.

## 📄 Description

<b>fpdf</b> calcule les valeurs de densite de probabilite de la distribution F. Les entrees scalaires sont etendues a la taille des tableaux.

## 💡 Exemple

```matlab
x = [0.5 1 2 5];
y = fpdf(x, 5, 20);
```

## 🔗 Voir aussi

[fcdf](../../statistics/fcdf.md), [finv](../../statistics/finv.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
