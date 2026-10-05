# mad

Mean or median absolute deviation.

## 📝 Syntax

- y = mad(X)
- y = mad(X, flag)
- y = mad(X, flag, dim)
- y = mad(X, flag, vecdim)
- y = mad(X, flag, 'all')

## 📄 Description


<b>mad</b> computes mean absolute deviation when <b>flag</b> is 0, and median absolute deviation when <b>flag</b> is 1. <b>NaN</b> values are omitted. 

The operating dimensions can be a scalar dimension, a vector of dimensions, or <b>all</b>.

## 💡 Example



```matlab
X = [1 2 3; 4 NaN 6; 7 8 9];
y = mad(X)
```


## 🔗 See also

[mean](../../statistics/1_descriptive_statistics_visualization/mean.md), [median](../../statistics/1_descriptive_statistics_visualization/median.md), [iqr](../../statistics/1_descriptive_statistics_visualization/iqr.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
