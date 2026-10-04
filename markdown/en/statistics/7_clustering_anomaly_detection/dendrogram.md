# dendrogram

Dendrogram plot for a hierarchical cluster tree.

## 📝 Syntax

- dendrogram(Z)
- dendrogram(Z, P)
- dendrogram(ax, ...)
- H = dendrogram(...)
- [H, T, outperm] = dendrogram(...)

## 📄 Description

<b>dendrogram</b> plots a hierarchical binary cluster tree returned by <b>linkage</b>.

The function supports Reorder, CheckCrossing, ClusterIndices, ColorThreshold, ShowCut, ShowMarkers, Orientation, Labels, and Parent name-value options.

## 💡 Example

```matlab
X = [0 0; 1 0; 0 2; 4 4];
Z = linkage(X);
dendrogram(Z, 0)
```

## 🔗 See also

[linkage](../../statistics/linkage.md), [cluster](../../statistics/cluster.md), [pdist](../../statistics/pdist.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
