# linkage

Agglomerative hierarchical cluster tree.

## 📝 Syntax

- Z = linkage(X)
- Z = linkage(X, method)
- Z = linkage(X, method, metric)
- Z = linkage(X, method, metric, distanceParameter)
- Z = linkage(D, method)

## 📄 Description

<b>linkage</b> builds a hierarchical cluster tree from rows of <b>X</b> or from a condensed distance vector <b>D</b>.

Supported methods are single, complete, average, weighted, centroid, median, and ward.

## 💡 Example

```matlab
X = [0 0; 1 0; 0 2; 4 4];
Z = linkage(X, 'average');
T = cluster(Z, 'MaxClust', 2)
```

## 🔗 See also

[cluster](../../statistics/cluster.md), [pdist](../../statistics/pdist.md), [squareform](../../statistics/squareform.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
