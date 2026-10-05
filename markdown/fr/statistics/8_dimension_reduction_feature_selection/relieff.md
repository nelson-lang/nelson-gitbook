# relieff

Classement d'importance des predicteurs avec ReliefF.

## 📝 Syntaxe

- [idx, weights] = relieff(X, y, k)
- [idx, weights] = relieff(X, y, k, Name, Value)

## 📄 Description


<b>relieff</b> classe les predicteurs avec ReliefF par plus proches voisins pour la classification ou avec un score de type RReliefF pour la regression. 

Les options nom-valeur supportees sont Method, Prior, Updates, CategoricalX et Sigma. idx contient les indices des predicteurs par importance decroissante. weights contient un score par predicteur.

## 💡 Exemple



```matlab
X = [0 0; 0 1; 1 0; 1 1; 3 0; 3 1];
y = [1; 1; 1; 1; 2; 2];
[idx, weights] = relieff(X, y, 1, 'Method', 'classification')
```


## 🔗 Voir aussi

[knnsearch](../../statistics/7_clustering_anomaly_detection/knnsearch.md), [pca](../../statistics/8_dimension_reduction_feature_selection/pca.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
