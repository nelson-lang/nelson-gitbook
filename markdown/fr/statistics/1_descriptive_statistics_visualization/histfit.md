# histfit

Histogramme avec courbe de distribution ajustee.

## 📝 Syntaxe

- histfit(data)
- histfit(data, nbins)
- histfit(data, nbins, dist)
- histfit(ax, ...)
- h = histfit(...)

## 📄 Description


<b>histfit</b> affiche un histogramme et superpose une courbe de densite ajustee, mise a l'echelle sur les comptes de l'histogramme. 

La distribution par defaut est normale. Les noms de distribution pris en charge incluent normal, kernel, exponential, gamma, beta, extreme value, half normal, lognormal, logistic, loglogistic, rayleigh et weibull.

## 💡 Exemple



```matlab
x = randn(100, 1);
histfit(x, 12)
```


## 🔗 Voir aussi

[histogram](../../graphics/1_plots/4_data_distribution_plots/histogram.md), [ksdensity](../../statistics/1_descriptive_statistics_visualization/ksdensity.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
