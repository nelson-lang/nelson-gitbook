# zscore

Standardized z-scores.

## 📝 Syntax

- Z = zscore(X)
- Z = zscore(X, flag)
- Z = zscore(X, flag, dim)
- Z = zscore(X, flag, vecdim)
- Z = zscore(X, flag, 'all')
- [Z, mu, sigma] = zscore(...)

## 📄 Description


<b>zscore</b> centers and scales numeric data by subtracting the mean and dividing by the standard deviation. 

<b>flag</b> is 0 for sample standard deviation and 1 for population standard deviation. Samples containing <b>NaN</b> return <b>NaN</b> z-scores. Constant samples return zero z-scores.

## 💡 Example



```matlab
X = [1 2 3; 4 5 6];
[Z, mu, sigma] = zscore(X, 0, 1)
```


## 🔗 See also

[mean](../../statistics/1_descriptive_statistics_visualization/mean.md), [std](../../statistics/1_descriptive_statistics_visualization/std.md), [var](../../statistics/1_descriptive_statistics_visualization/var.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
