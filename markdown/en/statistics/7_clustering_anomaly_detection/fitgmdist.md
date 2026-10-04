# fitgmdist

Fit a Gaussian mixture distribution.

## 📝 Syntax

- gm = fitgmdist(X, k)
- gm = fitgmdist(X, k, Name, Value)

## 📄 Description

<b>fitgmdist</b> fits a Gaussian mixture model with <b>k</b> components to the rows of <b>X</b> using expectation maximization.

Name-value arguments include Start, Replicates, RegularizationValue, CovarianceType, SharedCovariance, MaxIter, TolFun, and Options.

## 💡 Example

Fit and cluster a simple mixture.

```matlab
X = [0; 1; 10; 11];
gm = fitgmdist(X, 2, 'Start', [1; 1; 2; 2]);
idx = cluster(gm, X)
```

## 🔗 See also

[gmdistribution](../../statistics/gmdistribution.md), [kmeans](../../statistics/kmeans.md), [clusterdata](../../statistics/clusterdata.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
