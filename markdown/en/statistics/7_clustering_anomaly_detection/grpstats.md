# grpstats

Summary statistics organized by group.

## 📝 Syntax

- tblstats = grpstats(tbl, groupvars)
- tblstats = grpstats(tbl, groupvars, whichstats)
- tblstats = grpstats(tbl, groupvars, whichstats, 'DataVars', datavars)
- stats = grpstats(X, group)
- [stats1, ..., statsN] = grpstats(X, group, whichstats)
- [...] = grpstats(..., 'Alpha', alpha)

## 📄 Description


<b>grpstats</b> computes summary statistics for each observed group. 

Supported statistic names are mean, sem, std, var, min, max, range, median, mode, numel, gname, meanci, and predci. Function handles are also accepted for array input and table data variables.

## 💡 Example



```matlab
X = [1 10; 2 20; 3 30; 4 40];
g = [1 1 2 2]';
[m, s] = grpstats(X, g, {'mean', 'std'})
```


## 🔗 See also

[groupsummary](../../data_analysis/groupsummary.md), [tabulate](../../statistics/1_descriptive_statistics_visualization/tabulate.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
