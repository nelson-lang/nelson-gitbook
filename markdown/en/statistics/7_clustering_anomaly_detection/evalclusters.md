# evalclusters

Evaluate clustering solutions.

## 📝 Syntax

- eva = evalclusters(X, clust, criterion)
- eva = evalclusters(X, clust, criterion, Name, Value)

## 📄 Description


<b>evalclusters</b> evaluates clustering solutions for rows of <b>X</b>. 

Supported criteria are silhouette, CalinskiHarabasz, and DaviesBouldin. The clustering input can be a matrix of labels, kmeans, linkage, or a function handle. The result is a structure with evaluation properties.

## 💡 Examples



```matlab
X = [0; 1; 10; 11];
C = [1 1; 1 1; 1 2; 1 2];
eva = evalclusters(X, C, 'CalinskiHarabasz')
```


```matlab
X = [0; 1; 10; 11];
eva = evalclusters(X, 'kmeans', 'silhouette', 'KList', 1:3)
```


## 🔗 See also

[clusterdata](../../statistics/7_clustering_anomaly_detection/clusterdata.md), [kmeans](../../statistics/7_clustering_anomaly_detection/kmeans.md), [silhouette](../../statistics/7_clustering_anomaly_detection/silhouette.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
