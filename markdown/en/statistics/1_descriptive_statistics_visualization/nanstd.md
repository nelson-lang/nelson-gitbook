# nanstd

Standard deviation, ignoring NaN values.

## 📝 Syntax

- s = nanstd(X)
- s = nanstd(X, flag)
- s = nanstd(X, flag, dim)
- s = nanstd(X, flag, vecdim)
- s = nanstd(X, flag, 'all')

## 📄 Description


<b>nanstd</b> computes the standard deviation after removing <b>NaN</b> values from each operated slice. 

<b>flag</b> is <b>0</b> for sample normalization and <b>1</b> for population normalization.

## 💡 Example



```matlab
X = magic(3);
X([1 6:9]) = NaN;
s = nanstd(X, 0, 2)
```


## 🔗 See also

[std](../../statistics/1_descriptive_statistics_visualization/std.md), [nanmean](../../statistics/1_descriptive_statistics_visualization/nanmean.md), [nanmedian](../../statistics/1_descriptive_statistics_visualization/nanmedian.md), [nanvar](../../statistics/1_descriptive_statistics_visualization/nanvar.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
