# nanmean

Mean, ignoring NaN values.

## 📝 Syntax

- m = nanmean(X)
- m = nanmean(X, dim)
- m = nanmean(X, vecdim)
- m = nanmean(X, 'all')

## 📄 Description


<b>nanmean</b> computes the mean after removing <b>NaN</b> values from each operated slice. 

The default operating dimension is the first nonsingleton dimension.

## 💡 Example



```matlab
X = magic(3);
X([1 6:9]) = NaN;
m = nanmean(X)
```


## 🔗 See also

[mean](../../statistics/1_descriptive_statistics_visualization/mean.md), [nanmedian](../../statistics/1_descriptive_statistics_visualization/nanmedian.md), [nanstd](../../statistics/1_descriptive_statistics_visualization/nanstd.md), [nanvar](../../statistics/1_descriptive_statistics_visualization/nanvar.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
