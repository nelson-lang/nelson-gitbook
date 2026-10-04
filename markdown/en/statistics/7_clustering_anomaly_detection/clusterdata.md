# clusterdata

Cluster observations from data.

## 📝 Syntax

- T = clusterdata(X, 'MaxClust', maxclust)
- T = clusterdata(X, 'Cutoff', cutoff, 'Criterion', 'distance')
- T = clusterdata(..., 'Linkage', method)
- T = clusterdata(..., 'Distance', metric)

## 📄 Description

<b>clusterdata</b> groups rows of <b>X</b> by building a hierarchical cluster tree and cutting it into clusters.

This version supports the distance criterion with MaxClust or Cutoff. Linkage and distance options are passed to <b>linkage</b>.

## 💡 Example

```matlab
X = [0 0; 1 0; 0 2; 4 4];
T = clusterdata(X, 'MaxClust', 2)
```

## 🔗 See also

[cluster](../../statistics/cluster.md), [linkage](../../statistics/linkage.md), [pdist](../../statistics/pdist.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
