# canoncorr

Canonical correlation analysis.

## 📝 Syntax

- [A, B] = canoncorr(X, Y)
- [A, B, r] = canoncorr(X, Y)
- [A, B, r, U, V] = canoncorr(X, Y)
- [A, B, r, U, V, stats] = canoncorr(X, Y)

## 📄 Description


<b>canoncorr</b> computes canonical coefficients for two real data matrices with matching observation rows. 

The vector r contains the sample canonical correlations. U and V contain the centered canonical scores. The stats structure contains Wilks, df1, df2, F, pF, chisq, pChisq, dfe, and p fields. 

If an input matrix is rank deficient, dependent coefficient rows are set to zero.

## 💡 Example



```matlab
X = [1 2 3; 2 1 5; 3 4 4; 4 3 8; 5 7 6; 6 5 9];
Y = [3 4; 1 7; 5 5; 2 11; 9 6; 4 12];
[A, B, r, U, V, stats] = canoncorr(X, Y)
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
