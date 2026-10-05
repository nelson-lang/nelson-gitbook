# corr

Linear or rank correlation.

## 📝 Syntax

- rho = corr(X)
- rho = corr(X, Y)
- [rho, pval] = corr(...)
- [rho, pval] = corr(..., Name, Value)

## 📄 Description


<b>corr</b> computes pairwise correlations between columns of <b>X</b>, or between columns of <b>X</b> and <b>Y</b>. 

Supported options are <b>Type</b> with <b>pearson</b>, <b>spearman</b>, or <b>kendall</b>; <b>Rows</b> with <b>all</b>, <b>complete</b>, or <b>pairwise</b>; <b>Tail</b> with <b>both</b>, <b>right</b>, or <b>left</b>; and <b>Weights</b> for observation weights.

## 💡 Example



```matlab
X = [1 2 3; 2 4 1; 3 NaN 2; 4 8 4; 5 10 5];
rho = corr(X, 'Rows', 'pairwise')
```


## 🔗 See also

[corrcoef](../../statistics/1_descriptive_statistics_visualization/corrcoef.md), [cov](../../statistics/1_descriptive_statistics_visualization/cov.md), [tiedrank](../../statistics/1_descriptive_statistics_visualization/tiedrank.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
