# gevpdf

Densite de probabilite de loi extreme generalisee

## 📝 Syntaxe

- y = gevpdf(x, k, sigma, mu)

## 📥 Argument d'entrée

- x - tableau reel : valeurs.
- k - tableau reel : parametre de forme.
- sigma - tableau reel positif : parametre d'echelle.
- mu - tableau reel : parametre de position.

## 📤 Argument de sortie

- y - tableau : valeurs de densite.

## 📄 Description


<b>gevpdf</b> calcule les densites de loi extreme generalisee element par element.

## 💡 Exemple



```matlab
x = [-2 -1 0 1 2];
y = gevpdf(x, 0.2, 1, 0);
```


## 🔗 Voir aussi

[gevcdf](../../statistics/2_probability_distributions/gevcdf.md), [gevinv](../../statistics/2_probability_distributions/gevinv.md), [gevrnd](../../statistics/2_probability_distributions/gevrnd.md), [gevstat](../../statistics/2_probability_distributions/gevstat.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
