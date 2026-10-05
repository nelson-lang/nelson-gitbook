# nanmedian

Mediane en ignorant les valeurs NaN.

## 📝 Syntaxe

- m = nanmedian(X)
- m = nanmedian(X, dim)
- m = nanmedian(X, vecdim)
- m = nanmedian(X, 'all')

## 📄 Description


<b>nanmedian</b> calcule la mediane apres suppression des valeurs <b>NaN</b> dans chaque tranche traitee. 

La dimension par defaut est la premiere dimension non singleton.

## 💡 Exemple



```matlab
X = magic(3);
X([1 6:9]) = NaN;
m = nanmedian(X, 2)
```


## 🔗 Voir aussi

[median](../../statistics/1_descriptive_statistics_visualization/median.md), [nanmean](../../statistics/1_descriptive_statistics_visualization/nanmean.md), [nanstd](../../statistics/1_descriptive_statistics_visualization/nanstd.md), [nanvar](../../statistics/1_descriptive_statistics_visualization/nanvar.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
