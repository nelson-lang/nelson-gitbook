# kruskalwallis

Kruskal-Wallis one-way analysis of variance by ranks.

## 📝 Syntax

- p = kruskalwallis(X)
- p = kruskalwallis(X, group)
- p = kruskalwallis(X, group, displayopt)
- [p, tbl, stats] = kruskalwallis(...)

## 📄 Description

<b>kruskalwallis</b> performs a nonparametric one-way analysis of variance by ranks. When <b>X</b> is a matrix and <b>group</b> is empty, columns are treated as groups. When <b>X</b> is a vector, <b>group</b> supplies one group label per observation.

<b>displayopt</b> can be <b>'on'</b> or <b>'off'</b>. <b>NaN</b> observations are omitted.

## 💡 Example

```matlab
X = [6 7 8; 5 7 9; 4 8 NaN; 6 9 10];
[p, tbl, stats] = kruskalwallis(X, [], 'off')
```

## 🔗 See also

[anova1](../../statistics/anova1.md), [chi2cdf](../../statistics/chi2cdf.md), [grpstats](../../statistics/grpstats.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
