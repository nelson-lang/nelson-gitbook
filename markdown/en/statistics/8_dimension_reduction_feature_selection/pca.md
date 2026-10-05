# pca

Principal component analysis of raw data.

## 📝 Syntax

- coeff = pca(X)
- coeff = pca(X, Name, Value)
- [coeff, score, latent] = pca(...)
- [coeff, score, latent, tsquared, explained, mu] = pca(...)

## 📄 Description


<b>pca</b> computes principal component coefficients for a numeric data matrix whose rows are observations and columns are variables. 

Name-value arguments include Algorithm, Centered, Economy, NumComponents, Rows, Weights, and VariableWeights. The main computation uses native singular value or eigenvalue decomposition.

## 💡 Example



```matlab
X = [1 2; 3 4; 5 8; 7 11];
[coeff, score, latent] = pca(X)
```


## 🔗 See also

[svd](../../linear_algebra/3_eigen_singular_values/svd.md), [cov](../../statistics/1_descriptive_statistics_visualization/cov.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
