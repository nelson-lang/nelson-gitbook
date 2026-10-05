# squareform

Convert between condensed distance vector and square distance matrix.

## 📝 Syntax

- Z = squareform(D)
- D = squareform(Z)
- Y = squareform(X, direction)

## 📥 Input argument

- D - distance vector with n\*(n-1)/2 elements.
- Z - square symmetric distance matrix.
- direction - 'tomatrix' or 'tovector'.

## 📄 Description


<b>squareform</b> converts a condensed distance vector to a square symmetric matrix, or the reverse.

## 💡 Example



```matlab
D = [1 2 3];
Z = squareform(D)
D2 = squareform(Z)
```


## 🔗 See also

[pdist](../../statistics/7_clustering_anomaly_detection/pdist.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
