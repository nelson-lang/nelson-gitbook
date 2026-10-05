# factoran

Factor analysis.

## 📝 Syntax

- lambda = factoran(X, m)
- lambda = factoran(X, m, Name, Value)
- [lambda, psi, T, stats, F] = factoran(...)

## 📄 Description


<b>factoran</b> estimates factor loadings for a real numeric data matrix or covariance matrix. 

Name-value arguments include Xtype, Rotate, Scores, Start, Options, and Coeff. Supported rotations include varimax, quartimax, equamax, parsimax, orthomax, and none.

## 💡 Example



```matlab
X = [1 2 3; 2 3 5; 4 5 8; 5 7 11; 7 8 13; 8 10 16];
[lambda, psi, T, stats, F] = factoran(X, 2)
```


## 🔗 See also

[pca](../../statistics/8_dimension_reduction_feature_selection/pca.md), [pcacov](../../statistics/8_dimension_reduction_feature_selection/pcacov.md), [ppca](../../statistics/8_dimension_reduction_feature_selection/ppca.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
