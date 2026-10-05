# nanmean

Moyenne en ignorant les valeurs NaN.

## 📝 Syntaxe

- m = nanmean(X)
- m = nanmean(X, dim)
- m = nanmean(X, vecdim)
- m = nanmean(X, 'all')

## 📄 Description


<b>nanmean</b> calcule la moyenne apres suppression des valeurs <b>NaN</b> dans chaque tranche traitee. 

La dimension par defaut est la premiere dimension non singleton.

## 💡 Exemple



```matlab
X = magic(3);
X([1 6:9]) = NaN;
m = nanmean(X)
```


## 🔗 Voir aussi

[mean](../../statistics/1_descriptive_statistics_visualization/mean.md), [nanmedian](../../statistics/1_descriptive_statistics_visualization/nanmedian.md), [nanstd](../../statistics/1_descriptive_statistics_visualization/nanstd.md), [nanvar](../../statistics/1_descriptive_statistics_visualization/nanvar.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
