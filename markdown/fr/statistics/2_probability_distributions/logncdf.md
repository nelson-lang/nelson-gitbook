# logncdf

Fonction de repartition lognormale

## 📝 Syntaxe

- p = logncdf(x)
- p = logncdf(x, mu, sigma)
- [p, pLo, pUp] = logncdf(x, mu, sigma, pCov)
- p = logncdf(..., 'upper')

## 📥 Argument d'entrée

- x - scalaire reel ou tableau : valeurs.
- mu - scalaire reel ou tableau : moyenne des valeurs logarithmiques.
- sigma - scalaire positif ou tableau : ecart-type des valeurs logarithmiques.
- pCov - matrice de covariance 2 par 2 pour les bornes de confiance.

## 📤 Argument de sortie

- p - tableau : probabilites cumulees.
- pLo - tableau : bornes de confiance inferieures.
- pUp - tableau : bornes de confiance superieures.

## 📄 Description


<b>logncdf</b> evalue les probabilites cumulees lognormales element par element.

## 💡 Exemple



```matlab
p = logncdf([0 1 exp(1)]);
q = logncdf(exp(10), 'upper');
```


## 🔗 Voir aussi

[lognpdf](../../statistics/2_probability_distributions/lognpdf.md), [logninv](../../statistics/2_probability_distributions/logninv.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
