# nanvar

Variance, ignoring NaN values.

## 📝 Syntax

- v = nanvar(X)
- v = nanvar(X, w)
- v = nanvar(X, w, dim)
- v = nanvar(X, w, vecdim)
- v = nanvar(X, w, 'all')

## 📄 Description


<b>nanvar</b> computes the variance after removing <b>NaN</b> values from each operated slice. 

<b>w</b> can be <b>0</b>, <b>1</b>, empty for the default behavior, or a nonnegative vector of weights for a scalar operating dimension.

## 💡 Example



```matlab
X = magic(3);
X([1 6:9]) = NaN;
v = nanvar(X)
```


## 🔗 See also

[var](../../statistics/1_descriptive_statistics_visualization/var.md), [nanmean](../../statistics/1_descriptive_statistics_visualization/nanmean.md), [nanmedian](../../statistics/1_descriptive_statistics_visualization/nanmedian.md), [nanstd](../../statistics/1_descriptive_statistics_visualization/nanstd.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
