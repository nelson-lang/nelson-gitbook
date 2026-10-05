# rmoutliers

Detect and remove outliers from numeric data.

## 📝 Syntax

- B = rmoutliers(A)
- B = rmoutliers(A, method)
- B = rmoutliers(A, 'percentiles', threshold)
- B = rmoutliers(A, movmethod, window)
- B = rmoutliers(..., dim)
- B = rmoutliers(..., Name, Value)
- [B, TFrm, TFoutlier, L, U, C] = rmoutliers(...)

## 📄 Description


<b>rmoutliers</b> detects outliers in a numeric vector or matrix and removes entries that contain detected outliers. 

For matrices, outliers are detected column-wise. By default rows containing outliers are removed. With <b>dim</b> equal to 2, columns containing outliers are removed. 

Detection methods and name-value arguments are shared with <b>isoutlier</b>. The <b>OutlierLocations</b> name-value argument can provide a logical mask directly.

## 💡 Examples



```matlab
A = [57 59 60 100 59 58 57 58 300 61 62 60 62 58 57];
B = rmoutliers(A)
```


```matlab
A = [2 290 1 2; 1 0 323 1; 0 2 3 2; 1 1 2 3];
[B, TFrm, TFoutlier] = rmoutliers(A)
```


## 🔗 See also

[isoutlier](../../statistics/7_clustering_anomaly_detection/isoutlier.md), [median](../../statistics/1_descriptive_statistics_visualization/median.md), [iqr](../../statistics/1_descriptive_statistics_visualization/iqr.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
