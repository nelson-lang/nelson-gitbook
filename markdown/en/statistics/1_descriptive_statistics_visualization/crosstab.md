# crosstab

Cross-tabulation.

## 📝 Syntax

- tbl = crosstab(x1, x2)
- tbl = crosstab(x1, ..., xn)
- tbl = crosstab(datatbl)
- tbl = crosstab(..., 'IncludeMissingGroups', tf)
- tbl = crosstab(..., 'OutputFormat', format)
- [tbl, chi2, p, labels] = crosstab(...)

## 📄 Description


<b>crosstab</b> counts combinations of grouping variable values. 

The default output format is a numeric matrix. The supported output formats are matrix, table, and stacked-table. The chi-square statistic and p-value are returned for two-dimensional count matrices.

## 💡 Example



```matlab
x = [1 1 2 2];
y = {'a', 'b', 'a', 'b'};
[tbl, chi2, p, labels] = crosstab(x, y)
```


## 🔗 See also

[tabulate](../../statistics/1_descriptive_statistics_visualization/tabulate.md), [groupcounts](../../data_analysis/groupcounts.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
