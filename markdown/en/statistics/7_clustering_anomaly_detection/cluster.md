# cluster

Construct clusters from a hierarchical cluster tree.

## 📝 Syntax

- T = cluster(Z, 'MaxClust', maxclust)
- T = cluster(Z, 'Cutoff', cutoff, 'Criterion', 'distance')

## 📄 Description


<b>cluster</b> assigns observations to clusters by cutting a hierarchical cluster tree. 

This version supports the distance criterion with MaxClust or Cutoff.

## 💡 Example



```matlab
X = [0 0; 1 0; 0 2; 4 4];
Z = linkage(X);
T = cluster(Z, 'MaxClust', 2)
```


## 🔗 See also

[linkage](../../statistics/7_clustering_anomaly_detection/linkage.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
