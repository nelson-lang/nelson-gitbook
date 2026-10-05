# isoutlier

Detecte les valeurs aberrantes dans des donnees numeriques.

## 📝 Syntaxe

- TF = isoutlier(A)
- TF = isoutlier(A, method)
- TF = isoutlier(A, 'percentiles', threshold)
- TF = isoutlier(A, movmethod, window)
- TF = isoutlier(..., dim)
- TF = isoutlier(..., Name, Value)
- [TF, L, U, C] = isoutlier(...)

## 📄 Description


<b>isoutlier</b> retourne un tableau logique qui marque les elements detectes comme valeurs aberrantes. 

Les methodes prises en charge sont <b>median</b>, <b>mean</b>, <b>quartiles</b>, <b>percentiles</b>, <b>grubbs</b>, <b>gesd</b>, <b>movmedian</b> et <b>movmean</b>. Les valeurs numeriques <b>NaN</b> sont ignorees pour l'estimation des seuils et ne sont pas marquees comme valeurs aberrantes. 

Les arguments nom-valeur incluent <b>ThresholdFactor</b>, <b>MaxNumOutliers</b> et <b>SamplePoints</b>. Les sorties supplementaires contiennent le seuil inferieur, le seuil superieur et la valeur centrale.

## 💡 Exemples



```matlab
A = [57 59 60 100 59 58 57 58 300 61 62 60 62 58 57];
TF = isoutlier(A)
```


```matlab
A = [60 59 49 49 58 100 61 57 48 58];
[TF, L, U, C] = isoutlier(A, 'median')
```


```matlab
A = [1 1 100 1 1];
t = [1 2 100 101 102];
TF = isoutlier(A, 'movmedian', 3, 'SamplePoints', t)
```


## 🔗 Voir aussi

[median](../../statistics/1_descriptive_statistics_visualization/median.md), [mean](../../statistics/1_descriptive_statistics_visualization/mean.md), [iqr](../../statistics/1_descriptive_statistics_visualization/iqr.md), [zscore](../../statistics/1_descriptive_statistics_visualization/zscore.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
