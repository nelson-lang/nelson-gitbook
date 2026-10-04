# gevstat

Moyenne et variance de loi extreme generalisee

## 📝 Syntaxe

- m = gevstat(k, sigma, mu)
- [m, v] = gevstat(k, sigma, mu)

## 📥 Argument d'entrée

- k - tableau reel : parametre de forme.
- sigma - tableau reel positif : parametre d'echelle.
- mu - tableau reel : parametre de position.

## 📤 Argument de sortie

- m - tableau : moyennes.
- v - tableau : variances.

## 📄 Description

<b>gevstat</b> calcule la moyenne et la variance des lois extremes generalisees lorsqu'elles sont finies.

## 💡 Exemple

```matlab
[m, v] = gevstat([0 0.2], [1 1], [0 0]);
```

## 🔗 Voir aussi

[gevpdf](../../statistics/gevpdf.md), [gevcdf](../../statistics/gevcdf.md), [gevinv](../../statistics/gevinv.md), [gevrnd](../../statistics/gevrnd.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
