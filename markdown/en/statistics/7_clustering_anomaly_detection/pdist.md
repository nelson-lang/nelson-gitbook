# pdist

Pairwise distances between observations.

## 📝 Syntax

- D = pdist(X)
- D = pdist(X, distance)
- D = pdist(X, distance, distanceParameter)

## 📥 Input argument

- X - real numeric matrix. Rows are observations and columns are variables.
- distance - distance name: euclidean, squaredeuclidean, sqeuclidean, cityblock, chebychev, cosine, correlation, hamming, jaccard, minkowski, seuclidean, mahalanobis, or spearman.
- distanceParameter - positive scalar for minkowski, scale vector for seuclidean, or covariance matrix for mahalanobis.

## 📤 Output argument

- D - row vector containing distances in condensed form.

## 📄 Description


<b>pdist</b> computes distances between pairs of rows of <b>X</b>. 

The output order is compatible with <b>squareform</b>: pairs are stored as (2,1), (3,1), (3,2), and so on.

## 💡 Example

Compute distances and expand them to a symmetric matrix.

```matlab
X = [0 0; 1 0; 0 2];
D = pdist(X)
Z = squareform(D)
```


## 🔗 See also

[squareform](../../statistics/7_clustering_anomaly_detection/squareform.md), [pdist2](../../statistics/7_clustering_anomaly_detection/pdist2.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
