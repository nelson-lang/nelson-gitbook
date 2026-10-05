# rmoutliers

Detecte et supprime les valeurs aberrantes de donnees numeriques.

## 📝 Syntaxe

- B = rmoutliers(A)
- B = rmoutliers(A, method)
- B = rmoutliers(A, 'percentiles', threshold)
- B = rmoutliers(A, movmethod, window)
- B = rmoutliers(..., dim)
- B = rmoutliers(..., Name, Value)
- [B, TFrm, TFoutlier, L, U, C] = rmoutliers(...)

## 📄 Description


<b>rmoutliers</b> detecte les valeurs aberrantes dans un vecteur ou une matrice numerique, puis supprime les entrees qui en contiennent. 

Pour les matrices, la detection s'effectue colonne par colonne. Par defaut les lignes contenant des valeurs aberrantes sont supprimees. Avec <b>dim</b> egal a 2, les colonnes contenant des valeurs aberrantes sont supprimees. 

Les methodes de detection et arguments nom-valeur sont partages avec <b>isoutlier</b>. L'argument nom-valeur <b>OutlierLocations</b> peut fournir directement un masque logique.

## 💡 Exemples



```matlab
A = [57 59 60 100 59 58 57 58 300 61 62 60 62 58 57];
B = rmoutliers(A)
```


```matlab
A = [2 290 1 2; 1 0 323 1; 0 2 3 2; 1 1 2 3];
[B, TFrm, TFoutlier] = rmoutliers(A)
```


## 🔗 Voir aussi

[isoutlier](../../statistics/7_clustering_anomaly_detection/isoutlier.md), [median](../../statistics/1_descriptive_statistics_visualization/median.md), [iqr](../../statistics/1_descriptive_statistics_visualization/iqr.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
