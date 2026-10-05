# gevinv

Inverse de repartition de loi extreme generalisee

## 📝 Syntaxe

- x = gevinv(p, k, sigma, mu)

## 📥 Argument d'entrée

- p - tableau reel dans [0, 1] : probabilites.
- k - tableau reel : parametre de forme.
- sigma - tableau reel positif : parametre d'echelle.
- mu - tableau reel : parametre de position.

## 📤 Argument de sortie

- x - tableau : quantiles.

## 📄 Description


<b>gevinv</b> calcule les quantiles de loi extreme generalisee element par element.

## 💡 Exemple



```matlab
p = [0.1 0.5 0.9];
x = gevinv(p, 0.2, 1, 0);
```


## 🔗 Voir aussi

[gevpdf](../../statistics/2_probability_distributions/gevpdf.md), [gevcdf](../../statistics/2_probability_distributions/gevcdf.md), [gevrnd](../../statistics/2_probability_distributions/gevrnd.md), [gevstat](../../statistics/2_probability_distributions/gevstat.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
