# evalclusters

Evaluer des solutions de clustering.

## 📝 Syntaxe

- eva = evalclusters(X, clust, criterion)
- eva = evalclusters(X, clust, criterion, Name, Value)

## 📄 Description


<b>evalclusters</b> evalue des solutions de clustering pour les lignes de <b>X</b>. 

Les criteres pris en charge sont silhouette, CalinskiHarabasz et DaviesBouldin. L'entree de clustering peut etre une matrice d'etiquettes, kmeans, linkage ou un handle de fonction. Le resultat est une structure avec les proprietes d'evaluation.

## 💡 Exemples



```matlab
X = [0; 1; 10; 11];
C = [1 1; 1 1; 1 2; 1 2];
eva = evalclusters(X, C, 'CalinskiHarabasz')
```


```matlab
X = [0; 1; 10; 11];
eva = evalclusters(X, 'kmeans', 'silhouette', 'KList', 1:3)
```


## 🔗 Voir aussi

[clusterdata](../../statistics/7_clustering_anomaly_detection/clusterdata.md), [kmeans](../../statistics/7_clustering_anomaly_detection/kmeans.md), [silhouette](../../statistics/7_clustering_anomaly_detection/silhouette.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
