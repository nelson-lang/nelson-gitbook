# ecdf

Fonction de repartition empirique.

## 📝 Syntaxe

- [f, x] = ecdf(y)
- [f, x] = ecdf(y, Name, Value)
- [f, x, flo, fup] = ecdf(...)
- ecdf(...)
- ecdf(ax, ...)

## 📄 Description

<b>ecdf</b> calcule les valeurs empiriques de distribution a partir d'un echantillon.

Les arguments nom-valeur incluent Function, Censoring, Frequency, Alpha et Bounds. Les types de fonction pris en charge sont cdf, survivor et cumhazard. Bounds peut valoir on ou off pour le trace.

## 💡 Exemple

```matlab
y = [3 1 2 2];
[f, x] = ecdf(y)
```

## 🔗 Voir aussi

[kstest](../../statistics/kstest.md), [ksdensity](../../statistics/ksdensity.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
