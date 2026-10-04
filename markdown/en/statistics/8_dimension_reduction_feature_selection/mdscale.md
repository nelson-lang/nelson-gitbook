# mdscale

Nonclassical multidimensional scaling.

## 📝 Syntax

- Y = mdscale(D, p)
- Y = mdscale(D, p, Name, Value)
- [Y, stress] = mdscale(...)
- [Y, stress, disparities] = mdscale(...)

## 📄 Description

<b>mdscale</b> computes a multidimensional scaling configuration from a dissimilarity matrix or distance vector.

Name-value options include Criterion, Weights, Start, Replicates, and Options. Supported criteria are stress, sstress, metricstress, metricsstress, sammon, and strain.

NaN dissimilarities are treated as missing values. The Options structure can be created with statset and supports Display, MaxIter, TolFun, and TolX.

## 💡 Example

```matlab
X = [0 0; 1 0; 0 2; 2 2];
D = pdist(X);
[Y, stress, disparities] = mdscale(D, 2)
```

## 🔗 See also

[cmdscale](../../statistics/cmdscale.md), [pdist](../../statistics/pdist.md), [squareform](../../statistics/squareform.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
