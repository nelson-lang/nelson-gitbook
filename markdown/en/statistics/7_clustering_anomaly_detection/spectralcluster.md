# spectralcluster

Spectral clustering.

## 📝 Syntax

- idx = spectralcluster(X, k)
- idx = spectralcluster(S, k, 'Distance', 'precomputed')
- idx = spectralcluster(..., Name, Value)
- [idx, V, D] = spectralcluster(...)

## 📄 Description

<b>spectralcluster</b> partitions observations by constructing a similarity graph, computing a graph Laplacian embedding, and clustering the embedded rows.

Name-value arguments include Distance, P, Cov, Scale, SimilarityGraph, NumNeighbors, KNNGraphType, Radius, KernelScale, LaplacianNormalization, and ClusterMethod.

## 💡 Example

Cluster two separated groups.

```matlab
X = [0 0; 0 1; 1 0; 10 10; 10 11; 11 10];
idx = spectralcluster(X, 2, 'NumNeighbors', 5, 'KernelScale', 2)
```

## 🔗 See also

[kmeans](../../statistics/kmeans.md), [kmedoids](../../statistics/kmedoids.md), [pdist](../../statistics/pdist.md), [evalclusters](../../statistics/evalclusters.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
