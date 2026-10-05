# harmmean

Harmonic mean of a data set.

## 📝 Syntax

- m = harmmean(X)
- m = harmmean(X, dim)
- m = harmmean(X, vecdim)
- m = harmmean(X, 'all')
- m = harmmean(..., nanflag)

## 📄 Description


<b>harmmean</b> computes the harmonic mean of numeric data. 

By default, <b>NaN</b> values are included. Use <b>omitnan</b> to ignore them.

## 💡 Example



```matlab
X = reshape(1:30, [3 5 2]);
m = harmmean(X, [1 2])
```


## 🔗 See also

[geomean](../../statistics/1_descriptive_statistics_visualization/geomean.md), [mean](../../statistics/1_descriptive_statistics_visualization/mean.md), [median](../../statistics/1_descriptive_statistics_visualization/median.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
