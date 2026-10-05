# gevrnd

Nombres aleatoires de loi extreme generalisee

## 📝 Syntaxe

- r = gevrnd(k, sigma, mu)
- r = gevrnd(k, sigma, mu, sz)
- r = gevrnd(k, sigma, mu, sz1, ..., szN)

## 📥 Argument d'entrée

- k - tableau reel : parametre de forme.
- sigma - tableau reel positif : parametre d'echelle.
- mu - tableau reel : parametre de position.

## 📤 Argument de sortie

- r - tableau : valeurs aleatoires.

## 📄 Description


<b>gevrnd</b> genere des valeurs aleatoires de loi extreme generalisee.

## 💡 Exemple



```matlab
r = gevrnd(0.2, 1, 0, 2, 3);
```


## 🔗 Voir aussi

[gevpdf](../../statistics/2_probability_distributions/gevpdf.md), [gevcdf](../../statistics/2_probability_distributions/gevcdf.md), [gevinv](../../statistics/2_probability_distributions/gevinv.md), [gevstat](../../statistics/2_probability_distributions/gevstat.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
