# anova1

One-way analysis of variance.

## 📝 Syntax

- p = anova1(X)
- p = anova1(X, group)
- p = anova1(X, group, displayopt)
- [p, tbl, stats] = anova1(...)

## 📄 Description


<b>anova1</b> performs a one-way analysis of variance. When <b>X</b> is a matrix and <b>group</b> is empty, columns are treated as groups. When <b>X</b> is a vector, <b>group</b> supplies one group label per observation. 

<b>displayopt</b> can be <b>'on'</b> or <b>'off'</b>. <b>NaN</b> observations are omitted.

## 💡 Example



```matlab
X = [6 7 8; 5 7 9; 4 8 NaN; 6 9 10];
[p, tbl, stats] = anova1(X, [], 'off')
```


## 🔗 See also

[fcdf](../../statistics/2_probability_distributions/fcdf.md), [grpstats](../../statistics/7_clustering_anomaly_detection/grpstats.md), [vartest](../../statistics/3_hypothesis_tests/vartest.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
