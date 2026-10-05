# pcares

Residuals from principal component analysis.

## 📝 Syntax

- residuals = pcares(X, NumComponents)
- [residuals, reconstructed] = pcares(X, NumComponents)

## 📄 Description


<b>pcares</b> returns residuals obtained by retaining the requested number of principal components of the data matrix X. 

The reconstructed output is the low-dimensional approximation of X, and residuals is equal to X minus reconstructed.

## 💡 Example



```matlab
X = [1 2; 3 4; 5 8; 7 11];
[residuals, reconstructed] = pcares(X, 1)
```


## 🔗 See also

[pca](../../statistics/8_dimension_reduction_feature_selection/pca.md), [pcacov](../../statistics/8_dimension_reduction_feature_selection/pcacov.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
