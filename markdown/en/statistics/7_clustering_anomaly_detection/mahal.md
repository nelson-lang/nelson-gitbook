# mahal

Squared Mahalanobis distance to reference samples.

## 📝 Syntax

- d2 = mahal(Y, X)

## 📄 Description


<b>mahal</b> returns the squared Mahalanobis distance of each observation in <b>Y</b> to the reference sample matrix <b>X</b>. 

<b>X</b> and <b>Y</b> must have the same number of columns. <b>X</b> must have more rows than columns.

## 💡 Example



```matlab
X = [1 2; 2 3; 3 5; 4 4; 5 7; 6 8];
Y = [3 4; 5 6; 8 10];
d2 = mahal(Y, X)
```


## 🔗 See also

[cov](../../statistics/1_descriptive_statistics_visualization/cov.md), [pdist2](../../statistics/7_clustering_anomaly_detection/pdist2.md), [pca](../../statistics/8_dimension_reduction_feature_selection/pca.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
