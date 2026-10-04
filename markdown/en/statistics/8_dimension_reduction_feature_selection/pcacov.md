# pcacov

Principal component analysis on a covariance matrix.

## 📝 Syntax

- coeff = pcacov(V)
- [coeff, latent] = pcacov(V)
- [coeff, latent, explained] = pcacov(V)

## 📄 Description

<b>pcacov</b> performs principal component analysis on a square covariance matrix.

The coefficients are returned in columns ordered by decreasing component variance. The vector latent contains the eigenvalues of V, and explained contains the percentage of total variance represented by each component.

## 💡 Example

```matlab
V = [4 2; 2 3];
[coeff, latent, explained] = pcacov(V)
```

## 🔗 See also

[pca](../../statistics/pca.md), [cov](../../statistics/cov.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
