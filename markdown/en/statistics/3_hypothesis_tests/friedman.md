# friedman

Friedman test for blocked data.

## 📝 Syntax

- p = friedman(X)
- p = friedman(X, reps)
- p = friedman(X, reps, displayopt)
- [p, tbl, stats] = friedman(...)

## 📄 Description

<b>friedman</b> performs a nonparametric test for column treatment effects in blocked data. Rows are blocks and columns are treatments.

When <b>reps</b> is greater than one, each block occupies <b>reps</b> consecutive rows. <b>displayopt</b> can be <b>'on'</b> or <b>'off'</b>.

## 💡 Example

```matlab
X = [9 7 6; 8 6 5; 7 8 6; 10 9 7; 9 10 8];
[p, tbl, stats] = friedman(X, 'off')
```

## 🔗 See also

[anova2](../../statistics/anova2.md), [kruskalwallis](../../statistics/kruskalwallis.md), [chi2cdf](../../statistics/chi2cdf.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
