# prctile

Percentiles of a data set.

## 📝 Syntax

- P = prctile(A, pct)
- P = prctile(A, pct, dim)
- P = prctile(A, pct, vecdim)
- P = prctile(A, pct, 'all')
- P = prctile(..., 'Method', method)

## 📄 Description


<b>prctile</b> returns percentiles for percentages in the interval [0,100]. 

<b>NaN</b> values are omitted. Supported methods are <b>midpoint</b>, <b>exact</b>, <b>inclusive</b>, <b>exclusive</b>, and <b>approximate</b>. 

<b>A</b> can be a real numeric array, a <b>datetime</b> array or a <b>duration</b> array. For datetime or duration input data, <b>P</b> has the same class and Format as <b>A</b>, and <b>NaT</b> values are omitted like <b>NaN</b> values.

## 💡 Examples



```matlab
A = (1:5)' * (2:6);
P = prctile(A, [25 50 75], 1)
```
datetime and duration input data

```matlab
t = datetime(2024, 1, [1 3 5 7 30]);
P = prctile(t, [25 50 75])
```


## 🔗 See also

[quantile](../../statistics/1_descriptive_statistics_visualization/quantile.md), [iqr](../../statistics/1_descriptive_statistics_visualization/iqr.md), [median](../../statistics/1_descriptive_statistics_visualization/median.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |
| 2.0.0   | datetime and duration input data supported. |

<!--
## 👤 Author

Allan CORNET
-->
