# gevcdf

Fonction de repartition de loi extreme generalisee

## 📝 Syntaxe

- p = gevcdf(x, k, sigma, mu)
- p = gevcdf(x, k, sigma, mu, 'upper')

## 📥 Argument d'entrée

- x - tableau reel : valeurs.
- k - tableau reel : parametre de forme.
- sigma - tableau reel positif : parametre d'echelle.
- mu - tableau reel : parametre de position.

## 📤 Argument de sortie

- p - tableau : probabilites cumulees.

## 📄 Description


<b>gevcdf</b> calcule les probabilites de queue inferieure par defaut et de queue superieure avec <b>'upper'</b>.

## 💡 Exemple



```matlab
x = [-2 -1 0 1 2];
p = gevcdf(x, 0.2, 1, 0);
```


## 🔗 Voir aussi

[gevpdf](../../statistics/2_probability_distributions/gevpdf.md), [gevinv](../../statistics/2_probability_distributions/gevinv.md), [gevrnd](../../statistics/2_probability_distributions/gevrnd.md), [gevstat](../../statistics/2_probability_distributions/gevstat.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
