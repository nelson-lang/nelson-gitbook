# cmdscale

Classical multidimensional scaling.

## 📝 Syntax

- Y = cmdscale(D)
- Y = cmdscale(D, p)
- [Y, e] = cmdscale(...)

## 📄 Description

<b>cmdscale</b> computes a classical multidimensional scaling configuration from a distance, dissimilarity, or similarity matrix.

D can be a square matrix or a distance vector accepted by squareform. If p is specified, only coordinates associated with positive eigenvalues among the first p dimensions are returned.

The vector e contains the ordered eigenvalues of the centered inner-product matrix. When p is specified, e contains at most p values.

## 💡 Example

```matlab
X = [0 0; 1 0; 0 2; 2 2];
D = squareform(pdist(X));
[Y, e] = cmdscale(D)
```

## 🔗 See also

[pdist](../../statistics/pdist.md), [squareform](../../statistics/squareform.md), [pca](../../statistics/pca.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
