# clusterdata

Regrouper les observations depuis les donnees.

## 📝 Syntaxe

- T = clusterdata(X, 'MaxClust', maxclust)
- T = clusterdata(X, 'Cutoff', cutoff, 'Criterion', 'distance')
- T = clusterdata(..., 'Linkage', method)
- T = clusterdata(..., 'Distance', metric)

## 📄 Description


<b>clusterdata</b> regroupe les lignes de <b>X</b> en construisant un arbre hierarchique puis en le coupant en classes. 

Cette version prend en charge le critere distance avec MaxClust ou Cutoff. Les options Linkage et Distance sont transmises a <b>linkage</b>.

## 💡 Exemple



```matlab
X = [0 0; 1 0; 0 2; 4 4];
T = clusterdata(X, 'MaxClust', 2)
```


## 🔗 Voir aussi

[cluster](../../statistics/7_clustering_anomaly_detection/cluster.md), [linkage](../../statistics/7_clustering_anomaly_detection/linkage.md), [pdist](../../statistics/7_clustering_anomaly_detection/pdist.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
