# rotatefactors

Rotate factor loadings.

## 📝 Syntax

- B = rotatefactors(X)
- B = rotatefactors(X, Name, Value)
- [B, T] = rotatefactors(...)

## 📄 Description


<b>rotatefactors</b> rotates factor loading columns. Supported methods include varimax, quartimax, equamax, parsimax, orthomax, promax, procrustes, and pattern. 

Name-value arguments include Method, Normalize, RelTol, MaxIt, Coeff, Power, Target, and Type.

## 💡 Example



```matlab
X = [0.8 0.2; 0.7 -0.1; 0.1 0.9; 0.2 0.8];
[B, T] = rotatefactors(X)
```


## 🔗 See also

[factoran](../../statistics/8_dimension_reduction_feature_selection/factoran.md), [pca](../../statistics/8_dimension_reduction_feature_selection/pca.md), [pcacov](../../statistics/8_dimension_reduction_feature_selection/pcacov.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
