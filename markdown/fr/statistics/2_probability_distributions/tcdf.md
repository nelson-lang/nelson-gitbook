# tcdf

Fonction de repartition de Student t

## 📝 Syntaxe

- p = tcdf(x, v)
- p = tcdf(x, v, 'upper')

## 📥 Argument d'entrée

- x - tableau numerique reel : valeurs ou la distribution est evaluee.
- v - tableau numerique reel positif ou scalaire : degres de liberte.

## 📤 Argument de sortie

- p - probabilites cumulees ou probabilites de queue superieure.

## 📄 Description

<b>tcdf</b> calcule par defaut les probabilites de queue inferieure de Student t et les probabilites de queue superieure avec <b>'upper'</b>.

## 💡 Exemple

```matlab
x = [-3 -1 0 1 3];
p = tcdf(x, 5);
q = tcdf(x, 5, 'upper');
```

## 🔗 Voir aussi

[tpdf](../../statistics/tpdf.md), [tinv](../../statistics/tinv.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
