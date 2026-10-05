# kurtosis

Kurtosis of a data set.

## 📝 Syntax

- k = kurtosis(X)
- k = kurtosis(X, flag)
- k = kurtosis(X, flag, dim)
- k = kurtosis(X, flag, vecdim)
- k = kurtosis(X, flag, 'all')

## 📄 Description


<b>kurtosis</b> computes the sample kurtosis of numeric data. Missing numeric values are ignored. 

<b>flag</b> is 1 by default. Set <b>flag</b> to 0 to apply the bias correction for sample kurtosis.

## 💡 Example



```matlab
X = [1 2 5; 2 4 8; 3 8 13];
k = kurtosis(X)
```


## 🔗 See also

[skewness](../../statistics/1_descriptive_statistics_visualization/skewness.md), [mean](../../statistics/1_descriptive_statistics_visualization/mean.md), [std](../../statistics/1_descriptive_statistics_visualization/std.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
