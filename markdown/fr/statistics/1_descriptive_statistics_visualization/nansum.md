# nansum

Somme, en ignorant les valeurs NaN.

## 📝 Syntaxe

- y = nansum(X)
- y = nansum(X, dim)
- y = nansum(X, vecdim)
- y = nansum(X, 'all')

## 📄 Description


<b>nansum</b> calcule la somme apres suppression des valeurs <b>NaN</b> de chaque tranche traitee ; une tranche uniquement composee de <b>NaN</b> a pour somme <b>0</b>. 

La dimension de travail par defaut est la premiere dimension non singuliere. 

Equivalent a <b>sum(X, ..., 'omitnan')</b>.

## 💡 Exemple



```matlab
y = nansum([1 NaN 3 NaN 5])
```


## 🔗 Voir aussi

[sum](../../data_analysis/sum.md), [nanmean](../../statistics/1_descriptive_statistics_visualization/nanmean.md), [nanmax](../../statistics/1_descriptive_statistics_visualization/nanmax.md), [nanmin](../../statistics/1_descriptive_statistics_visualization/nanmin.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
