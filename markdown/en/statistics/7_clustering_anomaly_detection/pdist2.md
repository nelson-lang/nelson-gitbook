# pdist2

Pairwise distances between two sets of observations.

## 📝 Syntax

- D = pdist2(X, Y)
- D = pdist2(X, Y, distance)
- D = pdist2(X, Y, distance, distanceParameter)
- D = pdist2(..., 'Smallest', K)
- D = pdist2(..., 'Largest', K)
- [D, I] = pdist2(..., 'Smallest', K)
- [D, I] = pdist2(..., 'Largest', K)

## 📥 Input argument

- X - real full numeric matrix. Rows are observations.
- Y - real full numeric matrix with the same number of columns as X.
- distance - distance name or function handle. Supported names include euclidean, squaredeuclidean, sqeuclidean, cityblock, chebychev, chebyshev, cosine, correlation, hamming, jaccard, minkowski, seuclidean, mahalanobis, spearman, fasteuclidean, and fastseuclidean.
- distanceParameter - optional parameter for minkowski, seuclidean, or mahalanobis.
- K - positive integer number of smallest or largest distances to return for each row of Y.

## 📤 Output argument

- D - distance matrix. Without Smallest or Largest, D has size size(X, 1)-by-size(Y, 1). With Smallest or Largest, D has size min(K, size(X, 1))-by-size(Y, 1).
- I - indices of rows in X for the selected distances. I is available only with Smallest or Largest.

## 📄 Description

<b>pdist2</b> computes pairwise distances between rows of <b>X</b> and rows of <b>Y</b>. Built-in distances return NaN when either row contains NaN. A function handle distance must accept one row of X and all rows of Y, and return one distance per row of Y.

## Used function(s)

    kmeans
    kmedoids
    silhouette

## 💡 Examples

Compute pairwise Euclidean distances.

```matlab
X = [0 0; 1 0];
Y = [0 0; 0 2];
D = pdist2(X, Y)
```

Compare several distance metrics.

```matlab
X = [1 0; 0 1];
Y = [1 0; 1 1];
Dcos = pdist2(X, Y, 'cosine')
Dhamming = pdist2(X, Y, 'hamming')
```

Find selected distances and row indices.

```matlab
X = [0 0; 1 0; 0 3];
Y = [0 0; 0 2];
[D, I] = pdist2(X, Y, 'euclidean', 'Smallest', 2)
```
