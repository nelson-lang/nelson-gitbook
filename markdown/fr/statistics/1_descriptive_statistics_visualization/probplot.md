# probplot

Trace de probabilite.

## 📝 Syntaxe

- probplot(y)
- probplot(y, cens)
- probplot(y, cens, freq)
- probplot(dist, ...)
- probplot(..., 'noref')
- h = probplot(...)

## 📄 Description


<b>probplot</b> cree un trace de probabilite pour des donnees d'echantillon. 

La distribution par defaut est normale. Les noms de distribution pris en charge incluent normal, exponential, extreme value, half normal, lognormal, logistic, loglogistic, rayleigh et weibull. La valeur retournee contient les handles des lignes des points et, sauf avec noref, les lignes de reference.

## 💡 Exemple



```matlab
x = randn(100, 1);
probplot(x)
```


## 🔗 Voir aussi

[qqplot](../../statistics/1_descriptive_statistics_visualization/qqplot.md), [ecdf](../../statistics/1_descriptive_statistics_visualization/ecdf.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
