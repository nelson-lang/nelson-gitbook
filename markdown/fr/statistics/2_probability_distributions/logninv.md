# logninv

Inverse de repartition lognormale

## 📝 Syntaxe

- x = logninv(p)
- x = logninv(p, mu, sigma)
- [x, xLo, xUp] = logninv(p, mu, sigma, pCov)

## 📥 Argument d'entrée

- p - probabilites dans [0, 1].
- mu - scalaire reel ou tableau : moyenne des valeurs logarithmiques.
- sigma - scalaire positif ou tableau : ecart-type des valeurs logarithmiques.
- pCov - matrice de covariance 2 par 2 pour les bornes de confiance.

## 📤 Argument de sortie

- x - tableau : valeurs inverses cumulees.
- xLo - tableau : bornes de confiance inferieures.
- xUp - tableau : bornes de confiance superieures.

## 📄 Description

<b>logninv</b> evalue les inverses lognormales element par element.

## 💡 Exemple

```matlab
p = [0.15865525393145707 0.5 0.8413447460685429];
x = logninv(p);
```

## 🔗 Voir aussi

[lognpdf](../../statistics/lognpdf.md), [logncdf](../../statistics/logncdf.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
