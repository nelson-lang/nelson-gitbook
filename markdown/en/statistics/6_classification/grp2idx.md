# grp2idx

Create index vector from grouping variable.

## 📝 Syntax

- [g, gN] = grp2idx(s)
- [g, gN, gL] = grp2idx(s)

## 📄 Description


<b>grp2idx</b> converts a grouping variable to numeric group indices. 

<b>gN</b> is a cell array of group names. <b>gL</b> contains the group levels in a type matching the input when possible. Missing group values produce <b>NaN</b> indices.

## 💡 Example



```matlab
s = {'red', 'blue', 'red', ''};
[g, gN, gL] = grp2idx(s)
```


## 🔗 See also

[grpstats](../../statistics/7_clustering_anomaly_detection/grpstats.md), [tabulate](../../statistics/1_descriptive_statistics_visualization/tabulate.md), [crosstab](../../statistics/1_descriptive_statistics_visualization/crosstab.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
