# spectralcluster

Clustering spectral.

## 📝 Syntaxe

- idx = spectralcluster(X, k)
- idx = spectralcluster(S, k, 'Distance', 'precomputed')
- idx = spectralcluster(..., Name, Value)
- [idx, V, D] = spectralcluster(...)

## 📄 Description


<b>spectralcluster</b> partitionne les observations en construisant un graphe de similarite, en calculant un plongement par laplacien de graphe, puis en classant les lignes du plongement. 

Les arguments nom-valeur incluent Distance, P, Cov, Scale, SimilarityGraph, NumNeighbors, KNNGraphType, Radius, KernelScale, LaplacianNormalization et ClusterMethod.

## 💡 Exemple

Classer deux groupes separes.

```matlab
X = [0 0; 0 1; 1 0; 10 10; 10 11; 11 10];
idx = spectralcluster(X, 2, 'NumNeighbors', 5, 'KernelScale', 2)
```


## 🔗 Voir aussi

[kmeans](../../statistics/7_clustering_anomaly_detection/kmeans.md), [kmedoids](../../statistics/7_clustering_anomaly_detection/kmedoids.md), [pdist](../../statistics/7_clustering_anomaly_detection/pdist.md), [evalclusters](../../statistics/7_clustering_anomaly_detection/evalclusters.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
