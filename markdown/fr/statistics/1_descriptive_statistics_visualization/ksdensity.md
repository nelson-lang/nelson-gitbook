# ksdensity

Estimation par lissage a noyau.

## 📝 Syntaxe

- [f, xi] = ksdensity(x)
- [f, xi] = ksdensity(x, pts)
- [f, xi, bw] = ksdensity(...)
- [...] = ksdensity(..., Name, Value)
- ksdensity(...)

## 📄 Description


<b>ksdensity</b> estime une fonction de distribution lissee a partir de donnees univariees avec un noyau normal. 

Les arguments nom-valeur incluent Bandwidth, Width, Function, NumPoints, Support, Weights, Frequency, Censoring, Kernel et BoundaryCorrection. Les types de fonction pris en charge sont pdf, cdf, survivor, cumhazard et icdf.

## 💡 Exemple



```matlab
x = [0 1 2];
[f, xi, bw] = ksdensity(x)
```


## 🔗 Voir aussi

[ecdf](../../statistics/1_descriptive_statistics_visualization/ecdf.md), [normpdf](../../statistics/2_probability_distributions/normpdf.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
